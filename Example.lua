local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "auto race clicker" .. Fluent.Version,
    SubTitle = "auto toan phan",
    TabWidth = 160,
    Size = UDim2.fromOffset(200, 350),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "chevrons-right" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "cpu" })
}

local Options = Fluent.Options

--Player

local delay



b:Toggle("Auto Rebirth",function(bool)
    getgenv().AutoRebirth = bool
    
    task.spawn(function()
        while task.wait() do
            if AutoRebirth then
                game:GetService("ReplicatedStorage").Packages.Knit.Services.RebirthService.RF.Rebirth:InvokeServer()
                task.wait(5)
            end
        end
    end)
end)
do
    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Speed",
        Description = "siuuu",
        Default = 0.65,
        Min = 0.01,
        Max = 1,
        Rounding = 1,
        Callback = function(Value)
            function(value)
            delay = value
        end
    end
    })
     Slider:SetValue(1)

     local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "auto race", Default = false })

    Toggle:OnChanged(function()
        getgenv().AutoFinish = bool
    
        task.spawn(function()
            while task.wait() do
                if AutoFinish then
                    pcall(function()
                        if lp.PlayerGui.TimerUI.RaceTimer.Visible then
                            local char = lp.Character
                            local hum = char.Humanoid
                            local hrp = char.HumanoidRootPart
                            
                            hrp.CFrame = hrp.CFrame + Vector3.new(50000, 0, 0)
                            task.wait(delay)
                        end
                    end)
                end
            end
        end)
    end)
    
    Options.MyToggle:SetValue(false)
    local ckick =Tabs.Settings:AddToggle("click", {Title = "autoclick", Default = false })
    ckick:OnChanged(function()
        getgenv().AutoClick = bool
    
        task.spawn(function()
            while task.wait() do
                if AutoClick then
                    if lp.PlayerGui.ClicksUI.ClickHelper.Visible == true then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
                    end
                end
            end
        end)
    end)
    local ckk =Tabs.Settings:AddToggle("Autorebirth", {Title = "autorebirth", Default = false })
    ckick:OnChanged(function()
        b:Toggle("Auto Rebirth",function(bool)
            getgenv().AutoRebirth = bool
            
            task.spawn(function()
                while task.wait() do
                    if AutoRebirth then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.RebirthService.RF.Rebirth:InvokeServer()
                        task.wait(5)
                    end
                end
            end)
        end))
end
-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/")

InterfaceManager:BuildInterfaceSection(Tabs.Main)
SaveManager:BuildConfigSection(Tabs.Main)
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()