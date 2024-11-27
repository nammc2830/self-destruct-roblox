
local id = game.PlaceId if id == 2753915549 then World1 = true; elseif id == 4442272183 then World2 = true; elseif id == 7449423635 then World3 = true; else game:Shutdown() end;

do -- Team Script
	repeat 
		ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam",true)
		UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController",true)
		if UIController and ChooseTeam then
			if ChooseTeam.Visible then
				for i,v in pairs(getgc()) do
					if type(v) == "function" and getfenv(v).script == UIController then
						local constant = getconstants(v)
						pcall(function()
							if constant[1] == "Pirates" and #constant == 1 then
								v(shared.Team or "Pirates")
							end
						end)
					end
				end
			end
		end
		wait(1)
	until game.Players.LocalPlayer.Team
	repeat wait() until game.Players.LocalPlayer.Character
end

local SettingsGameData = {}

xpcall(function()
	if not isfolder("apsara scripts/ID/"..game.GameId) then
		if syn then
			makefolder("apsara scripts/ID/"..game.GameId)
			writefile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua", game:GetService("HttpService"):JSONEncode(SettingsGameData));
		else
			makefolder("apsara scripts")
			makefolder("apsara scripts/ID")
			makefolder("apsara scripts/ID/"..game.GameId)
			writefile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua", game:GetService("HttpService"):JSONEncode(SettingsGameData));
		end
	end
	SettingsGameData = game:GetService("HttpService"):JSONDecode(readfile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua"));
end,function()
end)

Selected_Weapons = SettingsGameData["Selected_Weapons"]
SelectFastAttackMode = SettingsGameData["SelectFastAttackMode"]
Fast_Attack = SettingsGameData["Fast_Attack"]
NewFastAttack = SettingsGameData["NewFastAttack"]

FarmLv = SettingsGameData["FarmLv"]
Double_Quest = SettingsGameData["Double_Quest"]
Fast_Farm_Mode = SettingsGameData["Fast_Farm_Mode"]
Auto_New_World = SettingsGameData["Auto_New_World"]
Auto_Third_Sea = SettingsGameData["Auto_Third_Sea"]

Select_Bosses = SettingsGameData["Select_Bosses"]
Auto_Boss_Select = SettingsGameData["Auto_Boss_Select"]
Auto_Quest_Bosses = SettingsGameData["Auto_Quest_Bosses"]

Auto_Superhuman = SettingsGameData["Auto_Superhuman"]
Auto_Electric_Claw = SettingsGameData["Auto_Electric_Claw"]
Auto_Death_Step = SettingsGameData["Auto_Death_Step"]
Auto_Sharkman_Karate = SettingsGameData["Auto_Sharkman_Karate"]
Auto_Dragon_Talon = SettingsGameData["Auto_Dragon_Talon"]
Auto_Godhuman = SettingsGameData["Auto_Godhuman"]
Sanguineart = SettingsGameData["Sanguineart"]

Auto_All_Sword_Mastery = SettingsGameData["Auto_All_Sword_Mastery"]
Auto_Farm_DF_Mastery = SettingsGameData["Auto_Farm_DF_Mastery"]
Auto_Farm_Gun_Mastery = SettingsGameData["Auto_Farm_Gun_Mastery"]
Mob_Kill = SettingsGameData["Mob_Kill"]

Skill_Z = SettingsGameData["Skill_Z"]
Skill_X = SettingsGameData["Skill_X"]
Skill_C = SettingsGameData["Skill_C"]
Skill_V = SettingsGameData["Skill_V"]
Skill_F = SettingsGameData["Skill_F"]

Auto_Stats_Kaitun = SettingsGameData["Auto_Stats_Kaitun"]
Melee_Stats = SettingsGameData["Melee_Stats"]
Defense_Stats = SettingsGameData["Defense_Stats"]
Sword_Stats = SettingsGameData["Sword_Stats"]
Gun_Stats = SettingsGameData["Gun_Stats"]
Devil_Stats = SettingsGameData["Devil_Stats"]

Auto_Saber = SettingsGameData["Auto_Saber"]
Auto_Pole = SettingsGameData["Auto_Pole"]
Auto_Pole_Hop = SettingsGameData["Auto_Pole_Hop"]
Auto_Franky = SettingsGameData["Auto_Franky"]
Auto_Franky_Hop = SettingsGameData["Auto_Franky_Hop"]
Auto_Factory_Farm = SettingsGameData["Auto_Factory_Farm"]
Auto_Factory_Farm_Hop = SettingsGameData["Auto_Factory_Farm_Hop"]
Auto_Dark_Coat = SettingsGameData["Auto_Dark_Coat"]
Auto_Dark_Coat_Hop = SettingsGameData["Auto_Dark_Coat_Hop"]
Auto_Swan_Glasses = SettingsGameData["Auto_Swan_Glasses"]
Auto_Swan_Glasses_Hop = SettingsGameData["Auto_Swan_Glasses_Hop"]

Auto_Buy_Law_Chip = SettingsGameData["Auto_Buy_Law_Chip"]
Auto_Start_Law_Dungeon = SettingsGameData["Auto_Start_Law_Dungeon"]
Auto_Kill_Law = SettingsGameData["Auto_Kill_Law"]

Auto_Find_Full_Moon = SettingsGameData["Auto_Find_Full_Moon"]
GrabChestMysticIsland = SettingsGameData["GrabChestMysticIsland"]
Auto_Mirage_Island = SettingsGameData["Auto_Mirage_Island"]
Auto_Mirage_Island_Hop = SettingsGameData["Auto_Mirage_Island_Hop"]

Auto_Buddy_Sword = SettingsGameData["Auto_Buddy_Sword"]
Auto_Buddy_Sword_Hop = SettingsGameData["Auto_Buddy_Sword_Hop"]

Auto_Farm_Boss_Hallow = SettingsGameData["Auto_Farm_Boss_Hallow"]
Auto_Farm_Boss_Hallow_Hop = SettingsGameData["Auto_Farm_Boss_Hallow_Hop"]

Auto_Farm_Elite_Hunter = SettingsGameData["Auto_Farm_Elite_Hunter"]
Auto_Farm_Elite_Hunter_Hop = SettingsGameData["Auto_Farm_Elite_Hunter_Hop"]
Stop_God_Chalice = SettingsGameData["Stop_God_Chalice"]

Auto_Cavender = SettingsGameData["Auto_Cavender"]
Auto_Cavender_Hop = SettingsGameData["Auto_Cavender_Hop"]

Auto_Dark_Dagger = SettingsGameData["Auto_Dark_Dagger"]
Auto_Dark_Dagger_Hop = SettingsGameData["Auto_Dark_Dagger_Hop"]

Auto_TwinHooks = SettingsGameData["Auto_TwinHooks"]
Auto_TwinHooks_Hop = SettingsGameData["Auto_TwinHooks_Hop"]

Auto_Serpent_Bow = SettingsGameData["Auto_Serpent_Bow"]
Auto_Serpent_Bow_Hop = SettingsGameData["Auto_Serpent_Bow_Hop"]

AutoObservation = SettingsGameData["AutoObservation"]
AutoObservation_Hop = SettingsGameData["AutoObservation_Hop"]

Auto_Cake_Prince = SettingsGameData["Auto_Cake_Prince"]
Farm_Bone = SettingsGameData["Farm_Bone"]
Auto_Ectoplasm = SettingsGameData["Auto_Ectoplasm"]
Auto_Bartilo_Quest = SettingsGameData["Auto_Bartilo_Quest"]
Auto_Rengoku = SettingsGameData["Auto_Rengoku"]
Auto_Holy_Torch = SettingsGameData["Auto_Holy_Torch"]
PirateRaid = SettingsGameData["PirateRaid"]
Auto_Rainbow_Haki = SettingsGameData["Auto_Rainbow_Haki"]

AutoTushita = SettingsGameData["AutoTushita"] 
AutoTushitaHop = SettingsGameData["AutoTushitaHop"] 

AutoYama = SettingsGameData["AutoYama"] 
AutoYamaHOP = SettingsGameData["AutoYamaHOP"] 

Auto_Musketeer_Hat = SettingsGameData["Auto_Musketeer_Hat"]
Auto_Observation_V2 = SettingsGameData["Auto_Observation_V2"]
Auto_Dough_V2 = SettingsGameData["Auto_Dough_V2"]
Auto_Quest_Soul_Guitar = SettingsGameData["Auto_Quest_Soul_Guitar"]
Yama_Quest = SettingsGameData["Yama_Quest"]
Get_Cursed = SettingsGameData["Get_Cursed"]

Auto_Buy_Legendary_Sword = SettingsGameData["Auto_Buy_Legendary_Sword"]
Auto_Buy_Legendary_Sword_Hop = SettingsGameData["Auto_Buy_Legendary_Sword_Hop"]
Auto_Buy_Enchanment_Haki = SettingsGameData["Auto_Buy_Enchanment_Haki"]
Auto_Buy_Enchanment_Haki_Hop = SettingsGameData["Auto_Buy_Enchanment_Haki_Hop"]

Mink_Evo = SettingsGameData["Mink_Evo"]
Human_Evo = SettingsGameData["Human_Evo"]
Skypiea_Evo = SettingsGameData["Skypiea_Evo"]

Terrorshark = SettingsGameData["Terrorshark"]
TerrorsharkHop = SettingsGameData["TerrorsharkHop"]
Auto_SeaBeast_Ship = SettingsGameData["Auto_SeaBeast_Ship"]
Auto_Kill_Leviathan = SettingsGameData["Auto_Kill_Leviathan"]
Auto_Frozen_Dimension = SettingsGameData["Auto_Frozen_Dimension"]

Select_Raids = SettingsGameData["Select_Raids"]
Auto_Raids = SettingsGameData["Auto_Raids"]
Kill_Aura = SettingsGameData["Kill_Aura"]
Auto_Next_Island = SettingsGameData["Auto_Next_Island"]
Auto_Awakened = SettingsGameData["Auto_Awakened"]

Auto_Random_DF = SettingsGameData["Auto_Random_DF"]
Method_Bring = SettingsGameData["Method_Bring"]
Bring_Fruits = SettingsGameData["Bring_Fruits"]
Auto_Store_Fruits = SettingsGameData["Auto_Store_Fruits"]
SelectDevilFruits = SettingsGameData["SelectDevilFruits"]
Auto_Buy_DF_Sniper = SettingsGameData["Auto_Buy_DF_Sniper"]
Auto_Random_Bone = SettingsGameData["Auto_Random_Bone"]
Distance_Auto_Farm = SettingsGameData["Distance_Auto_Farm"]
Bypass_Teleport = SettingsGameData["Bypass_Teleport"]
Auto_Ken = SettingsGameData["Auto_Ken"]
Delete_Effect = SettingsGameData["Delete_Effect"]
WalkOnWater = SettingsGameData["WalkOnWater"]
White_Screen = SettingsGameData["White_Screen"]

local Save = function()

	SettingsGameData["Selected_Weapons"] = Selected_Weapons
	SettingsGameData["SelectFastAttackMode"] = SelectFastAttackMode
	SettingsGameData["Fast_Attack"] = Fast_Attack
	SettingsGameData["NewFastAttack"] = NewFastAttack

	SettingsGameData["FarmLv"] = FarmLv
	SettingsGameData["Double_Quest"] = Double_Quest
	SettingsGameData["Fast_Farm_Mode"] = Fast_Farm_Mode
	SettingsGameData["Auto_New_World"] = Auto_New_World
	SettingsGameData["Auto_Third_Sea"] = Auto_Third_Sea

	SettingsGameData["Select_Bosses"] = Select_Bosses or ""
	SettingsGameData["Auto_Boss_Select"] = Auto_Boss_Select
	SettingsGameData["Auto_Quest_Bosses"] = Auto_Quest_Bosses

	SettingsGameData["Auto_Superhuman"] = Auto_Superhuman
	SettingsGameData["Auto_Electric_Claw"] = Auto_Electric_Claw
	SettingsGameData["Auto_Death_Step"] = Auto_Death_Step
	SettingsGameData["Auto_Sharkman_Karate"] = Auto_Sharkman_Karate
	SettingsGameData["Auto_Dragon_Talon"] = Auto_Dragon_Talon
	SettingsGameData["Auto_Godhuman"] = Auto_Godhuman
	SettingsGameData["Sanguineart"] = Sanguineart

	SettingsGameData["Auto_All_Sword_Mastery"] = Auto_All_Sword_Mastery
	SettingsGameData["Auto_Farm_DF_Mastery"] = Auto_Farm_DF_Mastery
	SettingsGameData["Auto_Farm_Gun_Mastery"] = Auto_Farm_Gun_Mastery
	SettingsGameData["Mob_Kill"] = Mob_Kill or 25

	SettingsGameData["Skill_Z"] = Skill_Z
	SettingsGameData["Skill_X"] = Skill_X
	SettingsGameData["Skill_C"] = Skill_C
	SettingsGameData["Skill_V"] = Skill_V
	SettingsGameData["Skill_F"] = Skill_F

	SettingsGameData["Auto_Stats_Kaitun"] = Auto_Stats_Kaitun
	SettingsGameData["Melee_Stats"] = Melee_Stats
	SettingsGameData["Defense_Stats"] = Defense_Stats
	SettingsGameData["Sword_Stats"] = Sword_Stats
	SettingsGameData["Gun_Stats"] = Gun_Stats
	SettingsGameData["Devil_Stats"] = Devil_Stats

	SettingsGameData["Auto_Saber"] = Auto_Saber
	SettingsGameData["Auto_Pole"] = Auto_Pole
	SettingsGameData["Auto_Franky"] = Auto_Franky
	SettingsGameData["Auto_Factory_Farm"] = Auto_Factory_Farm
	SettingsGameData["Auto_Factory_Farm_Hop"] = Auto_Factory_Farm_Hop
	SettingsGameData["Auto_Dark_Coat"] = Auto_Dark_Coat
	SettingsGameData["Auto_Dark_Coat_Hop"] = Auto_Dark_Coat_Hop
	SettingsGameData["Auto_Swan_Glasses"] = Auto_Swan_Glasses
	SettingsGameData["Auto_Swan_Glasses_Hop"] = Auto_Swan_Glasses_Hop

	SettingsGameData["Auto_Buy_Law_Chip"] = Auto_Buy_Law_Chip
	SettingsGameData["Auto_Start_Law_Dungeon"] = Auto_Start_Law_Dungeon
	SettingsGameData["Auto_Kill_Law"] = Auto_Kill_Law

	SettingsGameData["Auto_Find_Full_Moon"] = Auto_Find_Full_Moon
	SettingsGameData["GrabChestMysticIsland"] = GrabChestMysticIsland
	SettingsGameData["Auto_Mirage_Island"] = Auto_Mirage_Island
	SettingsGameData["Auto_Mirage_Island_Hop"] = Auto_Mirage_Island_Hop

	SettingsGameData["Auto_Buddy_Sword"] = Auto_Buddy_Sword
	SettingsGameData["Auto_Buddy_Sword_Hop"] = Auto_Buddy_Sword_Hop

	SettingsGameData["Auto_Farm_Boss_Hallow"] = Auto_Farm_Boss_Hallow
	SettingsGameData["Auto_Farm_Boss_Hallow_Hop"] = Auto_Farm_Boss_Hallow_Hop

	SettingsGameData["Auto_Farm_Elite_Hunter"] = Auto_Farm_Elite_Hunter
	SettingsGameData["Auto_Farm_Elite_Hunter_Hop"] = Auto_Farm_Elite_Hunter_Hop
	SettingsGameData["Stop_God_Chalice"] = Stop_God_Chalice

	SettingsGameData["Auto_Cavender"] = Auto_Cavender
	SettingsGameData["Auto_Cavender_Hop"] = Auto_Cavender_Hop

	SettingsGameData["Auto_Dark_Dagger"] = Auto_Dark_Dagger
	SettingsGameData["Auto_Dark_Dagger_Hop"] = Auto_Dark_Dagger_Hop

	SettingsGameData["Auto_TwinHooks"] = Auto_TwinHooks
	SettingsGameData["Auto_TwinHooks_Hop"] = Auto_TwinHooks_Hop

	SettingsGameData["Auto_Serpent_Bow"] = Auto_Serpent_Bow
	SettingsGameData["Auto_Serpent_Bow_Hop"] = Auto_Serpent_Bow_Hop

	SettingsGameData["AutoObservation"] = AutoObservation
	SettingsGameData["AutoObservation_Hop"] = AutoObservation_Hop

	SettingsGameData["Auto_Cake_Prince"] = Auto_Cake_Prince
	SettingsGameData["Farm_Bone"] = Farm_Bone
	SettingsGameData["Auto_Ectoplasm"] = Auto_Ectoplasm

	SettingsGameData["Auto_Bartilo_Quest"] = Auto_Bartilo_Quest
	SettingsGameData["Auto_Rengoku"] = Auto_Rengoku
	SettingsGameData["Auto_Holy_Torch"] = Auto_Holy_Torch
	SettingsGameData["PirateRaid"] = PirateRaid
	SettingsGameData["Auto_Rainbow_Haki"] = Auto_Rainbow_Haki

	SettingsGameData["AutoTushita"]  = AutoTushita
	SettingsGameData["AutoTushitaHop"] = AutoTushitaHop

	SettingsGameData["AutoYama"] = AutoYama
	SettingsGameData["AutoYama"] = AutoYamaHOP

	SettingsGameData["Auto_Musketeer_Hat"] = Auto_Musketeer_Hat
	SettingsGameData["Auto_Observation_V2"] = Auto_Observation_V2
	SettingsGameData["Auto_Dough_V2"] = Auto_Dough_V2
	SettingsGameData["Auto_Quest_Soul_Guitar"] = Auto_Quest_Soul_Guitar
	SettingsGameData["Tushita_Quest"] = Tushita_Quest
	SettingsGameData["Yama_Quest"] = Yama_Quest
	SettingsGameData["Get_Cursed"] = Get_Cursed

	SettingsGameData["Auto_Buy_Legendary_Sword"] = Auto_Buy_Legendary_Sword
	SettingsGameData["Auto_Buy_Legendary_Sword_Hop"] = Auto_Buy_Legendary_Sword_Hop
	SettingsGameData["Auto_Buy_Enchanment_Haki"] = Auto_Buy_Enchanment_Haki
	SettingsGameData["Auto_Buy_Enchanment_Haki_Hop"] = Auto_Buy_Enchanment_Haki_Hop

	SettingsGameData["Mink_Evo"] = Mink_Evo
	SettingsGameData["Human_Evo"] = Human_Evo
	SettingsGameData["Skypiea_Evo"] = Skypiea_Evo

	SettingsGameData["Terrorshark"] = Terrorshark
	SettingsGameData["TerrorsharkHop"] = TerrorsharkHop
	SettingsGameData["Auto_SeaBeast_Ship"] = Auto_SeaBeast_Ship
	SettingsGameData["Auto_Kill_Leviathan"] = Auto_Kill_Leviathan
	SettingsGameData["Auto_Frozen_Dimension"] = Auto_Frozen_Dimension

	SettingsGameData["Select_Raids"] = Select_Raids or ""
	SettingsGameData["Auto_Raids"] = Auto_Raids
	SettingsGameData["Kill_Aura"] = Kill_Aura
	SettingsGameData["Auto_Next_Island"] = Auto_Next_Island
	SettingsGameData["Auto_Awakened"] = Auto_Awakened

	SettingsGameData["Auto_Random_DF"] = Auto_Random_DF
	SettingsGameData["Method_Bring"] = Method_Bring or ""
	SettingsGameData["Bring_Fruits"] = Bring_Fruits
	SettingsGameData["Auto_Store_Fruits"] = Auto_Store_Fruits
	SettingsGameData["SelectDevilFruits"] = SelectDevilFruits or ""
	SettingsGameData["Auto_Buy_DF_Sniper"] = Auto_Buy_DF_Sniper

	SettingsGameData["Auto_Random_Bone"] = Auto_Random_Bone
	SettingsGameData["Distance_Auto_Farm"] = Distance_Auto_Farm or 35
	SettingsGameData["Bypass_Teleport"] = Bypass_Teleport
	SettingsGameData["Auto_Ken"] = Auto_Ken
	SettingsGameData["Delete_Effect"] = Delete_Effect
	SettingsGameData["WalkOnWater"] = WalkOnWater
	SettingsGameData["White_Screen"] = White_Screen


	if syn then
		makefolder("apsara scripts/ID/"..game.GameId)
	else
		makefolder("apsara scripts")
		makefolder("apsara scripts/ID")
		makefolder("apsara scripts/ID/"..game.GameId)
	end
	writefile("apsara scripts/ID/"..game.GameId.."/"..game.Players.LocalPlayer.Name..".lua", game:GetService("HttpService"):JSONEncode(SettingsGameData));
end

-- [[ Marco Luraph For Fix Lags ]]
if not LPH_OBFUSCATED then
	LPH_JIT_MAX = (function(...) return ... end)
	LPH_NO_VIRTUALIZE = (function(...) return ... end)
	LPH_NO_UPVALUES = (function(...) return ... end)
end
-- [Functions Equip Weapon]

function EquipWeapon(...)
	local Get = {...}
	if Get[1] and Get[1] ~= "" then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(Get[1])) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(Get[1]))
			fask.wait()
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	else
		spawn(function()
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Melee" then
						ToolSe = v.Name
					end
				end
			end
			for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Melee" then
						ToolSe = v.Name
					end
				end
			end
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
				local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				fask.wait()
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
			end
		end)
	end
end

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

-- [Noclip]

LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				if NoClip or FarmLv or Auto_New_World or Auto_Saber or Auto_Pole or _G.BringFound or Auto_All_Sword_Mastery or autokillafter or AutoTradeEmber or

					Auto_Third_Sea or Auto_Bartilo_Quest or Auto_Dark_Coat or Auto_Swan_Glasses or Auto_Color_Summon or Auto_Franky or AutoLookAwake or AutoLeverGear or AutoPullFuly or
					Auto_Rengoku or Auto_Ectoplasm  or AutoObservation or TpPlr or
					--[World 3]
					Auto_Rainbow_Haki or Auto_Farm_Elite_Hunter or Auto_Kill_Law or Auto_Musketeer_Hat or Auto_Buddy_Sword or
					Farm_Bone or Auto_Observation_V2 or Auto_Godhuman or Auto_Cavender or Terrorshark or
					Auto_Serpent_Bow or _G.Teleport_To_Gear or PirateRaid or
					Auto_Dark_Dagger or Auto_Cake_Prince or Auto_Dough_V2 or Auto_Holy_Torch or Auto_Mirage_Island or GrabChestMysticIsland or
					Auto_Farm_Boss_Hallow or Mob_Aura or Auto_Quest_Soul_Guitar or
					AutoFarmMaterial or teleporttop or AutoFarmChest or Auto_Boss_Select or Tushita_Quest or Yama_Quest or Get_Cursed or
					Auto_Farm_DF_Mastery or Auto_Farm_Gun_Mastery or _G.Auto_Farm_Sword_Mastery or _G.AutoPullLever or _G.AncientQuest or _G.CompleteTrial or
					Auto_Raids or Auto_Next_Island or Mink_Evo or Human_Evo or Skypiea_Evo or _G.Fishman_Evo
				then
					if syn then
						setfflag("HumanoidParallelRemoveNoPhysics", "False")
						setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
						end
					else
						if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
								if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
									game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
								end
								local BodyVelocity = Instance.new("BodyVelocity")
								BodyVelocity.Name = "BodyVelocity1"
								BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
								BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
								BodyVelocity.Velocity = Vector3.new(0, 0, 0)
							end
						end
						for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false    
							end
						end
					end
				else
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
					end
				end
			end)
		end)
	end)
end)()

-- [Bring Mob]
LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		while wait() do
			if setscriptable then
				setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			end
			if sethiddenproperty then
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
end)()

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.Humanoid:ChangeState(14)
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end
		end)
	end)
end)

LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
			game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
				pcall(function()
					if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
						game.Players.LocalPlayer.Character.Stun.Value = 0
					end
				end)
			end)
		end
	end)
end)()

LPH_JIT_MAX(function()
	fask.spawn(function()
		while wait() do
			for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
				pcall(function()
					if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
						v:Destroy()
					end
				end)
			end
		end
	end)
end)()

local TableSwapMob = {}
local AllMobCFrame = {}
local SwapMobNoLoop = false

local function tableFoundForYou(tableToSearch, cframeToFind)
	for _, v in pairs(tableToSearch) do
		if v.CFrame == cframeToFind then
			return true
		end
	end
	return false
end

local function updateAllMobCFrame()
	while fask.wait(0.5) do
		pcall(function()
			for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
				if not tableFoundForYou(AllMobCFrame, v.CFrame) then
					table.insert(AllMobCFrame, {Name = v.Name, CFrame = v.CFrame})
				end
			end
		end)
	end
end

spawn(updateAllMobCFrame)

local function checkEnemySpawn(name)
	local returnCFrame
	local tableCFrame = {}

	for _, v in pairs(AllMobCFrame) do
		if name == v.Name or name:match("^" .. v.Name) then
			local newCFrame = v.CFrame * CFrame.new(2, 50, 0)
			table.insert(tableCFrame, newCFrame)
		end
	end

	for _, v in pairs(tableCFrame) do
		if not table.find(TableSwapMob, v) then
			if not SwapMobNoLoop then
				SwapMobNoLoop = true
				delay(0.8, function()
					table.insert(TableSwapMob, v)
					SwapMobNoLoop = false
				end)
			end
			return v
		end
	end

	delay(0.01, function() TableSwapMob = {} end)

	if #TableSwapMob > 0 then
		return TableSwapMob[1]
	end

	local function findEnemy(searchName)
		for _, obj in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
			if obj.Name == searchName and obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") and obj.Humanoid.Health > 0 then
				return obj.HumanoidRootPart.CFrame * CFrame.new(2, 50, 0)
			end
		end
	end

	return findEnemy(name) or findEnemy(name, game:GetService("ReplicatedStorage"))
end			

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

local function RemoveSpaces(str)
	return str:gsub(" Fruit", "")
end

-- Fast Attack

NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local oldRL = RL.wrapAttackAnimationAsync
RL.wrapAttackAnimationAsync = function(a,b,c,d,func)
	if not NoAttackAnimation then
		return oldRL(a,b,c,60,func)
	end

	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i,v in pairs(Characters) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
			table.insert(Hits,Human.RootPart)
		end
	end
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i,v in pairs(Enemies) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
			table.insert(Hits,Human.RootPart)
		end
	end
	a:Play(0.01,0.01,0.01)
	pcall(func,Hits)
end

getAllBladeHits = LPH_NO_VIRTUALIZE(function(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i,v in pairs(Enemies) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end)

getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i,v in pairs(Characters) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.07
local FireL = 0
local bladehit = {}

CancelCoolDown = LPH_JIT_MAX(function()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		AttackCoolDown = tick() + (FireCooldown or 0.288) + ((FireL/MaxFire)*0.3)
		RigEven.FireServer(RigEven,"weaponChange",ac.currentWeaponModel.Name)
		FireL = FireL + 1
		fask.delay((FireCooldown or 0.288) + ((FireL+0.4/MaxFire)*0.3),function()
			FireL = FireL - 1
		end)
	end
end)

AttackFunction = LPH_JIT_MAX(function(typef)
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		local bladehit = {}
		if typef == 1 then
			bladehit = getAllBladeHits(60)
		elseif typef == 2 then
			bladehit = getAllBladeHitsPlayers(65)
		else
			for i2,v2 in pairs(getAllBladeHits(55)) do
				table.insert(bladehit,v2)
			end
			for i3,v3 in pairs(getAllBladeHitsPlayers(55)) do
				table.insert(bladehit,v3)
			end
		end
		if #bladehit > 0 then
			pcall(fask.spawn,ac.attack,ac)
			if tick() > AttackCoolDown then
				CancelCoolDown()
			end
			if tick() - cooldowntickFire > 0.5 then
				ac.timeToNextAttack = 0
				ac.hitboxMagnitude = 60
				pcall(fask.spawn,ac.attack,ac)
				cooldowntickFire = tick()
			end
			local AMI3 = ac.anims.basic[3]
			local AMI2 = ac.anims.basic[2]
			local REALID = AMI3 or AMI2
			AttackAnim.AnimationId = REALID
			local StartP = ac.humanoid:LoadAnimation(AttackAnim)
			StartP:Play(0.01,0.01,0.01)
			RigEven.FireServer(RigEven,"hit",bladehit,AMI3 and 3 or 2,"")
			fask.delay(0.5,function()
				StartP:Stop()
			end)
		end
	end
end)

function CheckStun()
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
		return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
	end
	return false
end

LPH_JIT_MAX(function()
	spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			local ac = CombatFrameworkR.activeController
			if ac and ac.equipped and not CheckStun() then
				if NeedAttacking and Fast_Attack then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,1)
					end)
				elseif DamageAura then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,3)
					end)
				elseif UsefastattackPlayers and Fast_Attack then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,2)
					end)
				elseif NeedAttacking and Fast_Attack == false then
					if ac.hitboxMagnitude ~= 55 then
						ac.hitboxMagnitude = 55
					end
					pcall(fask.spawn,ac.attack,ac)
				end
			end
		end
	end)
end)()

local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
kkii:Stop()

-- [Function (Abandoned Quest , Others)]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- [Tween Functions]

function toAroundTarget(CF)
	if TeleportType == 1 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 30, 1)
	elseif TeleportType == 2 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 1, 30)
	elseif TeleportType == 3 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(1, 1, -30)
	elseif TeleportType == 4 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(30, 1, 0)
	elseif TeleportType == 5 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(-30, 1, 0)
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 30, 1)
	end
end

function GetIsLandNer(...)

	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue = false
	local ReturnValue2 = "None"
	local CheckInOut;
	if OldWorld then
		CheckInOut = 1800
	else
		CheckInOut = 2000
	end
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude <= CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue3 = v:GetModelCFrame()
				ReturnValue2 = v.Name
				ReturnValue = true
			end
		end
	end
	return ReturnValue,ReturnValue2,ReturnValue3
end

_F = LPH_NO_VIRTUALIZE(function(a,b,c,d,e )
	local args = {a,b,c,d,e}
	if tostring(args[1]):find("Buy") then
		if not Root then
			return
		else
			fask.wait()
		end
	end
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("CommF_")
	if Remote:IsA("RemoteEvent") then
		return Remote:FireServer(unpack(args))
	elseif Remote:IsA("RemoteFunction") then
		return Remote:InvokeServer(unpack(args))
	end
end)

-- [Tween Functions (toTarget)]

function DieWait()
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then if tween then tween:Cancel() end repeat fask.wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; fask.wait(1) if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then Com("F_","Buso") end end;
end

function havemob(name)
	return game.Workspace.Enemies:FindFirstChild(name) or game.ReplicatedStorage:FindFirstChild(name)
end

IsSameName = function(full,sub)
	return full:lower():find(sub:lower()) or sub:lower():find(full:lower()) or full == sub 
end 

dist = LPH_NO_VIRTUALIZE(function(a,b,noHeight)
	DieWait()
	local ff ,f2 = pcall(function()
		if not b then
			repeat fask.wait() pcall(function () b = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position end) until b
		end
		return (Vector3.new(a.X,not noHeight and a.Y or 0,a.Z) - Vector3.new(b.X,not noHeight and b.Y or 0,b.Z)).magnitude
	end)
	if not ff then print(f2) return 0 end 
	return f2
end)

local function CheckCanTeleport()
	local TableRe = {}
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "" and v:FindFirstChild("Handle") then
				table.insert(TableRe,v.Name)
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "" and v:FindFirstChild("Handle") then
				table.insert(TableRe,v.Name)
			end
		end
	end
	return #TableRe == 0
end

local AllEntrance
if World1 then
	AllEntrance = {
		Vector3.new(61163.8515625, 11.6796875, 1819.7841796875), -- under water
		Vector3.new(3864.8515625, 6.6796875, -1926.7841796875), -- hole up water
		Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656), -- sky 2
		Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047), -- sky 3
	}
elseif World2 then
	AllEntrance = {
		Vector3.new(923.21252441406, 126.9760055542, 32852.83203125), -- in ship
		Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422), -- out ship
		Vector3.new(2284,15,905), -- in don 
		Vector3.new(-286.98907470703125, 306.1379089355469, 597.8827514648438), -- out don
	}
elseif World3 then
	AllEntrance = {
		Vector3.new(-12548, 337, -7481), -- Mansion
		Vector3.new(-5096.44482421875, 315.44134521484375, -3105.741943359375), -- cc o c
		Vector3.new(5746.46044921875, 610.4500122070312, -244.6104278564453), -- hydra
		Vector3.new(5314.58203125, 22.562240600585938, -125.94227600097656), -- btf p in
		Vector3.new(-11993.580078125, 331.8335876464844, -8844.1826171875), -- btf p out
		Vector3.new(28288.15234375, 14896.5341796875, 100.4998779296875), -- temp
	}
end

local NoLoopDuplicateTween = false
local NoLoopDuplicateTween2 = false

toTarget = LPH_JIT_MAX(function(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	DieWait()

	local CheckInOut2 = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude

	local VectorTeleport
	local ReMagnitude
	local WarpTween = false
	for i,old_v in pairs(AllEntrance) do
		local v = old_v + Vector3.new(1,60,0)
		ReMagnitude = (v-RealTarget.Position).Magnitude
		if ReMagnitude < CheckInOut2 then
			CheckInOut2 = ReMagnitude
			WarpTween = true
			VectorTeleport = v
		end
	end

	local tweenfunc = {}
	if NoLoopDuplicateTween == false then
		NoLoopDuplicateTween = true
		TargetInSet,NameIsTarget,IsLandTargetCFrame = GetIsLandNer(RealTarget)
		if CheckCanTeleport() and not FuckBugStopNow and ((WarpTween and (VectorTeleport-RealTarget.Position).Magnitude > 5000) or (WarpTween == false and
			(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position-RealTarget.Position).Magnitude > 5000)) and TargetInSet then
			if tween then tween:Cancel() fask.wait(0.2) end
			local ErrorCount = 0
			repeat fask.wait()
				game.Players.LocalPlayer.Character:PivotTo(RealTarget)
				fask.wait(0.01)
				local HumnH = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
				if HumnH then
					HumnH:ChangeState(15)
				end
				repeat fask.wait(0.1)
					--_F("SetLastSpawnPoint",NameIsTarget)
					game.Players.LocalPlayer.Character:PivotTo(RealTarget)
				until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				fask.wait(0.3)
			until game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(NameIsTarget)
			fask.wait(0.2)
		elseif WarpTween == true then
			if tween then tween:Cancel() end
			fask.wait()
			_F("requestEntrance",VectorTeleport)
			if tween then tween:Cancel() end
			fask.wait(0.2)
		end
		NoLoopDuplicateTween = false
	end
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 300 then
		Speed = 300
	elseif Distance < 500 then
		Speed = 385
	elseif Distance < 1000 then
		Speed = 355
	elseif Distance >= 1000 then
		Speed = 335
	end

	local tween_s = game:service"TweenService"
	local TimeToGo = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed
	local info = TweenInfo.new(TimeToGo, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		return tween:Cancel()
	end

	function tweenfunc:Wait()
		return tween.Completed:Wait()
	end

	function tweenfunc:Time()
		return TimeToGo
	end

	return tweenfunc
end)

toTargetNoDie = LPH_JIT_MAX(function(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat fask.wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; fask.wait(0.2) end

	local CheckInOut2 = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	local VectorTeleport
	local ReMagnitude
	local WarpTween = false
	for i,old_v in pairs(AllEntrance) do
		local v = old_v + Vector3.new(1,60,0)
		ReMagnitude = (v-RealTarget.Position).Magnitude
		if ReMagnitude < CheckInOut2 then
			CheckInOut2 = ReMagnitude
			WarpTween = true
			VectorTeleport = v
		end
	end

	local tweenfunc = {}
	if NoLoopDuplicateTween == false then
		NoLoopDuplicateTween = true
		if WarpTween == true then
			fask.wait()
			_F("requestEntrance",VectorTeleport)
			if tween then tween:Cancel() end
			fask.wait(0.2)
		end
		NoLoopDuplicateTween = false
	end
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 500 then
		Speed = 280
	elseif Distance < 1000 then
		Speed = 315
	elseif Distance >= 1000 then
		Speed = 300
	end

	local tween_s = game:service"TweenService"
	local TimeToGo = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed
	local info = TweenInfo.new(TimeToGo, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		return tween:Cancel()
	end

	function tweenfunc:Wait()
		return tween.Completed:Wait()
	end

	function tweenfunc:Time()
		return TimeToGo
	end
end)


function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

-- [Functions Click]
LPH_NO_VIRTUALIZE(function()
	function Click()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	end
end)()
-- [Check Fruit 1M]

_G.CheckFruitLocal1M = false

LPH_JIT_MAX(function()
	function CheckFruit1M()
		for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
			if v.Price >= 1000000 then 
				_G.CheckFruitLocal1M = true
			end
		end
	end
end)()

-- [[ Server Api ]]

local ServerFunc = loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/Api/main/Crypto-BitCoin-Gen"))()

function GetFightingStyle(Style)
	ReturnText = ""
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

-- [CheckMasteryWeapon]

function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

local function myboat()
	for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		if v:FindFirstChild("Owner") then
			if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
				return v:FindFirstChildOfClass("VehicleSeat")
			end
		end
	end
	return false
end

local function CheckSeabeast()
	for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") then
			return v
		end
	end
	return false
end

function CheckPirateBoat()
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
		if v.Name == "PirateBasic" or v.Name == "PirateBrigade" then
			return true
		end
	end
	return false
end

--[GetWeaponInventory]

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

-- [GetMaterial]

function GetMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

function CheckButtonColorOpen()
	local OpenAll = 0
	for i,v in pairs(game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren()) do
		if v:IsA("Part") then
			if v:FindFirstChild("Part") and v:FindFirstChild("Part").BrickColor == BrickColor.new("Lime green") then
				OpenAll = OpenAll + 1
			end
		end
	end
	return OpenAll==3
end

local function CheckHakiColor(NameColor)
	local args = {
		[1] = "getColors"
	}

	MyHakiColor = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	for i,v in pairs(MyHakiColor) do
		if (v.HiddenName):find(NameColor) then
			if v.Unlocked then
				return v.Unlocked
			end
		end
	end
	return false
end

local velocityHandlerName = "indq9pdnq0"
local gyroHandlerName = "Fpjq90pdfhipqdm"
local mfly1
local mfly2
RunService = game:GetService("RunService")
speaker = game.Players.LocalPlayer
vehicleflyspeed = 5
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
local unmobilefly = function(speaker)
	pcall(function()
		FLYING = false
		local root = getRoot(speaker.Character)
		root:FindFirstChild(velocityHandlerName):Destroy()
		root:FindFirstChild(gyroHandlerName):Destroy()
		speaker.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
		mfly1:Disconnect()
		mfly2:Disconnect()
	end)
end

local mobilefly = function(speaker, vfly)
	unmobilefly(speaker)
	FLYING = true

	local root = getRoot(speaker.Character)
	local camera = workspace.CurrentCamera
	local v3none = Vector3.new()
	local v3zero = Vector3.new(0, 0, 0)
	local v3inf = Vector3.new(9e9, 9e9, 9e9)

	local controlModule = require(speaker.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
	local bv = Instance.new("BodyVelocity")
	bv.Name = velocityHandlerName
	bv.Parent = root
	bv.MaxForce = v3zero
	bv.Velocity = v3zero

	local bg = Instance.new("BodyGyro")
	bg.Name = gyroHandlerName
	bg.Parent = root
	bg.MaxTorque = v3inf
	bg.P = 1000
	bg.D = 50

	mfly1 = speaker.CharacterAdded:Connect(function()
		local bv = Instance.new("BodyVelocity")
		bv.Name = velocityHandlerName
		bv.Parent = root
		bv.MaxForce = v3zero
		bv.Velocity = v3zero

		local bg = Instance.new("BodyGyro")
		bg.Name = gyroHandlerName
		bg.Parent = root
		bg.MaxTorque = v3inf
		bg.P = 1000
		bg.D = 50
	end)

	mfly2 = RunService.RenderStepped:Connect(function()
		root = getRoot(speaker.Character)
		camera = workspace.CurrentCamera
		if speaker.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild(velocityHandlerName) and root:FindFirstChild(gyroHandlerName) then
			local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
			local VelocityHandler = root:FindFirstChild(velocityHandlerName)
			local GyroHandler = root:FindFirstChild(gyroHandlerName)

			VelocityHandler.MaxForce = v3inf
			GyroHandler.MaxTorque = v3inf
			if not vfly then humanoid.PlatformStand = true end
			GyroHandler.CFrame = camera.CoordinateFrame
			VelocityHandler.Velocity = v3none

			local direction = controlModule:GetMoveVector()
			if direction.X > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.X < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
		end
	end)
end

inmyselfss = LPH_JIT_MAX(function(name)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) then
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name)
	end
	local OutValue
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
		if v:IsA("Tool") then
			if v.Name == name then
				OutValue = v
				break
			end
		end
	end
	return OutValue or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
end)

local All_Materials
if World1 then
	All_Materials = {
		"Leather",
		"Scrap Metal",
		"Angel Wings",
		"Magma Ore",
		"Fish Tail"
	}
elseif World2 then
	All_Materials = {
		"Scrap Metal",
		"Radioactive Material",
		"Vampire Fang",
		"Mystic Droplet",
		"Magma Ore",
	}
elseif World3 then
	All_Materials = {
		"Gunpowder",
		"Mini Tusk",
		"Conjured Cocoa",
		"Fish Tail",
		"Scrap Metal",
		"Dragon Scale",
		"Demonic Wisp",
	}
end

table.sort(All_Materials)

-- [CustomFindFirstChild]

local function CustomFindFirstChild(tablename)
	for i,v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end
-- [CheckMaterial]

local function CheckMaterial(v1)
	if World1 then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMon=CFrame.new( -5815,84,8820);
		elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
			MaterialMob={"Brute [Lv. 45]"};
			CFrameMon=CFrame.new( -1145,15,4350);
		elseif (v1=="Angel Wings") then 
			MaterialMob={"God's Guard [Lv. 450]"};
			CFrameMon=CFrame.new( -4698,845, -1912);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMon=CFrame.new(61123,19,1569);
		end 
	end 
	if World2 then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Magma Ninja [Lv. 1175]"};
			CFrameMon=CFrame.new( -5428,78, -5959);
		elseif (v1=="Scrap Metal") then
			MaterialMob={"Swan Pirate [Lv. 775]"};
			CFrameMon=CFrame.new(878,122,1235);
		elseif (v1=="Radioactive Material") then 
			MaterialMob={"Factory Staff [Lv. 800]"};
			CFrameMon=CFrame.new(295,73, -56);
		elseif (v1=="Vampire Fang") then 
			MaterialMob={"Vampire [Lv. 975]"};
			CFrameMon=CFrame.new( -6033,7, -1317);
		elseif (v1=="Mystic Droplet") then 
			MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMon=CFrame.new( -3385,239, -10542);
		end 
	end 
	if World3 then 
		if (v1=="Mini Tusk") then 
			MaterialMob={"Mythological Pirate [Lv. 1850]"};
			CFrameMon=CFrame.new( -13545,470, -6917);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMon=CFrame.new( -10993,332, -8940);
		elseif (v1=="Scrap Metal") then 
			MaterialMob={"Jungle Pirate [Lv. 1900]"};
			CFrameMon=CFrame.new( -12107,332, -10549);
		elseif (v1=="Dragon Scale") then 
			MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMon=CFrame.new(6594,383,139);
		elseif (v1=="Conjured Cocoa") then 
			MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
		elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
			CFrameMon=CFrame.new( -9507,172,6158);
		elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
			CFrameMon=CFrame.new( -469,74,5904);
		end 
	end 
end

local questlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZcAtliftz/Api/main/ApiQuest.lua"))();

CheckQuest = function()
	questlib.CheckQuest()

	CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
end
CheckOldQuest = function(a)
	questlib.CheckOldQuest(a)

	CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
end

function CheckBossQuest()
	if Select_Bosses == "Saber Expert [Lv. 200] [Boss]" then
		MsBoss = "Saber Expert [Lv. 200] [Boss]"
		NameBoss = "Saber Expert"
		CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
	elseif Select_Bosses == "The Saw [Lv. 100] [Boss]" then
		MsBoss = "The Saw [Lv. 100] [Boss]"
		NameBoss = "The Saw"
		CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
	elseif Select_Bosses == "Greybeard [Lv. 750] [Raid Boss]" then
		MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
		NameBoss = "Greybeard"
		CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
	elseif Select_Bosses == "The Gorilla King [Lv. 25] [Boss]" then
		MsBoss = "The Gorilla King [Lv. 25] [Boss]"
		NameBoss = "The Gorilla King"
		NameQuestBoss = "JungleQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif Select_Bosses == "Bobby [Lv. 55] [Boss]" then
		MsBoss = "Bobby [Lv. 55] [Boss]"
		NameBoss = "Bobby"
		NameQuestBoss = "BuggyQuest1"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
	elseif Select_Bosses == "Yeti [Lv. 110] [Boss]" then
		MsBoss = "Yeti [Lv. 110] [Boss]"
		NameBoss = "Yeti"
		NameQuestBoss = "SnowQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
		CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
	elseif Select_Bosses == "Mob Leader [Lv. 120] [Boss]" then
		MsBoss = "Mob Leader [Lv. 120] [Boss]"
		NameBoss = "Mob Leader"
		CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
	elseif Select_Bosses == "Vice Admiral [Lv. 130] [Boss]" then
		MsBoss = "Vice Admiral [Lv. 130] [Boss]"
		NameBoss = "Vice Admiral"
		NameQuestBoss = "MarineQuest2"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
		CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
	elseif Select_Bosses == "Warden [Lv. 175] [Boss]" then
		MsBoss = "Warden [Lv. 175] [Boss]"
		NameBoss = "Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 1
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Bosses == "Chief Warden [Lv. 200] [Boss]" then
		MsBoss = "Chief Warden [Lv. 200] [Boss]"
		NameBoss = "Chief Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Bosses == "Swan [Lv. 225] [Boss]" then
		MsBoss = "Swan [Lv. 225] [Boss]"
		NameBoss = "Swan"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Bosses == "Magma Admiral [Lv. 350] [Boss]" then
		MsBoss = "Magma Admiral [Lv. 350] [Boss]"
		NameBoss = "Magma Admiral"
		NameQuestBoss = "MagmaQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
		CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
	elseif Select_Bosses == "Fishman Lord [Lv. 425] [Boss]" then
		MsBoss = "Fishman Lord [Lv. 425] [Boss]"
		NameBoss = "Fishman Lord"
		NameQuestBoss = "FishmanQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
		CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	elseif Select_Bosses == "Wysper [Lv. 500] [Boss]" then
		MsBoss = "Wysper [Lv. 500] [Boss]"
		NameBoss = "Wysper"
		NameQuestBoss = "SkyExp1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
		CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
	elseif Select_Bosses == "Thunder God [Lv. 575] [Boss]" then
		MsBoss = "Thunder God [Lv. 575] [Boss]"
		NameBoss = "Thunder God"
		NameQuestBoss = "SkyExp2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
		CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
	elseif Select_Bosses == "Cyborg [Lv. 675] [Boss]" then
		MsBoss = "Cyborg [Lv. 675] [Boss]"
		NameBoss = "Cyborg"
		NameQuestBoss = "FountainQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
		CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
		-- New World
	elseif Select_Bosses == "Diamond [Lv. 750] [Boss]" then
		MsBoss = "Diamond [Lv. 750] [Boss]"
		NameBoss = "Diamond"
		NameQuestBoss = "Area1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	elseif Select_Bosses == "Jeremy [Lv. 850] [Boss]" then
		MsBoss = "Jeremy [Lv. 850] [Boss]"
		NameBoss = "Jeremy"
		NameQuestBoss = "Area2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	elseif Select_Bosses == "Fajita [Lv. 925] [Boss]" then
		MsBoss = "Fajita [Lv. 925] [Boss]"
		NameBoss = "Fajita"
		NameQuestBoss = "MarineQuest3"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
	elseif Select_Bosses == "Don Swan [Lv. 1000] [Boss]" then
		MsBoss = "Don Swan [Lv. 1000] [Boss]"
		NameBoss = "Don Swan"
		CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
	elseif Select_Bosses == "Smoke Admiral [Lv. 1150] [Boss]" then
		MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
		NameBoss = "Smoke Admiral"
		NameQuestBoss = "IceSideQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
		CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
	elseif Select_Bosses == "Cursed Captain [Lv. 1325] [Raid Boss]" then
		MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
		NameBoss = "Cursed Captain"
		CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
	elseif Select_Bosses == "Darkbeard [Lv. 1000] [Raid Boss]" then
		MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
		NameBoss = "Darkbeard"
		CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
	elseif Select_Bosses == "Order [Lv. 1250] [Raid Boss]" then
		MsBoss = "Order [Lv. 1250] [Raid Boss]"
		NameBoss = "Order"
		CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
	elseif Select_Bosses == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
		MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
		NameBoss = "Awakened Ice Admiral"
		NameQuestBoss = "FrostQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
		CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
	elseif Select_Bosses == "Tide Keeper [Lv. 1475] [Boss]" then
		MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
		NameBoss = "Tide Keeper"
		NameQuestBoss = "ForgottenQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
		CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		-- Thire World
	elseif Select_Bosses == "Stone [Lv. 1550] [Boss]" then
		MsBoss = "Stone [Lv. 1550] [Boss]"
		NameBoss = "Stone"
		NameQuestBoss = "PiratePortQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-290, 44, 5577)
		CFrameBoss = CFrame.new(-1085, 40, 6779)
	elseif Select_Bosses == "Island Empress [Lv. 1675] [Boss]" then
		MsBoss = "Island Empress [Lv. 1675] [Boss]"
		NameBoss = "Island Empress"
		NameQuestBoss = "AmazonQuest2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5443, 602, 752)
		CFrameBoss = CFrame.new(5659, 602, 244)
	elseif Select_Bosses == "Kilo Admiral [Lv. 1750] [Boss]" then
		MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
		NameBoss = "Kilo Admiral"
		NameQuestBoss = "MarineTreeIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(2178, 29, -6737)
		CFrameBoss =CFrame.new(2846, 433, -7100)
	elseif Select_Bosses == "Captain Elephant [Lv. 1875] [Boss]" then
		MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
		NameBoss = "Captain Elephant"
		NameQuestBoss = "DeepForestIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
		CFrameBoss = CFrame.new(-13221, 325, -8405)
	elseif Select_Bosses == "Beautiful Pirate [Lv. 1950] [Boss]" then
		MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
		NameBoss = "Beautiful Pirate"
		NameQuestBoss = "DeepForestIsland2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
		CFrameBoss = CFrame.new(5182, 23, -20)
	elseif Select_Bosses == "Cake Queen [Lv. 2175] [Boss]" then
		MsBoss = "Cake Queen [Lv. 2175] [Boss]"
		NameBoss = "Cake Queen"
		NameQuestBoss = "IceCreamIslandQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-716, 382, -11010)
		CFrameBoss = CFrame.new(-821, 66, -10965)
	elseif Select_Bosses == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
		MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
		NameBoss = "rip_indra True Form"
		CFrameBoss = CFrame.new(-5359, 424, -2735)
	elseif Select_Bosses == "Longma [Lv. 2000] [Boss]" then
		MsBoss = "Longma [Lv. 2000] [Boss]"
		NameBoss = "Longma"
		CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
	elseif Select_Bosses == "Soul Reaper [Lv. 2100] [Raid Boss]" then
		MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
		NameBoss = "Soul Reaper"
		CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
	end
end

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fluent " .. Fluent.Version,
    SubTitle = "by dawid",
    TabWidth = 120,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
	Main = Window:AddTab({ Title = "Main", Icon = "" }),
	Stats = Window:AddTab({ Title = "Stats", Icon = "" }),

	FindFirst = Window:AddTab({ Title = "First Sea", Icon = "" }),
	FindSec = Window:AddTab({ Title = "Second Sea", Icon = "" }),
	FindThird = Window:AddTab({ Title = "Third Sea", Icon = "" }),

	FullMirage = Window:AddTab({ Title = "Full Moon", Icon = "" }),
	V4Race = Window:AddTab({ Title = "Race", Icon = "" }),
	SeaEvent = Window:AddTab({ Title = "Sea Event", Icon = "" }),

	Players = Window:AddTab({ Title = "Players", Icon = "" }),
	Visuals = Window:AddTab({ Title = "Visuals", Icon = "" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "" }),

	Misc = Window:AddTab({ Title = "Misc", Icon = "" }),

	Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Settings = apsara.Options

Tabs.Main:AddParagraph({
	Title = "Main",
	Content = "Main Tabs Scripts Can Use Farm Level and More."
})

-------------------------------------------------------------------------------------------------------------

local FarmLevel = Tabs.Main:AddToggle("Auto_Farm_Level", {Title = "Auto Farm Level", Default = FarmLv })

FarmLevel:OnChanged(function(value)
	FarmLv = value
	Auto_Farm_Level = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)        

local DBQ = Tabs.Main:AddToggle("Double_Quest", {Title = "Double Quest", Default = Double_Quest })

DBQ:OnChanged(function(value)
	Double_Quest = value
	Save()
end)

if World1 then

	local FFM = Tabs.Main:AddToggle("Fast_Farm_Mode", {Title = "Fast Farm Mode", Default = Fast_Farm_Mode })

	FFM:OnChanged(function(value)
		Fast_Farm_Mode = value
		Save()
	end)

	local ANW1 = Tabs.Main:AddToggle("Auto_New_World", {Title = "Auto New World", Default = Auto_New_World })

	ANW1:OnChanged(function(value)
		Auto_New_World = value
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		Save()
		fask.spawn(LPH_JIT_MAX(function()
			while wait() do
				pcall(function()
					if Auto_New_World then
						if game.Players.LocalPlayer.Data.Level.Value >= 700 then
							if Auto_Farm_Level then
								FarmLv = false
							end
							if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
								EquipWeapon("Key")
								repeat wait() toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_New_World
								wait(3)
							elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
											repeat wait()
												if Auto_Haki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
													wait()
													EquipWeapon(Selected_Weapons)
												end
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												NeedAttacking = true
												if not Fast_Attack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.Transparency = 1
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
											until v.Humanoid.Health <= 0 or not v.Parent
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
										end
									end
								else
									toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						end
					end
				end)
			end
		end))

	end);


end

if World2 then
	local ANW2 = Tabs.Main:AddToggle("Auto_New_World", {Title = "Auto New World", Default = Auto_New_World })

	ANW2:OnChanged(function(value)
		Auto_Third_Sea = value
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		Save()
		fask.spawn(LPH_JIT_MAX(function()
			while wait() do
				pcall(function()
					if Auto_Third_Sea then
						if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
							if Auto_Farm_Level then
								FarmLv = false
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
									Com("F_","TravelZou")
									if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
										if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															NeedAttacking = true
															if Auto_Haki then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
																wait()
																EquipWeapon(Selected_Weapons)
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not Fast_Attack then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.Transparency = 1
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
														end
													until not Auto_Third_Sea or not v.Parent or v.Humanoid.Health <= 0 
													wait(.5)
													Check = 2
													repeat wait() Com("F_","TravelZou") until Check == 1
													NeedAttacking = false
												end
											end
										else
											Com("F_","ZQuestProgress","Check")
											Com("F_","ZQuestProgress","Begin")
										end
									elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
										Com("F_","TravelZou")
									else
										if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															NeedAttacking = true
															if Auto_Haki then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
																wait()
																EquipWeapon(Selected_Weapons)
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not Fast_Attack then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.Transparency = 1
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
														end
													until not Auto_Third_Sea or not v.Parent or v.Humanoid.Health <= 0 
													NeedAttacking = false
												end
											end
										else
											TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
											if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if TweenDonSwanthireworld then
													TweenDonSwanthireworld:Stop()
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
												end
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
										TabelDevilFruitStore = {}
										TabelDevilFruitOpen = {}

										for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
											for i1,v1 in pairs(v) do
												if i1 == "Name" then 
													table.insert(TabelDevilFruitStore,v1)
												end
											end
										end

										for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
											if v.Price >= 1000000 then  
												table.insert(TabelDevilFruitOpen,v.Name)
											end
										end

										for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
											for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
												if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
													if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
														Com("F_","LoadFruit",DevilFruitStore)
													else
														Com("F_","TalkTrevor","1")
														Com("F_","TalkTrevor","2")
														Com("F_","TalkTrevor","3")
													end
												end
											end
										end

										Com("F_","TalkTrevor","1")
										Com("F_","TalkTrevor","2")
										Com("F_","TalkTrevor","3")	
									end
								end
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
									if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
										if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Swan Pirate [Lv. 775]" then
													pcall(function()
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																NeedAttacking = true
																StartMagnet = true
																if Auto_Haki then
																	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																	end
																end
																if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
																	wait()
																	EquipWeapon(Selected_Weapons)
																end
																PosMon = v.HumanoidRootPart.CFrame
																if not Fast_Attack then
																	game:GetService'VirtualUser':CaptureController()
																	game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																end
																v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																v.HumanoidRootPart.Transparency = 1
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
															end
														until not v.Parent or v.Humanoid.Health <= 0 or Auto_Third_Sea == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
														NeedAttacking = false
														StartMagnet = false
													end)
												end
											end
										else
											Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
											if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
											end
										end
									else
										Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
										if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
											Com("F_","StartQuest","BartiloQuest",1)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
									if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Jeremy [Lv. 850] [Boss]" then
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
														Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Farmtween then Farmtween:Stop() end
														NeedAttacking = true
														if Auto_Haki then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
															wait()
															EquipWeapon(Selected_Weapons)
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not Fast_Attack then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.Transparency = 1
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)															
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
													end
												until not v.Parent or v.Humanoid.Health <= 0 or Auto_Third_Sea == false
												NeedAttacking = false
											end
										end
									else
										Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
										if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
									if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
									elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Bartilotween then Bartilotween:Stop() end
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
										wait(.5)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
									end
								end
							end
						end
					end
				end)
			end
		end))

	end);

end

AttackRandomType = 1
LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		while wait() do 
			AttackRandomType = math.random(1,5)
			wait(0.3)
		end
	end)
end)()

LPH_JIT_MAX(function()
	function AutoFarmLevel()
		GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
		GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		if Fast_Farm_Mode and (MyLevel >= 15 and MyLevel <= 300) then
			if Auto_Haki then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end
			if MyLevel >= 15 and MyLevel <= 70 then
				local CFrameMon = CFrame.new(-7793.02978515625, 5700.880859375, -1277.950439453125)
				if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]") or game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if Fast_Farm_Mode and v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]" or v.Name == "Shanda [Lv. 475]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat fask.wait()
								FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if FarmtoTarget then FarmtoTarget:Stop() end
									for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
										if Fast_Farm_Mode and v2.Name == "Royal Squad [Lv. 525]" or v2.Name == "Royal Soldier [Lv. 550]" or v2.Name == "Shanda [Lv. 475]" and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then
											if InMyNetWork(v2.HumanoidRootPart) then
												v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												v2.Humanoid.JumpPower = 0
												v2.Humanoid.WalkSpeed = 0
												v2.HumanoidRootPart.CanCollide = false
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												v2.Humanoid:ChangeState(14)
												v2.Humanoid:ChangeState(11)
												v2.HumanoidRootPart.Size = Vector3.new(55,55,55)
											end
										end
									end
									if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 1)
									NeedAttacking = true
									EquipWeapon(Selected_Weapons)
								end
							until not (game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]") or game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]")) or not (Fast_Farm_Mode or FarmLv) or v.Humanoid.Health <= 0 or not v.Parent
							NeedAttacking = false
						end
					end
				else
					Modstween = toTarget(CFrameMon)
					if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
						if Modstween then Modstween:Stop() end
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if Modstween then Modstween:Stop() end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
					end 
				end
			elseif MyLevel >= 70 and MyLevel <= 300 then
				if GetQuest.Visible == false then
					if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find("We heard some") then 
						local CFrameMon = CFrame.new(-4698, 845, -1912)
						if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if Fast_Farm_Mode and v.Name == "God's Guard [Lv. 450]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat fask.wait()
										FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
												if Fast_Farm_Mode and v2.Name == "God's Guard [Lv. 450]" and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then
													if InMyNetWork(v2.HumanoidRootPart) then
														v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
														v2.Humanoid.JumpPower = 0
														v2.Humanoid.WalkSpeed = 0
														v2.HumanoidRootPart.CanCollide = false
														v2.Humanoid:ChangeState(14)
														v2.Humanoid:ChangeState(11)
														v2.HumanoidRootPart.Size = Vector3.new(55,55,55)
													end
												end
											end
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 1)
											NeedAttacking = true
											EquipWeapon(Selected_Weapons)
										end
									until not (game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]")) or not (Fast_Farm_Mode or FarmLv) or v.Humanoid.Health <= 0 or not v.Parent
									NeedAttacking = false
								end
							end
						else
							Modstween = toTarget(CFrameMon)
							if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
								if Modstween then Modstween:Stop() end 
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
							elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end 
						end
					end
				elseif GetQuest.Visible == true then
					local AllPlayersTableSkipFarm = {}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						table.insert(AllPlayersTableSkipFarm,v.Name)
					end
					if table.find(AllPlayersTableSkipFarm,GetQuestTitle.Text:split(" ")[2]) then
						for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
								if FarmLv and Fast_Farm_Mode and v.Name == GetQuestTitle.Text:split(" ")[2] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat fask.wait()
										if World1 and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) - v.HumanoidRootPart.Position).magnitude < 5000 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame)
										elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
												local args = {
													[1] = "EnablePvp"
												}

												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											-- game:GetService('VirtualUser'):CaptureController()
											-- game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
											-- if CombatFrameworkR.activeController.hitboxMagnitude ~= 55 and CombatFrameworkR.activeController and CombatFrameworkR.activeController.equipped then
											--     CombatFrameworkR.activeController.hitboxMagnitude = 55
											-- end
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											if AttackRandomType == 1 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
											elseif AttackRandomType == 2 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 7)
											elseif AttackRandomType == 3 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -7)
											elseif AttackRandomType == 4 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(7, 1, 0)
											elseif AttackRandomType == 5 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-7, 1, 0)
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
											end
											EquipWeapon(Selected_Weapons)
											NeedAttacking = true
											wait(.1)
											-- game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											-- game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
									until not FarmLv or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
									NeedAttacking = false
								end
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if FarmLv and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if string.find(GetQuestTitle.Text, QuestName) then
										repeat fask.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
											elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if FarmtoTarget then FarmtoTarget:Stop() end
												StartMagnet = true
												PosMon = v.HumanoidRootPart.CFrame
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												if AttackRandomType == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												elseif AttackRandomType == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
												elseif AttackRandomType == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
												elseif AttackRandomType == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
												elseif AttackRandomType == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												end
												NeedAttacking = true
												EquipWeapon(Selected_Weapons)
											end
										until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not FarmLv or not string.find(GetQuestTitle.Text, QuestName) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
										NeedAttacking = false
										StartMagnet = false
									else
										Com("F_","AbandonQuest");
									end
								end
							end
						else
							StartMagnet = false
							if not string.find(GetQuestTitle.Text, NameCheckQuest) then Com("F_","AbandonQuest"); end
							Modstween = toTarget(CFrameMon)
							if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end 
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end 
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
							elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
							elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								toTarget(CFrameMon)
							end 
						end
					end
				end
			end
		else
			if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest"); end
			if GetQuest.Visible == false then
				StartMagnet = false
				NeedAttacking = false
				-- [[ Default Get Quest]] --
				Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
				if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Questtween then Questtween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Questtween then Questtween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
				elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Questtween then Questtween:Stop() end
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Questtween then Questtween:Stop() end
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
					if Questtween then Questtween:Stop() end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
					wait(.5)
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						Com("F_","StartQuest", QuestName, LevelQuest)
						Com("F_","SetSpawnPoint")
					end
				end
				-- [[ Fast Get Quest ]] --
                                --[[
                                    Com("F_","StartQuest", QuestName, LevelQuest)
                                    Com("F_","SetSpawnPoint")
                                ]]--
			elseif GetQuest.Visible == true then
				if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if FarmLv and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if string.find(GetQuestTitle.Text, NameMon) then
								repeat fask.wait()
									FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if FarmtoTarget then FarmtoTarget:Stop() end
										if Auto_Haki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
											wait()
											EquipWeapon(Selected_Weapons)
										end
										StartMagnet = true
										NeedAttacking = true
										if not Fast_Attack then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										v.Humanoid:ChangeState(14)
										PosMon = v.HumanoidRootPart.CFrame
										if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0)
									end
								until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not FarmLv or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
								StartMagnet = false
								NeedAttacking = false
							else
								Com("F_","AbandonQuest");
							end
						end
					end
				else
					StartMagnet = false
					NeedAttacking = false
					if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
					Modstween = toTarget(CFrameMon.Position,CFrameMon)
					if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
						if Modstween then Modstween:Stop() end 
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
						if Modstween then Modstween:Stop() end 
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
					elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
						if Modstween then Modstween:Stop() end 
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
						if Modstween then Modstween:Stop() end 
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
						if Modstween then Modstween:Stop() end
						toTarget(CFrameMon)
					end 
				end
			end
		end
	end
end)()

-- [Check Notification]
LPH_JIT_MAX(function()
	function CheckNotifyComplete()
		for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
			if v.Name == "NotificationTemplate" then
				if string.lower(v.Text):find("quest completed") then
					pcall(function()
						v:Destroy()
					end)
					return true
				end
			end
		end
		return false
	end
end)()

local NoLoopDuplicate = false
local SubQuest = false
local oldmob = Name
local oldcheckquest = NameMon

LPH_JIT_MAX(function()
	fask.spawn(function()
		while wait() do
			pcall(function()
				if FarmLv then
					if Double_Quest then 
						if SubQuest == true then 
							if LevelFarm then 
								if tonumber(LevelFarm-1) ~= 0 then 
									CheckOldQuest(tonumber(LevelFarm-1))
								end
							end
						else
							CheckQuest()
							oldmob = Name
							oldcheckquest = NameMon
							spawn(function()
								pcall(function()
									if NoLoopDuplicate == false then 
										if CheckNotifyComplete() and FarmLv then
											NoLoopDuplicate = true 
											while wait() do
												SubQuest = true
												if CheckNotifyComplete() or FarmLv == false then
													break;
												end
											end
											SubQuest = false
											NoLoopDuplicate = false
										end
									end
								end)
							end)
							if SubQuest == true then  
								if LevelFarm then 
									if tonumber(LevelFarm-1) ~= 0 then 
										CheckOldQuest(tonumber(LevelFarm-1))
									end
								end
							end
						end
					else
						CheckQuest()
					end
					AutoFarmLevel()
				end
			end)
		end
	end)
end)()

Weapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
		table.insert(Weapon ,v.Name)
	end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if v:IsA("Tool") then
		table.insert(Weapon, v.Name)
	end
end

Tabs.Main:AddParagraph({
	Title = "Settings",
	Content = "Select Weapons For Use Auto Find Items And More.!"
})

local Selected_Weaponssss = Tabs.Main:AddDropdown("Selected_Weaponssss", {
	Title = "Selected Weapons",
	Values = Weapon,
	Multi = false,
	Default = 1,
})

Selected_Weaponssss:OnChanged(function(value)
	Selected_Weapons = value
	Save()
end)

-- Page2:Button("Refresh Weapons", function()
-- 	Refresh_Weapon:Clear()
-- 	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
-- 		if v:IsA("Tool") then
-- 			Refresh_Weapon:Add(v.Name)
-- 		end
-- 	end
-- 	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
-- 		if v:IsA("Tool") then
-- 			Refresh_Weapon:Add(v.Name)
-- 		end
-- 	end
-- end)

Tabs.Main:AddButton({
	Title = "Disabled Notification",
	Description = "Remove Notification Text",
	Callback = function()
		game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):Destroy()
	end})

local SelectFastAttackMode = (SelectFastAttackMode or "Fast Super Fast Attack")

SelectedFastAttackMode = {"Normal Attack","Fast Attack","Super Fast Attack"}

local function ChangeModeFastAttack(SelectFastAttackMode)
	if SelectFastAttackMode == "Normal Attack" then
		FireCooldown = 0.1
	elseif SelectFastAttackMode == "Fast Attack" then
		FireCooldown = 0.07
	elseif SelectFastAttackMode == "Super Fast Attack" then
		FireCooldown = 0.04
	end
end

local SelectedFastAttackModes = Tabs.Main:AddDropdown("SelectedFastAttackModes", {
	Title = "Fast Attack Mode",
	Values = SelectedFastAttackMode,
	Multi = false,
	Default = 3,
})

SelectedFastAttackModes:OnChanged(function(value)
	SelectFastAttackMode = value
	ChangeModeFastAttack(SelectFastAttackMode)
	Save()
end)

local FASTAT = Tabs.Main:AddToggle("Fast_Attack", {Title = "Fast Attack", Default = true })
local DMGAU = Tabs.Main:AddToggle("Damage_Aura", {Title = "Damage Aura", Default = DamageAura })
local ClickNoCooldowns = Tabs.Main:AddToggle("ClickNoCooldown", {Title = "Click No Cooldown", Default = ClickNoCooldown })
local NoAtNim = Tabs.Main:AddToggle("ClickNoCooldown", {Title = "No Attack Animation & Dmg", Default = true })
FASTAT:OnChanged(function(value)
	Fast_Attack = value
	Save()
end)
DMGAU:OnChanged(function(value)
	DamageAura = value
end)
ClickNoCooldowns:OnChanged(function(value)
	ClickNoCooldown = value
	Save()
end)
NoAtNim:OnChanged(function(value)
	NoAttackAnimation = value
	DmgAttack.Enabled = not value
end)

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if ClickNoCooldown then
		local ac = CombatFrameworkR.activeController

		if ac and ac.equipped then
			ac.hitboxMagnitude = 55
			pcall(AttackFunction,3)
		end
	end
end)

Tabs.Main:AddButton({
	Title = "Redeem All Code Exp x2",
	Description = "Redeem Code BF",
	Callback = function()
		function UseCode(Text)
			game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
		end
		UseCode("Enyo_is_Pro")
		UseCode("Magicbus")
		UseCode("JCWK")
		UseCode("Starcodeheo")
		UseCode("Bluxxy")
		UseCode("fudd10_v2")
		UseCode("3BVISITS")
		UseCode("FUDD10")
		UseCode("BIGNEWS")
		UseCode("Sub2OfficialNoobie")
		UseCode("SUB2GAMERROBOT_EXP1")
		UseCode("StrawHatMaine")
		UseCode("SUB2NOOBMASTER123")
		UseCode("Sub2Daigrock")
		UseCode("Axiore")
		UseCode("TantaiGaming")
		UseCode("STRAWHATMAINE")
		UseCode("kittgaming")
		UseCode("Enyu_is_Pro")
		UseCode("Sub2Fer999")
		UseCode("THEGREATACE")
		UseCode("GAMERROBOT_YT")
		UseCode("SECRET_ADMIN")
	end
})

Tabs.Main:AddParagraph({Title = "Bosses Farm"})

local BossTable = {}   
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	if string.find(v.Name, "Boss") then
		if v.Name == "Ice Admiral [Lv. 700] [Boss]" then

		else
			table.insert(BossTable, v.Name)
		end
	end
end

local Boss_Dropdown = Tabs.Main:AddDropdown("Boss_Dropdown", {
	Title = "Select Bosses Farm",
	Values = BossTable,
	Multi = false,
	Default = 1,
})

Boss_Dropdown:OnChanged(function(value)
	Select_Bosses = value
	Save()
end)

-- Page1:Button("Refresh Bosses",function()
-- 	Boss_Dropdown:Clear();
-- 	local BossTable = {}   
-- 	for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
-- 		if string.find(v.Name, "Boss") then
-- 			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then

-- 			else
-- 				Boss_Dropdown:Add(v.Name)
-- 			end
-- 		end
-- 	end
-- end)

local FBSSS = Tabs.Main:AddToggle("Auto_Farm_Bosses", {Title = "Auto Farm Bosses", Default = Auto_Boss_Select })

FBSSS:OnChanged(function(value)
	Auto_Boss_Select = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

local QBSS = Tabs.Main:AddToggle("Auto_Quest_Bosses", {Title = "Auto Quest Bosses", Default = Auto_Quest_Bosses })

QBSS:OnChanged(function(value)
	Auto_Quest_Bosses = value
	Save()
end)

fask.spawn(LPH_JIT_MAX(function()
	while wait() do
		if Auto_Boss_Select then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat wait()
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									StartMagnet = true
									NeedAttacking = true
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
								until Auto_Boss_Select == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					else
						toTarget(CFrameBoss)
					end
				else
					if Auto_Boss_Select then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat wait() toTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_Boss_Select
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												if Auto_Haki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
													wait()
													EquipWeapon(Selected_Weapons)
												end
												StartMagnet = true
												NeedAttacking = true
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)								
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until Auto_Boss_Select == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								toTarget(CFrameBoss)
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										if Auto_Haki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
											wait()
											EquipWeapon(Selected_Weapons)
										end
										StartMagnet = true
										NeedAttacking = true
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)								
									until Auto_Boss_Select == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							toTarget(CFrameBoss)
						end
					end
				end
			end)
		end
	end
end))


--Make_Melee

local SupComplete = false
local EClawComplete = false
local TalComplete = false
local SharkComplete = false
local DeathComplete = false
local GodComplete = false

function GetAllMeleeFarm()
	if SupComplete == false then
		local args = {
			[1] = "BuySuperhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		if CheckMasteryWeapon("Superhuman",400) == "true UpTo" then
			SupComplete = true
		end
	end
	wait(.5)
	if EClawComplete == false then
		local string_1 = "BuyElectricClaw";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);

		if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" then
			EClawComplete = true
		end
	end
	wait(.5)
	if TalComplete == false then
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")

		if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" then
			TalComplete = true
		end
	end
	wait(.5)
	if SharkComplete == false then
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" then
			SharkComplete = true
		end
	end
	wait(.5)
	if DeathComplete == false then
		local args = {
			[1] = "BuyDeathStep"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Death Step",400) == "true UpTo" then
			DeathComplete = true
		end
	end
	if GodComplete == false then
		local args = {
			[1] = "BuyGodhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Godhuman",350) == "true UpTo" then
			GodComplete = true
		end
	end
end

Tabs.Main:AddParagraph({
	Title = "Fighting Style",
	Content = "This is a Fighting Style. Can use ;>!"
})


local Supahumun = Tabs.Main:AddToggle("Auto_Superhuman", {Title = "Auto Superhuman", Default = Auto_Superhuman })

Supahumun:OnChanged(function(value)
	Auto_Superhuman = value
	Save()
	fask.spawn(function()
		while wait() do
			pcall(function()
				if Auto_Superhuman then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
												local args = {
													[1] = "BuyElectro"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										end
									end
								end
							end
						end

						Selected_Weapons = GetFightingStyle("Melee")

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							local args = {
								[1] = "BuyElectro"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if Auto_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									Select_Raids = "Flame"
									Auto_Raids = true
									if Auto_Farm_Level then FarmLv = false end
								end
							else
								Auto_Raids = false
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								Auto_Raids = false
								if Auto_Farm_Level then FarmLv = true end
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if Auto_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									Select_Raids = "Flame"
									Auto_Raids = true
									if Auto_Farm_Level then FarmLv = false end
								end
							else
								Auto_Raids = false
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								Auto_Raids = false
								if Auto_Farm_Level then FarmLv = true end
							end
						end

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							Auto_Farm_Level = FarmLv
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							Auto_Farm_Level = FarmLv
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end 
					end
				end
			end)
		end
	end)	
end);

local Electric_Claw = Tabs.Main:AddToggle("Auto_Electric_Claw", {Title = "Auto Electric Claw", Default = Auto_Electric_Claw })

Electric_Claw:OnChanged(function(value)
	Auto_Electric_Claw = value
	Save()
	fask.spawn(function()
		while wait() do
			pcall(function()
				if Auto_Electric_Claw then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
							Selected_Weapons = "Electro"
						end  
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
							Selected_Weapons = "Electro"
						end  
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end
				end
			end)
		end
	end)	
end);

local Death_Step = Tabs.Main:AddToggle("Auto_Death_Step", {Title = "Auto Death Step", Default = Auto_Death_Step })

Death_Step:OnChanged(function(value)
	Auto_Death_Step = value
	Save()
	fask.spawn(function()
		while wait() do
			pcall(function()
				if Auto_Death_Step then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							Selected_Weapons = "Death Step"
						end  
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

							Selected_Weapons = "Death Step"
						end  
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
							Selected_Weapons = "Black Leg"
						end 
					end
				end
			end)
		end
	end)	
end);

local Sharkman_Karate = Tabs.Main:AddToggle("Auto_Sharkman_Karate", {Title = "Auto Sharkman Karate", Default = Auto_Sharkman_Karate })

Sharkman_Karate:OnChanged(function(value)
	Auto_Sharkman_Karate = value
	Save()
	fask.spawn(function()
		while wait() do
			pcall(function()
				if Auto_Sharkman_Karate then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
								Selected_Weapons = "Sharkman Karate"
							end  
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
								Selected_Weapons = "Sharkman Karate"
							end  
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
								Selected_Weapons = "Fishman Karate"
							end 
						else 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
						end
					end
				end
			end)
		end
	end)
end);

local Dragon_Talon = Tabs.Main:AddToggle("Auto_Sharkman_Karate", {Title = "Auto Dragon Talon", Default = Auto_Dragon_Talon })

Dragon_Talon:OnChanged(function(value)
	Auto_Dragon_Talon = value
	if Auto_Dragon_Talon then
		Com("F_","BlackbeardReward","DragonClaw","2")
	end
	Save()
	fask.spawn(function()
		while wait() do
			pcall(function()
				if Auto_Dragon_Talon then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							Selected_Weapons = "Dragon Claw"
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							Selected_Weapons = "Dragon Claw"
						end

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							Selected_Weapons = "Dragon Claw"
							if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);

								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
								local string_1 = "BuyDragonTalon";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end 
						end

						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							Selected_Weapons = "Dragon Claw"
							if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);

								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
								local string_1 = "BuyDragonTalon";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end 
						end
					end
				end
			end)
		end
	end)
end);

local Godhumanez = Tabs.Main:AddToggle("Auto_Godhuman", {Title = "Auto God Human", Default = Auto_Godhuman })

Godhumanez:OnChanged(function(value)
	Auto_Godhuman = value
	BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
	if BuyGodhuman then
		if BuyGodhuman ~= 1 then
			GetAllMeleeFarm()
		end
	end     
	Save()
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Godhuman then
				BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
				if BuyGodhuman then
					if BuyGodhuman == 1 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
						Auto_Godhuman = false
					end
				end
				if not HasTalon then
					BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))

					if BuyDragonTalon then
						if BuyDragonTalon == 1 then
							HasTalon = true
						end
					end
				end
				if not HasSuperhuman then
					BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))

					if BuySuperhuman then
						if BuySuperhuman == 1 then
							HasSuperhuman = true
						end
					end
				end
				if not HasKarate then
					BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))

					if BuySharkmanKarate then
						if BuySharkmanKarate == 1 then
							HasKarate = true
						end
					end
				end
				if not HasDeathStep then
					BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "BuyDeathStep",true))

					if BuyDeathStep then
						if BuyDeathStep == 1 then
							HasDeathStep = true
						end
					end
				end
				if not HasElectricClaw then
					BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
					if BuyElectricClaw then
						if BuyElectricClaw == 1 then
							HasElectricClaw = true
						end
					end
				end

				if not HasSuperhuman then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
												local args = {
													[1] = "BuyElectro"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										end
									end
								end
							end
						end
						Selected_Weapons = GetFightingStyle("Melee")

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							local args = {
								[1] = "BuyElectro"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if Auto_Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									if Auto_Farm_Level then FarmLv = false end
								end
							else
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if Auto_Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									if Auto_Farm_Level then FarmLv = false end
								end
							else
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if Auto_Farm_Level then FarmLv = true end
							end
						end

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							if Auto_Farm_Level then FarmLv = true end
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							if Auto_Farm_Level then FarmLv = true end
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end 
					end
				elseif not HasKarate then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								if World2 then
									KillSharkMan = true
									if Auto_Farm_Level then FarmLv = false end
								else
									KillSharkMan = false
									if Auto_Farm_Level then FarmLv = true end
								end
							elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
								KillSharkMan = false
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								KillSharkMan = false
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end

						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								if World2 then
									KillSharkMan = true
									if Auto_Farm_Level then FarmLv = false end
								else
									if Auto_Farm_Level then FarmLv = true end
									KillSharkMan = false
								end
							elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
								KillSharkMan = false
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
								KillSharkMan = false
								if Auto_Farm_Level then FarmLv = true end
								local args = {
									[1] = "BuySharkmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
						Selected_Weapons = GetFightingStyle("Melee")
					end
				elseif not HasDeathStep then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

						end  
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

						end  
						Selected_Weapons = GetFightingStyle("Melee")
					end
				elseif not HasTalon then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						Selected_Weapons = GetFightingStyle("Melee")

						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);

								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
							end 
						end

						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);

								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
							end 
						end
					end
				elseif not HasElectricClaw then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						Selected_Weapons = GetFightingStyle("Melee")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end

						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end
				end
				if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
					if HasSuperhuman and not SupComplete then
						local args = {
							[1] = "BuySuperhuman"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Superhuman",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SupComplete == false then
							SupComplete = true
						end
					elseif HasTalon and not TalComplete then
						local args = {
							[1] = "BuyDragonTalon"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and TalComplete == false then
							TalComplete = true
						end
					elseif HasKarate and not SharkComplete then
						local args = {
							[1] = "BuySharkmanKarate"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SharkComplete == false then
							SharkComplete = true
						end
					elseif HasDeathStep and not DeathComplete then
						local args = {
							[1] = "BuyDeathStep"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Death Step",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and DeathComplete == false then
							DeathComplete = true
						end
					elseif HasElectricClaw and not EClawComplete then
						local args = {
							[1] = "BuyElectricClaw"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						wait(0.2)
						if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and EClawComplete == false then
							EClawComplete = true
						end
					end
				end

				if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
					if GetMaterial("Fish Tail") >= 20 then
						if GetMaterial("Magma Ore") >= 20 then
							if GetMaterial("Dragon Scale") >= 10 then
								if GetMaterial("Mystic Droplet") >= 10 then
									Com("F_","BuyGodhuman")
									BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))

									if BuyGodhuman then
										if BuyGodhuman == 1 then
											Auto_Godhuman = false
										end
									end
									if Auto_Farm_Level then FarmLv = true end
								elseif not World2 then
									Com("F_","TravelDressrosa")
								elseif World2 then
									if Auto_Farm_Level then FarmLv = false end
									CheckMaterial("Mystic Droplet")
									if CustomFindFirstChild(MaterialMob) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if Auto_Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
												repeat wait()
													FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
													if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if FarmtoTarget then FarmtoTarget:Stop() end
														NeedAttacking = true
														EquipWeapon(Selected_Weapons)
														spawn(function()
															for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																if v2.Name == v.Name then
																	spawn(function()
																		if InMyNetWork(v2.HumanoidRootPart) then
																			v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																			v2.Humanoid.JumpPower = 0
																			v2.Humanoid.WalkSpeed = 0
																			v2.HumanoidRootPart.CanCollide = false
																			v2.Humanoid:ChangeState(11)
																			v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																		end
																	end)
																end
															end
														end)
														if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
															game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
															game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														end
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
													end
												until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or v.Humanoid.Health <= 0 or not v.Parent
												NeedAttacking = false
											end
										end
									else
										NeedAttacking = false
										Modstween = toTarget(CFrameMon.Position,CFrameMon)
										if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
										elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
										elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Modstween then Modstween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
										end 
									end
								end
							elseif not World3 then
								Com("F_","TravelZou")
							elseif World3 then
								if Auto_Farm_Level then FarmLv = false end
								CheckMaterial("Dragon Scale")
								if CustomFindFirstChild(MaterialMob) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if Auto_Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if FarmtoTarget then FarmtoTarget:Stop() end
													NeedAttacking = true
													EquipWeapon(Selected_Weapons)
													spawn(function()
														for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
															if v2.Name == v.Name then
																spawn(function()
																	if InMyNetWork(v2.HumanoidRootPart) then
																		v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																		v2.Humanoid.JumpPower = 0
																		v2.Humanoid.WalkSpeed = 0
																		v2.HumanoidRootPart.CanCollide = false
																		v2.Humanoid:ChangeState(11)
																		v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																	end
																end)
															end
														end
													end)
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												end
											until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or v.Humanoid.Health <= 0 or not v.Parent
											NeedAttacking = false
										end
									end
								else
									NeedAttacking = false
									Modstween = toTarget(CFrameMon.Position,CFrameMon)
									if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
									elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
									elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Modstween then Modstween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									end 
								end
							end
						elseif not World1 then
							Com("F_","TravelMain")
						elseif World1 then
							if Auto_Farm_Level then FarmLv = false end
							CheckMaterial("Magma Ore")
							if CustomFindFirstChild(MaterialMob) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if Auto_Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if FarmtoTarget then FarmtoTarget:Stop() end
												NeedAttacking = true
												EquipWeapon(Selected_Weapons)
												spawn(function()
													for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														if v2.Name == v.Name then
															spawn(function()
																if InMyNetWork(v2.HumanoidRootPart) then
																	v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																	v2.Humanoid.JumpPower = 0
																	v2.Humanoid.WalkSpeed = 0
																	v2.HumanoidRootPart.CanCollide = false
																	v2.Humanoid:ChangeState(11)
																	v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																end
															end)
														end
													end
												end)
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
											end
										until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or v.Humanoid.Health <= 0 or not v.Parent
										NeedAttacking = false
									end
								end
							else
								NeedAttacking = false
								Modstween = toTarget(CFrameMon.Position,CFrameMon)
								if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
								elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
								elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if Modstween then Modstween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								end 
							end
						end
					elseif not World1 then
						Com("F_","TravelMain")
					elseif World1 then
						if Auto_Farm_Level then FarmLv = false end
						CheckMaterial("Fish Tail")
						if CustomFindFirstChild(MaterialMob) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if Auto_Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											NeedAttacking = true
											EquipWeapon(Selected_Weapons)
											spawn(function()
												for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v2.Name == v.Name then
														spawn(function()
															if InMyNetWork(v2.HumanoidRootPart) then
																v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																v2.Humanoid.JumpPower = 0
																v2.Humanoid.WalkSpeed = 0
																v2.HumanoidRootPart.CanCollide = false
																v2.Humanoid:ChangeState(11)
																v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
															end
														end)
													end
												end
											end)
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
										end
									until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or v.Humanoid.Health <= 0 or not v.Parent
									NeedAttacking = false
								end
							end
						else
							NeedAttacking = false
							Modstween = toTarget(CFrameMon.Position,CFrameMon)
							if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
							elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
							elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end 
						end
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Godhuman and World2 then
				if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
					if (KillSharkMan == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks.") then
						if KillFish then KillFish:Stop() end
						Com("F_","SetSpawnPoint")
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
							if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
								repeat wait()
									if game.Workspace.Enemies:FindFirstChild(v.Name) then
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
											if Farmtween then Farmtween:Stop() end
											NeedAttacking = true
											if Auto_Haki then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
												wait()
												EquipWeapon(Selected_Weapons)
											end
											if not Fast_Attack then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.HumanoidRootPart.Transparency = 1
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
										end
									end
								until not v.Parent or not Auto_Godhuman or KillSharkMan == false or v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
								NeedAttacking = false
							end
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
						KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
					else
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." then
							ServerFunc:NormalTeleport()
						end
					end
				end
			end
		end)
	end
end)

--Mas_Set

spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if UseSkillMasteryDevilFruit and Auto_Farm_DF_Mastery then
						if type(args[2]) == "vector" then 
							args[2] = PositionSkillMasteryDevilFruit
						else
							args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
						end
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

spawn(function()
	local gt = getrawmetatable(game)
	local old = gt.__namecall
	setreadonly(gt,false)
	gt.__namecall = newcclosure(function(...)
		local args = {...}
		if getnamecallmethod() == "InvokeServer" then 
			if SelectWeaponGun then
				if SelectWeaponGun == "Soul Guitar" then
					if tostring(args[2]) == "TAP" then
						if Auto_Farm_Gun_Mastery and UseSkillMasteryGun then
							args[3] = PositionSkillMasteryGun
						end
					end
				end
			end
		end
		return old(unpack(args))
	end)
	setreadonly(gt,true)
end)

LPH_NO_VIRTUALIZE(function()
	fask.spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)
end)()

function AutoFarmMasteryGun()
	if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if Auto_Farm_Gun_Mastery and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				repeat wait()
					FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if FarmtoTarget then FarmtoTarget:Stop() end
						StartMagnet = true
						PosMon = v.HumanoidRootPart.CFrame
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
							game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
							game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
						end
						HealthMin = v.Humanoid.MaxHealth*Mob_Kill/100
						PositionSkillMasteryGun = v.HumanoidRootPart.Position
						if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							EquipWeapon(SelectWeaponGun)
							UseSkillMasteryGun = true
							-- v.HumanoidRootPart.CanCollide = false
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
								Click()
								local args = {
									[1] = v.HumanoidRootPart.Position,
									[2] = v.HumanoidRootPart
								}
								game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
							end 
						else
							UseSkillMasteryGun = false
							Click()
							EquipWeapon(Selected_Weapons)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
						end
					end
				until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not Auto_Farm_Gun_Mastery or v.Humanoid.Health <= 0 or not v.Parent
				UseSkillMasteryGun = false
				StartMagnet = false
			end
		end
	else
		StartMagnet = false
		Modstween = toTarget(CFrameMon)
		if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
		elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
		elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
			if Modstween then Modstween:Stop() end wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		end 
	end
end

function AutoFarmMasteryDevilFruit()
	if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if Auto_Farm_DF_Mastery and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				repeat wait()
					FarmtoTarget = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if FarmtoTarget then FarmtoTarget:Stop() end
						StartMagnet = true
						NeedAttacking = true
						PosMon = v.HumanoidRootPart.CFrame
						HealthMin = v.Humanoid.MaxHealth*Mob_Kill/100
						if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
							if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
								PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
								UseSkillMasteryDevilFruit = true
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								end
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
									if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end   
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
									if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
									else
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end  
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
									if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(4)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
									if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
									if Skill_V and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
									if Skill_F and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
										game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
									end
								end
							end
						else
							game:GetService('VirtualUser'):CaptureController()
							game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							UseSkillMasteryDevilFruit = false
							EquipWeapon(Selected_Weapons)
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
						end
					end
				until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not Auto_Farm_DF_Mastery or v.Humanoid.Health <= 0 or not v.Parent
				StartMagnet = false
				NeedAttacking = false
			end
		end
	else
		StartMagnet = false
		NeedAttacking = false
		Modstween = toTarget(CFrameMon.Position,CFrameMon)
		if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
		elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
		elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
			if Modstween then Modstween:Stop() end wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		end 
	end
end

function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

local AllSwordInInventroy = {};
pcall(function()
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
		if (type(v) ~= "table") then
		elseif (v.Type == "Sword") then
			table.insert(AllSwordInInventroy, v.Name);
		end
	end
end)
table.insert(AllSwordInInventroy, GetFightingStyle("Sword"));

local function CheckQuestMasteryFarm()
	if World1 then
		Name = "Galley Captain [Lv. 650]";
		CFrameMon = CFrame.new(5649, 39, 4936);
	end
	if World2 then
		Name = "Water Fighter [Lv. 1450]";
		CFrameMon = CFrame.new(-3385, 239, -10542);
	end
	if World3 then
		Name = "Reborn Skeleton [Lv. 1975]";
		CFrameMon = CFrame.new(-9506.14648, 172.130661, 6101.79053);
	end
end

local function inmyself(name)
	return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
end

-- check can't 2

--wait(5)

Tabs.Main:AddParagraph({
	Title = "Auto Farm Mastery",
	Content = "Auto Farm Mastery Devil Fruits and Gun"
})

local Sword_Mastery = Tabs.Main:AddToggle("Auto_All_Sword_Mastery", {Title = "Auto Farm All Sword Mastery", Default = Auto_All_Sword_Mastery })

Sword_Mastery:OnChanged(function(value)
	Auto_All_Sword_Mastery = value
	if value == false then
		toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end   
	Save()
end)

fask.spawn(function()
	while wait() do
		if Auto_All_Sword_Mastery then
			pcall(function()
				CheckQuestMasteryFarm()
				if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then 
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Sword_Weapon) then
										wait()
										EquipWeapon(_G.Sword_Weapon)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
								until Auto_All_Sword_Mastery == false or not v.Parent or v.Humanoid.Health <= 0
								StartMagnet = false
								NeedAttacking = false
							end
						end
					end
				else
					StartMagnet = false
					NeedAttacking = false
					toTarget(CFrameMon)
				end
			end)
		end
	end
end)

fask.spawn(function()
	while fask.wait() do
		if Auto_All_Sword_Mastery then
			pcall(function()
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then
						if v.ToolTip == "Sword" then
							_G.Sword_Weapon = v.Name
						end
					end
				end
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						if v.ToolTip == "Sword" then
							_G.Sword_Weapon = v.Name
						end
					end
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then
						if v.ToolTip == "Sword" then
							if game.Players.LocalPlayer.Character:FindFirstChild(_G.Sword_Weapon) then
								if game.Players.LocalPlayer.Character:FindFirstChild(_G.Sword_Weapon).Level.Value == 600 then
									local TotalSword = {}
									for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
										if v['Type'] == "Sword" and v['Mastery'] < 600 then
											table.insert(TotalSword, v.Name)
										end
									end
									local RandomSword = TotalSword[math.random(1, #TotalSword)]
									wait(.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", RandomSword)
								end
							end
						end
					end
				end
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						if v.ToolTip == "Sword" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(_G.Sword_Weapon) then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(_G.Sword_Weapon).Level.Value == 600 then
									local TotalSword = {}
									for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
										if v['Type'] == "Sword" and v['Mastery'] < 600 then
											table.insert(TotalSword, v.Name)
										end
									end
									local RandomSword = TotalSword[math.random(1, #TotalSword)]
									wait(.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", RandomSword)
								end
							end
						end
					end
				end
			end)
		end
	end
end)

local DF_Farm = Tabs.Main:AddToggle("Auto_Farm_DF_Mastery", {Title = "Auto Farm Devil Fruits Mastery", Default = Auto_Farm_DF_Mastery })
local Gun_Farm = Tabs.Main:AddToggle("Auto_Farm_Gun_Mastery", {Title = "Auto Farm Gun Mastery", Default = Auto_Farm_Gun_Mastery })

local SliderKillAt = Tabs.Main:AddSlider("Mob_Kill", {
	Title = "Kill At",
	Description = "Kill Monster Heath %",
	Default = 25,
	Min = 0,
	Max = 100,
	Rounding = 1,
	Callback = function(Value)
		Mob_Kill = Value
		Save()
	end
})

SliderKillAt:OnChanged(function(Value)
	Mob_Kill = Value
	Save()
end)

DF_Farm:OnChanged(function(value)
	Auto_Farm_DF_Mastery = value
	if value == false then
		toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end   
	Save()
end)
DF_Farm:OnChanged(function(value)
	Auto_Farm_Gun_Mastery = value
	if value == false then
		toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end   
	Save()
end)

Tabs.Main:AddParagraph({
	Title = "Settings Auto Farm Mastery",
	Content = "You can settings Skill For Auto Farm Mastery!"
})

local SkillZ = Tabs.Main:AddToggle("Skill_Z", {Title = "Use Skill Z", Default = true })
local SkillX = Tabs.Main:AddToggle("Skill_X", {Title = "Use Skill X", Default = true })
local SkillC = Tabs.Main:AddToggle("Skill_C", {Title = "Use Skill C", Default = true })
local SkillV = Tabs.Main:AddToggle("Skill_V", {Title = "Use Skill V", Default = true })
local SkillF = Tabs.Main:AddToggle("Skill_F", {Title = "Use Skill F", Default = true })

SkillZ:OnChanged(function(value)
	Skill_Z = value
	Save()
end)
SkillX:OnChanged(function(value)
	Skill_X = value 
	Save()
end)
SkillC:OnChanged(function(value)
	Skill_C = value 
	Save()
end)
SkillV:OnChanged(function(value)
	Skill_V = value
	Save()
end)
SkillF:OnChanged(function(value)
	SkillF = value
	Save()
end)

spawn(function()
	while wait() do
		if Auto_Farm_DF_Mastery then
			CheckQuest()
			AutoFarmMasteryDevilFruit()
		end
	end
end)

spawn(function()
	while wait() do
		if Auto_Farm_Gun_Mastery then
			CheckQuest()
			AutoFarmMasteryGun()
		end
	end
end)

Tabs.Main:AddParagraph({Title = "Chest & Aura Mob"})

local GetChest = Tabs.Main:AddToggle("AutoFarmChest", {Title = "Auto Farm Chest", Default = AutoFarmChest })
local AuraFarm = Tabs.Main:AddToggle("Mob_Aura", {Title = "Auto Farm Mob Aura", Default = Mob_Aura })

GetChest:OnChanged(function(value)
	AutoFarmChest = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
AuraFarm:OnChanged(function(value)
	Mob_Aura = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)

MagnitudeAdd = 0
fask.spawn(function()
	while wait() do 
		if AutoFarmChest then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									toTargetP(v.CFrame)
								end
							until AutoFarmChest == false or not v.Parent
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							MagnitudeAdd = MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Mob_Aura then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if Mob_Aura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						repeat wait()
							StartMagnet = true
							NeedAttacking = true
							if Auto_Haki then
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end
							end
							if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
								wait()
								EquipWeapon(Selected_Weapons)
							end
							PosMon = v.HumanoidRootPart.CFrame
							if not Fast_Attack then
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							MagnetMobAura = true
							if delay then
								delay(1,function()
									MagnetMobAura = true
								end)
							end 
						until not Mob_Aura or not v.Parent or v.Humanoid.Health <= 0
						MagnetMobAura = false
						NeedAttacking = false
						StartMagnet = false
					end
				end
			end
		end)
	end
end)

Tabs.Main:AddParagraph({Title = "Observation Farm"})

local AutoObserv = Tabs.Main:AddToggle("AutoObservation", {Title = "Auto Farm Observation", Default = AutoObservation })
local AutoObservHOP = Tabs.Main:AddToggle("AutoFarmChest", {Title = "Auto Farm Chest", Default = AutoFarmChest })

-- local ObservationRange = Page3:Label("Observation Range : 0")

-- spawn(function()
--     while wait() do
--         pcall(function()
--             ObservationRange:Set("Observation Range : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
--         end)
--     end
-- end)

AutoObserv:OnChanged(function(value)
	AutoObservation = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

AutoObservHOP:OnChanged(function(value)
	AutoObservation_Hop = value
	Save()
end)

spawn(function()
	while wait() do
		pcall(function()
			if AutoObservation then
				repeat fask.wait()
					if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService('VirtualUser'):CaptureController()
						game:GetService('VirtualUser'):SetKeyDown('0x65')
						wait(2)
						game:GetService('VirtualUser'):SetKeyUp('0x65')
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not AutoObservation
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if AutoObservation then
				if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
					local ahasd = Notification.new("success", "apsara Hub", "Observation Range : Max") 
					ahasd:deleteTimeout(5)
					wait(2)
				else
					if World2 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
							if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat fask.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
								until AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat fask.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
										wait(1)
									if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and AutoObservation_Hop == true then
										game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
									end
								until AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							toTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
						end
					elseif World1 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
							if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat fask.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
								until AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat fask.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
									wait(1)
									if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and AutoObservation_Hop == true then
										game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
									end
								until AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							toTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
						end
					elseif World3 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
							if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat fask.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
								until AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat fask.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
									wait(1)
									if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and AutoObservation_Hop == true then
										game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
									end
								until AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							toTarget(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
						end
					end
				end
			end
		end
	end)
end)

Tabs.Main:AddParagraph({Title = "Materials Farm"})

local SelectMater = Tabs.Main:AddDropdown("SelectModeMaterial", {
	Title = "Select Materials",
	Values = All_Materials,
	Multi = false,
	Default = 1,
})

local MaterFarm = Tabs.Main:AddToggle("AutoFarmMaterial", {Title = "Auto Farm Materials", Default = AutoFarmMaterial })

SelectMater:OnChanged(function(value)
	SelectModeMaterial = value
end)

MaterFarm:OnChanged(function(x)
	AutoFarmMaterial = x
	if x == false then
		toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	spawn(function()
		while wait() do 
			if AutoFarmMaterial then    
				xpcall(function()
					if (SelectModeMaterial~="") then 
						CheckMaterial(SelectModeMaterial);
						if CustomFindFirstChild(MaterialMob) then
							for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if (AutoFarmMaterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health>0)) then 
									repeat wait();
										FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1));
										if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150)) then 
											if FarmtoTarget then FarmtoTarget:Stop(); end 
											NeedAttacking = true;
											EquipWeapon(Selected_Weapons);
											spawn(function()for v4,v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
													if (v5.Name==v1.Name) then 
														spawn(function()
															if InMyNetWork(v5.HumanoidRootPart) then 
																v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
																v5.Humanoid.JumpPower=0;
																v5.Humanoid.WalkSpeed=0;
																v5.HumanoidRootPart.CanCollide=false;
																v5.Humanoid:ChangeState(14);
																v5.Humanoid:ChangeState(11);
																v5.HumanoidRootPart.Size=Vector3.new(55,55,55);
															end 
														end);
													end 
												end 
											end);
											if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=150)) then 
												game:service("VirtualInputManager"):SendKeyEvent(true,"V",false,game);
												game:service("VirtualInputManager"):SendKeyEvent(false,"V",false,game);
											end 
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1);
										end 
									until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health<=0) or not v1.Parent NeedAttacking=false;
								end 
							end 
						else 
							NeedAttacking=false;
							Modstween = toTarget(CFrameMon);
							if (World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
								if Modstween then Modstween:Stop(); end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875));
							elseif (World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
								if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875));
							elseif (World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>3000)) then 
								if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656));
							elseif ((CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150) then 
								if Modstween then Modstween:Stop();end 
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
							end 
						end 
					end
				end,
				function(x)
					print("I can't Fix this error : "..x)
				end)
			else
				break;
			end
		end
	end)
end)

Tabs.Stats:AddParagraph({
	Title = "Auto Stats",
	Content = "Update U Stats +3!"
})

local Kaitun_Stats = Tabs.Stats:AddToggle("Auto_Stats_Kaitun", {Title = "Auto Kaitun Stats", Default = Auto_Stats_Kaitun })
local Melee_Statsez = Tabs.Stats:AddToggle("Melee_Stats", {Title = "Auto Melee Stats", Default = Melee_Stats })
local Defense_Statsez = Tabs.Stats:AddToggle("Defense_Stats", {Title = "Auto Defense Stats", Default = Defense_Stats })
local Sword_Statsez = Tabs.Stats:AddToggle("Sword_Stats", {Title = "Auto Sword Stats", Default = Sword_Stats })
local Gun_Statsez = Tabs.Stats:AddToggle("Gun_Stats", {Title = "Auto Gun Stats", Default = Gun_Stats })
local Devil_Statsez = Tabs.Stats:AddToggle("Devil_Stats", {Title = "Auto Devil Fruits Stats", Default = Devil_Stats })

Kaitun_Stats:OnChanged(function(value)
	Auto_Stats_Kaitun = value
	Save()
end)
Melee_Statsez:OnChanged(function(value)
	Melee_Stats = value
	Save()
end)
Defense_Statsez:OnChanged(function(value)
	Defense_Stats = value
	Save()
end)
Sword_Statsez:OnChanged(function(value)
	Sword_Stats = value
	Save()
end)
Gun_Statsez:OnChanged(function(value)
	Gun_Stats = value
	Save()
end)
Devil_Statsez:OnChanged(function(value)
	Devil_Stats = value
	Save()
end)

spawn(function()
	while fask.wait() do
		if Auto_Stats_Kaitun then
			if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value < 2450 then
				local args = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = tonumber(UpStatus)
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			else
				local args = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = tonumber(UpStatus)
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))				
			end
		end
	end
end)

fask.spawn(function()
	pcall(function()
		while fask.wait() do
			if Melee_Stats then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",3)	
			end
			if Defense_Stats then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",3)
			end
			if Sword_Stats then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",3)
			end
			if Gun_Stats then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",3)
			end
			if Devil_Stats then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",3)
			end
		end
	end)
end)

kaitunall = {"Mode 1","Mode 2"}

local KaitunCap = Tabs.Stats:AddDropdown("SelectKaitunPicMode", {
	Title = "Kaitun Picture Mode",
	Values = kaitunall,
	Multi = false,
	Default = 1,
})

KaitunCap:OnChanged(function(starts)
	SelectKaitunPicMode = starts
end)

Tabs.Stats:AddButton({
	Title = "Kaitun Picture",
	Description = "and choose mode 1 or 2",
	Callback = function()
		if SelectKaitunPicMode == "" then
			local notif = Notification.new("warning", "Alert", "Pls Select Mode Picture")
			notif:deleteTimeout(3)
		end

		do ui = game:GetService("CoreGui") if ui:FindFirstChild("LayoutKaitun") then ui:FindFirstChild("LayoutKaitun"):Destroy() end end

		fask.wait((22/7)/2/2)

		for i,v in pairs(getconnections(game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InventoryContainer.Right.Content.Sort.Dropdown.All.Activated)) do
			v.Function()
		end

		fask.wait()
		local function formatNumber(number)
			local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
			return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
		end

		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local XFALSEYTRUE = false
		local function MakeControl(topbarobject, object)
			local Dragging = nil
			local DragInput = nil
			local DragStart = nil
			local StartPosition = nil

			local function Update(input)
				local Delta = input.Position - DragStart
				local pos =
					UDim2.new(
						StartPosition.X.Scale,
						StartPosition.X.Offset + Delta.X,
						StartPosition.Y.Scale,
						StartPosition.Y.Offset + Delta.Y
					)
				local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})

				Tween:Play()
			end

			local inputdis1
			local inputdis2
			local inputdis3
			local inputdis4
			local inputS1
			local inputS2
			inputdis1 = topbarobject.InputBegan:Connect(
				function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						Dragging = true
						DragStart = input.Position
						StartPosition = object.Position

						input.Changed:Connect(
							function()
								if input.UserInputState == Enum.UserInputState.End then
									Dragging = false
								end
							end
						)
					end
				end
			)

			inputdis2 = topbarobject.InputChanged:Connect(
				function(input)
					if
						input.UserInputType == Enum.UserInputType.MouseMovement or
						input.UserInputType == Enum.UserInputType.Touch
					then
						DragInput = input
					end
				end
			)

			inputdis3 = UserInputService.InputChanged:Connect(
				function(input)
					if input == DragInput and Dragging then
						Update(input)
					end
				end
			)
			local AddX = 0
			local AddY = 0
			inputS1 = topbarobject.MouseWheelForward:Connect(function()
				if XFALSEYTRUE == false then
					AddX = 0.01
					AddY = 0
				elseif XFALSEYTRUE == true then
					AddX = 0
					AddY = 0.01
				end
				object.Size = UDim2.new(object.Size.X.Scale + AddX,0, object.Size.Y.Scale + AddY,0)

			end)

			inputS2 = topbarobject.MouseWheelBackward:Connect(function()
				if XFALSEYTRUE == false then
					AddX = 0.01
					AddY = 0
				elseif XFALSEYTRUE == true then
					AddX = 0
					AddY = 0.01
				end
				object.Size = UDim2.new(object.Size.X.Scale - AddX,0, object.Size.Y.Scale - AddY,0)

			end)
			inputdis4 = UserInputService.InputBegan:Connect(function(io, p)
				if io.KeyCode.Name == "Home" then
					inputdis1:Disconnect()
					inputdis2:Disconnect()
					inputdis3:Disconnect()
					inputdis4:Disconnect()
					inputS1:Disconnect()
					inputS2:Disconnect()
				end
			end)
		end

		if SelectKaitunPicMode == "Mode 1" then

			local LayoutKaitun = Instance.new("ScreenGui")
			local Fighthing = Instance.new("Frame")
			local FighthingUIGridLayout = Instance.new("UIGridLayout")
			local Mythical = Instance.new("Frame")
			local MythicalUIGridLayout = Instance.new("UIGridLayout")
			local Legendary = Instance.new("Frame")
			local LegendaryUIGridLayout = Instance.new("UIGridLayout")
			local Level = Instance.new("Frame")
			local LevelUIGridLayout = Instance.new("UIGridLayout")
			local Fruits = Instance.new("Frame")
			local FruitsUIGridLayout = Instance.new("UIGridLayout")
			local Mastery = Instance.new("Frame")
			local MasteryUIGridLayout = Instance.new("UIGridLayout")
			local Awakend = Instance.new("Frame")
			local AwakendUIGridLayout = Instance.new("UIGridLayout")
			local DraggableFrame = Instance.new("Frame")
			local DraggableFrameCorner = Instance.new("UICorner")
			local Logo = Instance.new("ImageLabel")

			--Properties:

			DraggableFrame.Name = "DraggableFrame"
			DraggableFrame.Parent = LayoutKaitun
			DraggableFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			DraggableFrame.BorderSizePixel = 0
			DraggableFrame.Position = UDim2.new(0.490409195, 0, 0.481481493, 0)
			DraggableFrame.Size = UDim2.new(0, 29, 0, 29)
			DraggableFrame.ZIndex = 99999

			DraggableFrameCorner.CornerRadius = UDim.new(0, 4)
			DraggableFrameCorner.Name = "DraggableFrameCorner"
			DraggableFrameCorner.Parent = DraggableFrame

			Logo.Name = "Logo"
			Logo.Parent = DraggableFrame
			Logo.Active = true
			Logo.AnchorPoint = Vector2.new(0.5, 0.5)
			Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Logo.BackgroundTransparency = 1.000
			Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
			Logo.Size = UDim2.new(0, 20, 0, 20)
			Logo.Image = "http://www.roblox.com/asset/?id=6034837797"

			LayoutKaitun.Name = "LayoutKaitun"
			LayoutKaitun.Parent = game:GetService("CoreGui")
			LayoutKaitun.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			Fighthing.Name = "Fighthing"
			Fighthing.Parent = LayoutKaitun
			Fighthing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Fighthing.BackgroundTransparency = 1
			Fighthing.Position = UDim2.new(0.00703325309, 0, 0.0111111132, 0)
			Fighthing.Size = UDim2.new(0.450207263, 0, 0.123456791, 0)

			FighthingUIGridLayout.Name = "FighthingUIGridLayout"
			FighthingUIGridLayout.Parent = Fighthing
			FighthingUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			FighthingUIGridLayout.CellPadding = UDim2.new(0.0100999996, 0, 0, 0)
			FighthingUIGridLayout.CellSize = UDim2.new(0.139000007, 0, 1, 0)

			Mythical.Name = "Mythical"
			Mythical.Parent = LayoutKaitun
			Mythical.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Mythical.BackgroundTransparency = 1
			Mythical.Position = UDim2.new(0.00703324797, 0, 0.17037037, 0)
			Mythical.Size = UDim2.new(0.340792835, 0, 0.123456791, 0)

			MythicalUIGridLayout.Name = "MythicalUIGridLayout"
			MythicalUIGridLayout.Parent = Mythical
			MythicalUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			MythicalUIGridLayout.CellPadding = UDim2.new(0.00999999978, 0, 0, 0)
			MythicalUIGridLayout.CellSize = UDim2.new(0.185000003, 0, 1, 0)
			MythicalUIGridLayout.FillDirectionMaxCells = 5

			Legendary.Name = "Legendary"
			Legendary.Parent = LayoutKaitun
			Legendary.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Legendary.BackgroundTransparency = 1
			Legendary.Position = UDim2.new(0.00703324797, 0, 0.322222233, 0)
			Legendary.Size = UDim2.new(0.482097179, 0, 0.123456791, 0)

			LegendaryUIGridLayout.Name = "LegendaryUIGridLayout"
			LegendaryUIGridLayout.Parent = Legendary
			LegendaryUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			LegendaryUIGridLayout.CellPadding = UDim2.new(0.00999999978, 0, 0.0299999993, 0)
			LegendaryUIGridLayout.CellSize = UDim2.new(0.125000007, 0, 1, 0)

			Level.Name = "Level"
			Level.Parent = LayoutKaitun
			Level.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Level.BackgroundTransparency = 1
			Level.Position = UDim2.new(0.00703324797, 0, 0.722222209, 0)
			Level.Size = UDim2.new(0.351023018, 0, 0.261728406, 0)

			LevelUIGridLayout.Name = "LevelUIGridLayout"
			LevelUIGridLayout.Parent = Level
			LevelUIGridLayout.FillDirection = Enum.FillDirection.Vertical
			LevelUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			LevelUIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			LevelUIGridLayout.CellPadding = UDim2.new(0.00999999978, 0, 0, 0)
			LevelUIGridLayout.CellSize = UDim2.new(0.349999994, 0, 0.300000012, 0)
			LevelUIGridLayout.StartCorner = Enum.StartCorner.TopRight

			Fruits.Name = "Fruits"
			Fruits.Parent = LayoutKaitun
			Fruits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Fruits.BackgroundTransparency = 1
			Fruits.Position = UDim2.new(0.543528736, 0, 0.521400213, 0)
			Fruits.Size = UDim2.new(0.443864882/1.2, 0, 0.462442219/1.2, 0)

			FruitsUIGridLayout.Name = "FruitsUIGridLayout"
			FruitsUIGridLayout.Parent = Fruits
			FruitsUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			FruitsUIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			FruitsUIGridLayout.CellSize = UDim2.new(0.180000007, 0, 0.280000001, 0)
			FruitsUIGridLayout.StartCorner = Enum.StartCorner.BottomLeft

			Mastery.Name = "Mastery"
			Mastery.Parent = LayoutKaitun
			Mastery.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Mastery.BackgroundTransparency = 1
			Mastery.Position = UDim2.new(0.489130378, 0, 0.0197530836, 0)
			Mastery.Size = UDim2.new(0.498721212, 0, 0.0878065005, 0)

			MasteryUIGridLayout.Name = "MasteryUIGridLayout"
			MasteryUIGridLayout.Parent = Mastery
			MasteryUIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
			MasteryUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			MasteryUIGridLayout.CellSize = UDim2.new(0.230000004, 0, 1, 0)
			MasteryUIGridLayout.CellPadding = UDim2.new(0.01, 0, 0, 0)
			MasteryUIGridLayout.FillDirectionMaxCells = 5
			MasteryUIGridLayout.StartCorner = Enum.StartCorner.BottomLeft

			Awakend.Name = "Awakend"
			Awakend.Parent = LayoutKaitun
			Awakend.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Awakend.BackgroundTransparency = 1
			Awakend.Position = UDim2.new(0.591340601, 0, 0.209760457, 0)
			Awakend.Size = UDim2.new(0.395780057, 0, 0.235397741, 0)

			AwakendUIGridLayout.Name = "AwakendUIGridLayout"
			AwakendUIGridLayout.Parent = Awakend
			AwakendUIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
			AwakendUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			AwakendUIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
			AwakendUIGridLayout.CellSize = UDim2.new(1, 0, 1, 0)
			AwakendUIGridLayout.FillDirectionMaxCells = 5
			AwakendUIGridLayout.StartCorner = Enum.StartCorner.BottomLeft

			local MainUI = game.Players.LocalPlayer.PlayerGui.Main

			local Inv = require(MainUI.UIController.Inventory)
			local Sprite = require(MainUI.UIController.Inventory.Spritesheets)
			local itemList = getupvalue(Inv.UpdateSort,2)
			local Tempt = MainUI.InventoryContainer.Right.Content.ScrollingFrame.Frame["1"]:Clone()
			local tier = getupvalue(Inv.UpdateSelected,7)

			local function AddItemToGui(itemtype,rarity,parentitem)
				for i,v in pairs(itemList) do
					if v.Visible then
						local Item = Tempt:Clone()
						Item.ItemLine1.Text = v.details.Type == "Material" and v.details.Count or ""
						Item.ItemLine2.Text = v.details.Type
						Item.ItemName.Text = v.DisplayName or v.details.Name
						Item.IconOutline.Visible = false
						Item.Equipped.Visible = false
						Item.OutlineGlow.Visible = true
						Item.OutlineGlow.ImageColor3 = tier[v.details.Rarity][2]
						for Image,list in pairs(Sprite) do
							local FName = v.details.Name:gsub(",",""):gsub(":",""):gsub("'","")
							local IconSize = list[FName.."1.png"]
							local IconOutlineSize = list[FName.."2.png"]
							if IconSize then
								local num = (IconSize[3] and 1 or 2)
								Item.Icon.Image = Image
								Item.Icon.ImageRectOffset = Vector2.new(IconSize[1] / num, IconSize[2] / num);
								Item.Icon.ImageRectSize = Vector2.new(IconSize[3] and 150, IconSize[4] and 150);

								Item.Background.BackgroundColor3 = tier[v.details.Rarity][2]
								Item.Background.UIStroke.Color = tier[v.details.Rarity][2]
								Item.BackgroundShadow.BackgroundColor3 = tier[v.details.Rarity][2]
								Item.BackgroundShadow.UIStroke.Color = tier[v.details.Rarity][2]
							end
							if IconOutlineSize then
								local num = (IconOutlineSize[3] and 1 or 2)
								Item.IconOutline.Image = Image
								Item.IconOutline.Visible = true
								Item.IconOutline.ImageRectOffset = Vector2.new(IconOutlineSize[1] / num, IconOutlineSize[2] / num);
								Item.IconOutline.ImageRectSize = Vector2.new(IconOutlineSize[3] and 150, IconOutlineSize[4] and 150);
							end
						end
						if itemtype == "Blox Fruit" and Item.ItemLine2.Text == "Blox Fruit" then
							Item.Parent = parentitem
						elseif rarity == 0 and Item.ItemLine2.Text == itemtype then
							Item.Parent = parentitem
						elseif Item.ItemLine2.Text == itemtype and v.details.Rarity == rarity then
							Item.Parent = parentitem
						end
					end
				end
			end

			local AllMelee = {
				["Godhuman"] = "10338473987",
				["Superhuman"] = "4831781711",
				["SharkmanKarate"] = "6525157144",
				["DragonTalon"] = "7831677967",
				["ElectricClaw"] = "6866994470",
				["DeathStep"] = "6085350468"
			}

			for i,v in pairs(AllMelee) do
				spawn(function()
					if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..i , true)) == 1 then
						local MeleeUi = Instance.new("ImageLabel")

						MeleeUi.Name = i
						MeleeUi.Parent = Fighthing
						MeleeUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						MeleeUi.BackgroundTransparency = 1
						MeleeUi.BorderSizePixel = 0
						MeleeUi.Size = UDim2.new(0.8, 0, 0.8, 0)
						MeleeUi.Image = 'rbxassetid://' .. v
					end
				end)
			end

			AddItemToGui("Sword",4,Mythical)

			AddItemToGui("Sword",3,Legendary)

			AddItemToGui("Accessory",3,Legendary)

			local LevelFrame = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level:Clone()
			LevelFrame.Parent = Level

			local BeilFrame = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli:Clone()
			BeilFrame.Parent = Level

			local FragmentsFrame = BeilFrame:Clone()
			FragmentsFrame.Parent = Level
			FragmentsFrame.Text = "ƒ"..formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
			FragmentsFrame.TextColor3 = Color3.fromRGB(177, 121, 255)

			AddItemToGui("Blox Fruit",0,Fruits)

			spawn(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
				fask.wait((22/7)/2/2)
				game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true

				fask.wait(1)
				AwakeningToggler = game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:Clone()
				AwakeningToggler.Parent = Awakend
				AwakeningToggler.Name = 'Awake'
				game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
			end)

			game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()

			fask.wait(0.1)

			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:FindFirstChild("Level") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) then
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
						fask.wait()
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
					end
					fask.wait(0.2)
					if game.Players.LocalPlayer.Character:FindFirstChild(v.Name) then
						local Floder = Instance.new("Frame")
						Floder.Parent = Mastery
						Floder.Name = v.Parent.Name
						Floder.BackgroundTransparency = 1

						local FloderUIGridLayout = Instance.new("UIGridLayout")
						FloderUIGridLayout.Name = "Floder"..v.Parent.Name
						FloderUIGridLayout.Parent = Floder
						FloderUIGridLayout.FillDirection = Enum.FillDirection.Vertical
						FloderUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
						FloderUIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
						FloderUIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
						FloderUIGridLayout.CellSize = UDim2.new(1, 0, 0.5, 0)

						TemUi = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Level:Clone()
						TemUi.Parent = Floder
						TemUi = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Title:Clone()
						TemUi.Parent = Floder
					end
				end
			end

			fask.wait(0.1)

			game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()

			local ShowStatus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Version:Clone()
			ShowStatus.Parent = LayoutKaitun
			ShowStatus.TextSize = 24
			ShowStatus.TextColor3 = Color3.fromRGB(255, 0, 127)
			ShowStatus.Text = "Now Change : Melee Frame"
			ShowStatus.Visible = true
			local ChangeDragNum = 0
			local ChangeSizeNum = 0
			MakeControl(DraggableFrame,Fighthing)

			local ShowStatusXY = game:GetService("Players").LocalPlayer.PlayerGui.Main.Version:Clone()
			ShowStatusXY.Parent = LayoutKaitun
			ShowStatusXY.TextSize = 24
			ShowStatusXY.TextColor3 = Color3.fromRGB(255, 0, 127)
			ShowStatusXY.Text = "Now Change : X Scale"
			ShowStatusXY.Visible = true
			ShowStatusXY.Position = UDim2.new(ShowStatus.Position.X,0, ShowStatus.Position.Y,0)

			UserInputService.InputBegan:Connect(function(io, p)
				if io.KeyCode.Name == "Home" then
					ChangeDragNum = (ChangeDragNum + 1) % 7
					if ChangeDragNum == 0 then
						ShowStatus.Text = "Now Change : Melee Frame"
						MakeControl(DraggableFrame,Fighthing)
					elseif ChangeDragNum == 1 then
						ShowStatus.Text = "Now Change : Mythical Frame"
						MakeControl(DraggableFrame,Mythical)
					elseif ChangeDragNum == 2 then
						ShowStatus.Text = "Now Change : Legendary Frame"
						MakeControl(DraggableFrame,Legendary)
					elseif ChangeDragNum == 3 then
						ShowStatus.Text = "Now Change : Level Frame"
						MakeControl(DraggableFrame,Level)
					elseif ChangeDragNum == 4 then
						ShowStatus.Text = "Now Change : Fruits Frame"
						MakeControl(DraggableFrame,Fruits)
					elseif ChangeDragNum == 5 then
						ShowStatus.Text = "Now Change : Mastery Frame"
						MakeControl(DraggableFrame,Mastery)
					elseif ChangeDragNum == 6 then
						ShowStatus.Text = "Now Change : Awakend Frame"
						MakeControl(DraggableFrame,Awakend)
					end
				end
				if io.KeyCode.Name == "PageUp" then
					ChangeSizeNum = (ChangeSizeNum + 1) % 2
					if ChangeSizeNum == 0 then
						ShowStatusXY.Text = "Now Change : X Scale"
						XFALSEYTRUE = false
					elseif ChangeSizeNum == 1 then
						ShowStatusXY.Text = "Now Change : Y Scale"
						XFALSEYTRUE = true
					end
				end
				if io.KeyCode.Name == "End" then
					DraggableFrame.Visible = not DraggableFrame.Visible
					ShowStatus.Visible = DraggableFrame.Visible
					ShowStatusXY.Visible = DraggableFrame.Visible
				end
			end)

			fask.wait(0.5)

			game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Main").Enabled = false
		elseif SelectKaitunPicMode == "Mode 2" then

			local LayoutKaitun = Instance.new("ScreenGui")
			local ItemFrame = Instance.new("Frame")
			local ItemUIGridLayout = Instance.new("UIGridLayout")
			local MeleeFrame = Instance.new("Frame")
			local MeleeUIGridLayout = Instance.new("UIGridLayout")
			local FruitFrame = Instance.new("Frame")
			local FruitUIGridLayout = Instance.new("UIGridLayout")
			local Awake = Instance.new("Frame")
			local AwakeUIGridLayout = Instance.new("UIGridLayout")
			local Level = Instance.new("Frame")
			local LevelUIGridLayout = Instance.new("UIGridLayout")
			local DraggableFrame = Instance.new("Frame")
			local DraggableFrameCorner = Instance.new("UICorner")
			local Logo = Instance.new("ImageLabel")

			--Properties:

			DraggableFrame.Name = "DraggableFrame"
			DraggableFrame.Parent = LayoutKaitun
			DraggableFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			DraggableFrame.BorderSizePixel = 0
			DraggableFrame.Position = UDim2.new(0.490409195, 0, 0.481481493, 0)
			DraggableFrame.Size = UDim2.new(0, 29, 0, 29)
			DraggableFrame.ZIndex = 99999

			DraggableFrameCorner.CornerRadius = UDim.new(0, 4)
			DraggableFrameCorner.Name = "DraggableFrameCorner"
			DraggableFrameCorner.Parent = DraggableFrame

			Logo.Name = "Logo"
			Logo.Parent = DraggableFrame
			Logo.Active = true
			Logo.AnchorPoint = Vector2.new(0.5, 0.5)
			Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Logo.BackgroundTransparency = 1.000
			Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
			Logo.Size = UDim2.new(0, 20, 0, 20)
			Logo.Image = "http://www.roblox.com/asset/?id=6034837797"

			LayoutKaitun.Name = "LayoutKaitun"
			LayoutKaitun.Parent = game:GetService("CoreGui")
			LayoutKaitun.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			ItemFrame.Name = "ItemFrame"
			ItemFrame.Parent = LayoutKaitun
			ItemFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ItemFrame.BackgroundTransparency = 1.000
			ItemFrame.Position = UDim2.new(0.00546780089, 0, 0.011386198, 0)
			ItemFrame.Size = UDim2.new(0.412103146, 0, 0.672516584, 0)

			ItemUIGridLayout.Name = "ItemUIGridLayout"
			ItemUIGridLayout.Parent = ItemFrame
			ItemUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ItemUIGridLayout.CellPadding = UDim2.new(0.00999999978, 0, 0.00999999978, 0)
			ItemUIGridLayout.CellSize = UDim2.new(0.134000003/1.16, 0, 0.158000007/1.16, 0)

			MeleeFrame.Name = "MeleeFrame"
			MeleeFrame.Parent = LayoutKaitun
			MeleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			MeleeFrame.BackgroundTransparency = 1.000
			MeleeFrame.Position = UDim2.new(0.421628177, 0, 0.0101651838, 0)
			MeleeFrame.Size = UDim2.new(0.279465377, 0, 0.107478641, 0)

			MeleeUIGridLayout.Name = "MeleeUIGridLayout"
			MeleeUIGridLayout.Parent = MeleeFrame
			MeleeUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			MeleeUIGridLayout.CellPadding = UDim2.new(0.00700000022, 0, 0.0500000007, 0)
			MeleeUIGridLayout.CellSize = UDim2.new(0.189999998, 0, 1, 0)

			FruitFrame.Name = "FruitFrame"
			FruitFrame.Parent = LayoutKaitun
			FruitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			FruitFrame.BackgroundTransparency = 1.000
			FruitFrame.Position = UDim2.new(0.705953836, 0, 0.0101651838, 0)
			FruitFrame.Size = UDim2.new(0.288578361, 0, 0.719186783, 0)

			FruitUIGridLayout.Name = "FruitUIGridLayout"
			FruitUIGridLayout.Parent = FruitFrame
			FruitUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			FruitUIGridLayout.CellPadding = UDim2.new(0.00700000022, 0, 0.00700000022, 0)
			FruitUIGridLayout.CellSize = UDim2.new(0.189999998, 0, 0.150999993, 0)

			Awake.Name = "Awake"
			Awake.Parent = LayoutKaitun
			Awake.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Awake.BackgroundTransparency = 1.000
			Awake.Position = UDim2.new(0.705953836, 0, 0.75857687, 0)
			Awake.Size = UDim2.new(0.284325629, 0, 0.228716642, 0)

			AwakeUIGridLayout.Name = "AwakeUIGridLayout"
			AwakeUIGridLayout.Parent = Awake
			AwakeUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			AwakeUIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
			AwakeUIGridLayout.CellSize = UDim2.new(1, 0, 1, 0)

			Level.Name = "Level"
			Level.Parent = LayoutKaitun
			Level.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Level.BackgroundTransparency = 1
			Level.Position = UDim2.new(0.00703324797, 0, 0.722222209, 0)
			Level.Size = UDim2.new(0.351023018, 0, 0.261728406, 0)

			LevelUIGridLayout.Name = "LevelUIGridLayout"
			LevelUIGridLayout.Parent = Level
			LevelUIGridLayout.FillDirection = Enum.FillDirection.Vertical
			LevelUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			LevelUIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			LevelUIGridLayout.CellPadding = UDim2.new(0.00999999978, 0, 0, 0)
			LevelUIGridLayout.CellSize = UDim2.new(0.349999994, 0, 0.300000012, 0)
			LevelUIGridLayout.StartCorner = Enum.StartCorner.TopRight

			local MainUI = game.Players.LocalPlayer.PlayerGui.Main

			local Inv = require(MainUI.UIController.Inventory)
			local Sprite = require(MainUI.UIController.Inventory.Spritesheets)
			local itemList = getupvalue(Inv.UpdateSort,2)
			local Tempt = MainUI.InventoryContainer.Right.Content.ScrollingFrame.Frame["1"]:Clone()
			local tier = getupvalue(Inv.UpdateSelected,7)

			local function AddItemToGui(itemtype,rarity,parentitem)
				for i,v in pairs(itemList) do
					if v.Visible then
						local Item = Tempt:Clone()
						Item.ItemLine1.Text = v.details.Type == "Material" and v.details.Count or ""
						Item.ItemLine2.Text = v.details.Type
						Item.ItemName.Text = v.DisplayName or v.details.Name
						Item.IconOutline.Visible = false
						Item.Equipped.Visible = false
						Item.OutlineGlow.Visible = true
						Item.OutlineGlow.ImageColor3 = tier[v.details.Rarity][2]
						for Image,list in pairs(Sprite) do
							local FName = v.details.Name:gsub(",",""):gsub(":",""):gsub("'","")
							local IconSize = list[FName.."1.png"]
							local IconOutlineSize = list[FName.."2.png"]
							if IconSize then
								local num = (IconSize[3] and 1 or 2)
								Item.Icon.Image = Image
								Item.Icon.ImageRectOffset = Vector2.new(IconSize[1] / num, IconSize[2] / num);
								Item.Icon.ImageRectSize = Vector2.new(IconSize[3] and 150, IconSize[4] and 150);
								Item.Background.BackgroundColor3 = tier[v.details.Rarity][2]
								Item.Background.UIStroke.Color = tier[v.details.Rarity][2]
								Item.BackgroundShadow.BackgroundColor3 = tier[v.details.Rarity][2]
								Item.BackgroundShadow.UIStroke.Color = tier[v.details.Rarity][2]
							end
							if IconOutlineSize then
								local num = (IconOutlineSize[3] and 1 or 2)
								Item.IconOutline.Image = Image
								Item.IconOutline.Visible = true
								Item.IconOutline.ImageRectOffset = Vector2.new(IconOutlineSize[1] / num, IconOutlineSize[2] / num);
								Item.IconOutline.ImageRectSize = Vector2.new(IconOutlineSize[3] and 150, IconOutlineSize[4] and 150);
							end
						end
						if itemtype == "Blox Fruit" and Item.ItemLine2.Text == "Blox Fruit" then
							Item.Parent = parentitem
						elseif rarity == 0 and Item.ItemLine2.Text == itemtype then
							Item.Parent = parentitem
						elseif Item.ItemLine2.Text == itemtype and v.details.Rarity == rarity then
							Item.Parent = parentitem
						end
					end
				end
			end

			local AllMelee = {
				["Godhuman"] = "10338473987",
				["Superhuman"] = "4831781711",
				["SharkmanKarate"] = "6525157144",
				["DragonTalon"] = "7831677967",
				["ElectricClaw"] = "6866994470",
				["DeathStep"] = "6085350468"
			}

			for i,v in pairs(AllMelee) do
				spawn(function()
					if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..i , true)) == 1 then
						local MeleeUi = Instance.new("ImageLabel")

						MeleeUi.Name = i
						MeleeUi.Parent = MeleeFrame
						MeleeUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						MeleeUi.BackgroundTransparency = 1
						MeleeUi.BorderSizePixel = 0
						MeleeUi.Size = UDim2.new(0.8, 0, 0.8, 0)
						MeleeUi.Image = 'rbxassetid://' .. v
					end
				end)
			end

			AddItemToGui("Sword",4,ItemFrame)

			AddItemToGui("Gun",4,ItemFrame)

			AddItemToGui("Sword",3,ItemFrame)

			AddItemToGui("Gun",3,ItemFrame)

			AddItemToGui("Accessory",3,ItemFrame)

			AddItemToGui("Sword",2,ItemFrame)

			AddItemToGui("Gun",2,ItemFrame)

			AddItemToGui("Accessory",2,ItemFrame)

			local LevelFrame = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level:Clone()
			LevelFrame.Parent = Level

			local BeilFrame = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli:Clone()
			BeilFrame.Parent = Level

			local FragmentsFrame = BeilFrame:Clone()
			FragmentsFrame.Parent = Level
			FragmentsFrame.Text = "ƒ"..formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
			FragmentsFrame.TextColor3 = Color3.fromRGB(177, 121, 255)

			AddItemToGui("Blox Fruit",0,FruitFrame)

			spawn(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
				fask.wait((22/7)/2/2)
				game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true

				fask.wait(1)
				AwakeningToggler = game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:Clone()
				AwakeningToggler.Parent = Awake
				AwakeningToggler.Name = 'Awake'
				game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
			end)
			local ShowStatus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Version:Clone()
			ShowStatus.Parent = LayoutKaitun
			ShowStatus.TextSize = 24
			ShowStatus.TextColor3 = Color3.fromRGB(255, 0, 127)
			ShowStatus.Text = "Now Change : Melee Frame"
			ShowStatus.Visible = true
			local ChangeDragNum = 0
			local ChangeSizeNum = 0
			MakeControl(DraggableFrame,MeleeFrame)

			local ShowStatusXY = game:GetService("Players").LocalPlayer.PlayerGui.Main.Version:Clone()
			ShowStatusXY.Parent = LayoutKaitun
			ShowStatusXY.TextSize = 24
			ShowStatusXY.TextColor3 = Color3.fromRGB(255, 0, 127)
			ShowStatusXY.Text = "Now Change : X Scale"
			ShowStatusXY.Visible = true
			ShowStatusXY.Position = UDim2.new(ShowStatus.Position.X,0, ShowStatus.Position.Y,0)

			UserInputService.InputBegan:Connect(function(io, p)
				if io.KeyCode.Name == "Home" then
					ChangeDragNum = (ChangeDragNum + 1) % 5
					if ChangeDragNum == 0 then
						ShowStatus.Text = "Now Change : Melee Frame"
						MakeControl(DraggableFrame,MeleeFrame)
					elseif ChangeDragNum == 1 then
						ShowStatus.Text = "Now Change : Item Frame"
						MakeControl(DraggableFrame,ItemFrame)
					elseif ChangeDragNum == 2 then
						ShowStatus.Text = "Now Change : Level Frame"
						MakeControl(DraggableFrame,Level)
					elseif ChangeDragNum == 3 then
						ShowStatus.Text = "Now Change : Fruit Frame"
						MakeControl(DraggableFrame,FruitFrame)
					elseif ChangeDragNum == 4 then
						ShowStatus.Text = "Now Change : Awakening Frame"
						MakeControl(DraggableFrame,Awake)
					end
				end
				if io.KeyCode.Name == "PageUp" then
					ChangeSizeNum = (ChangeSizeNum + 1) % 2
					if ChangeSizeNum == 0 then
						ShowStatusXY.Text = "Now Change : X Scale"
						XFALSEYTRUE = false
					elseif ChangeSizeNum == 1 then
						ShowStatusXY.Text = "Now Change : Y Scale"
						XFALSEYTRUE = true
					end
				end
				if io.KeyCode.Name == "End" then
					DraggableFrame.Visible = not DraggableFrame.Visible
					ShowStatus.Visible = DraggableFrame.Visible
					ShowStatusXY.Visible = DraggableFrame.Visible
				end
			end)

			fask.wait(0.5)

			game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Main").Enabled = false
		end
	end
})

Tabs.FindFirst:AddParagraph({
	Title = "First Sea",
	Content = "Finding Items In First Sea"
})

local Get_Saber = Tabs.FindFirst:AddToggle("Auto_Saber", {Title = "Auto Saber", Default = Auto_Saber })
local Get_Pole = Tabs.FindFirst:AddToggle("Auto_Pole", {Title = "Auto Pole v1", Default = Auto_Pole })
local Get_PoleHOP = Tabs.FindFirst:AddToggle("Auto_Pole_Hop", {Title = "Auto Pole v1 [HOP]", Default = Auto_Pole_Hop })
local Get_Frank = Tabs.FindFirst:AddToggle("Auto_Franky", {Title = "Auto Cool Shades", Default = Auto_Franky })
local Get_FrankHOP = Tabs.FindFirst:AddToggle("Auto_Franky_Hop", {Title = "Auto Cool Shades [HOP]", Default = Auto_Franky_Hop })

Get_Saber:OnChanged(function(value)
	Auto_Saber = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)
Get_Pole:OnChanged(function(value)
	Auto_Pole = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)
Get_PoleHOP:OnChanged(function(value)
	Auto_Pole_Hop = value
	Save()
end)
Get_Frank:OnChanged(function(value)
	Auto_Franky = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)
Get_FrankHOP:OnChanged(function(value)
	Auto_Franky_Hop = value
	Save()
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
				if Auto_Farm_Level then
					FarmLv = false
				end
				if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
					if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
						if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
							wait(1) 
						else
							toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
						end
					else
						if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								EquipWeapon("Torch")
								toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
							else
								toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))                 
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
								wait(0.5)
								EquipWeapon("Cup")
								wait(0.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
								wait(0)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
								elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Mob Leader [Lv. 120] [Boss]" then
												repeat wait()
													StartMagnet = true
													NeedAttacking = true
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														wait()
														EquipWeapon(Selected_Weapons)
													end
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
													PosMon = v.HumanoidRootPart.CFrame
													if not Fast_Attack then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
												until v.Humanoid.Health <= 0 or Auto_Saber == false
											end
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
									wait(0.5)
									EquipWeapon("Relic")
									wait(0.5)
									toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
								end
							end
						end
					end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
						toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Saber Expert [Lv. 200] [Boss]" then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								until v.Humanoid.Health <= 0 or Auto_Saber == false
								if v.Humanoid.Health <= 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
								end
								if Auto_Farm_Level then
									FarmLv = true
								end
							end
						end
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Pole then
				if game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
									Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
								elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Farmtween then Farmtween:Stop() end
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								end
							until not Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
							StartMagnet = false
							NeedAttacking = false
						end
					end
				else
					Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,CFrame.new(-7900.66406, 5606.90918, -2267.46436))
					if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						if Questtween then
							Questtween:Stop()
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7900.66406, 5606.90918, -2267.46436)
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Franky then
				if game:GetService("Workspace").Enemies:FindFirstChild("Cyborg [Lv. 675] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Cyborg [Lv. 675] [Boss]" or v.Name == "Cyborg [Lv. 675] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until Auto_Franky == false or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						end
					end
				else
					toTarget(CFrame.new(6130.38086, 9.76513767, 3916.90308, -0.28136304, -1.30420315e-08, -0.959601402, 4.01042088e-09, 1, -1.47669814e-08, 0.959601402, -8.0032887e-09, -0.28136304))
				end
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if (Auto_Pole_Hop and Auto_Pole) and World1 and not game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

spawn(function()
	pcall(function()
		while wait() do
			if (Auto_Franky_Hop and Auto_Franky) and World1 and not game:GetService("ReplicatedStorage"):FindFirstChild("Cyborg [Lv. 675] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Cyborg [Lv. 675] [Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

Tabs.FindSec:AddParagraph({
	Title = "Second Sea",
	Content = "Finding Items In Second Sea"
})

local Farm_Factory = Tabs.FindSec:AddToggle("Auto_Factory_Farm", {Title = "Auto Factory Farm", Default = Auto_Factory_Farm })
local Farm_FactoryHOP = Tabs.FindSec:AddToggle("Auto_Factory_Farm_Hop", {Title = "Auto Factory Farm [HOP]", Default = Auto_Factory_Farm_Hop })

local Dark_Coat = Tabs.FindSec:AddToggle("Auto_Dark_Coat", {Title = "Auto Darkbeard", Default = Auto_Dark_Coat })
local Dark_CoatHOP = Tabs.FindSec:AddToggle("Auto_Dark_Coat_Hop", {Title = "Auto Darkbeard [HOP]", Default = Auto_Dark_Coat_Hop })

local Swan = Tabs.FindSec:AddToggle("Auto_Swan_Glasses", {Title = "Auto Kill Don Swan", Default = Auto_Swan_Glasses })
local SwanHOP = Tabs.FindSec:AddToggle("Auto_Swan_Glasses_Hop", {Title = "Auto Kill Don Swan [HOP]", Default = Auto_Swan_Glasses_Hop })

Farm_Factory:OnChanged(function(value)
	Auto_Factory_Farm = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

Farm_FactoryHOP:OnChanged(function(value)
	Auto_Factory_Farm_Hop = value
	Save()
end)

Dark_Coat:OnChanged(function(value)
	Auto_Dark_Coat = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

Dark_CoatHOP:OnChanged(function(value)
	Auto_Dark_Coat_Hop = value
	Save()
end)

Swan:OnChanged(function(value)
	Auto_Swan_Glasses = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

SwanHOP:OnChanged(function(value)
	Auto_Swan_Glasses_Hop = value
	Save()
end)
---
fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Factory_Farm then
				if game.Workspace.Enemies:FindFirstChild("Core") then
					_G.FactoryCore = true
					if FarmLv then
						Auto_Farm_Level = false
					end
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
							repeat wait()
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
							until not _G.FactoryCore or v.Humanoid.Health <= 0 or Auto_Factory_Farm == false
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
					_G.FactoryCore = true
					if FarmLv then
						Auto_Farm_Level = false
					end
					toTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
				elseif not game.ReplicatedStorage:FindFirstChild("Core") then
					if Auto_Factory_Farm_Hop then
						ServerFunc:NormalTeleport()								
					else
						if FarmLv then
							_G.FactoryCore = false
							Auto_Farm_Level = true
						end
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Dark_Coat then
				if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until Auto_Dark_Coat == false or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						end
					end
				else
					toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
				end
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if (Auto_Dark_Coat_Hop and Auto_Dark_Coat) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Swan_Glasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until not Auto_Swan_Glasses or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						end
					end
				else
					repeat wait()
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
					until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or not Auto_Swan_Glasses
				end
			end
		end)
	end
end)

fask.spawn(function()
	pcall(function()
		while wait() do
			if (Auto_Swan_Glasses_Hop and Auto_Swan_Glasses) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

Tabs.FindSec:AddParagraph({
	Title = "Law Raids Second Sea",
	Content = "Kill Law Buy Chips&More. [Can open multi function]"
})

local BuyLawChip = Tabs.FindSec:AddToggle("Auto_Buy_Law_Chip", {Title = "Auto Buy Microchip Law [Raid]", Default = Auto_Buy_Law_Chip })
local StartLaw = Tabs.FindSec:AddToggle("Auto_Start_Law_Dungeon", {Title = "Auto Start Law [Raid]", Default = Auto_Start_Law_Dungeon })
local KillLaw = Tabs.FindSec:AddToggle("Auto_Start_Law_Dungeon", {Title = "Auto Kill Law [Raid]", Default = Auto_Kill_Law })

BuyLawChip:OnChanged(function(value)
	Auto_Buy_Law_Chip = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

StartLaw:OnChanged(function(value)
	Auto_Start_Law_Dungeon = value
	Save()
	spawn(function()
		while wait() do
			if Auto_Start_Law_Dungeon then
				pcall(function()
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
						fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
					end
				end)
			end
		end
	end)
end)

KillLaw:OnChanged(function(value)
	Auto_Kill_Law = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

spawn(function()
	while wait() do
		if Auto_Buy_Law_Chip then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
				else
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Microchip",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if Auto_Kill_Law then
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if Auto_Kill_Law and v.Name == "Order [Lv. 1250] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat fask.wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until not Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
							StartMagnet = false
							NeedAttacking = false
						end
					end
				end 
			end)
		end
	end
end)

Tabs.FindSec:AddParagraph({
	Title = "Misc",
	Content = "Farming New World Misc Function."
})

local QuestBar = Tabs.FindSec:AddToggle("Auto_Bartilo_Quest", {Title = "Auto Bartilo Quest", Default = Auto_Bartilo_Quest })
local GetReng = Tabs.FindSec:AddToggle("Auto_Rengoku", {Title = "Auto Rengoku", Default = Auto_Rengoku })

QuestBar:OnChanged(function(value)
	Auto_Bartilo_Quest = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

GetReng:OnChanged(function(value)
	Auto_Rengoku = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Bartilo_Quest then
				if game.Players.LocalPlayer.Data.Level.Value >= 850 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Swan Pirate [Lv. 775]" then
										pcall(function()
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then Farmtween:Stop() end
													NeedAttacking = true
													StartMagnet = true
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														wait()
														EquipWeapon(Selected_Weapons)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not Fast_Attack then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												end
											until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo_Quest == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
											StartMagnet = false
											NeedAttacking = false
										end)
									end
								end
							else
								Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
								if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
								end
							end
						else
							Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
							if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Bartilotween then
									Bartilotween:Stop()
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
								local args = {
									[1] = "StartQuest",
									[2] = "BartiloQuest",
									[3] = 1
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
					end
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
					if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Jeremy [Lv. 850] [Boss]" then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then Farmtween:Stop() end
										NeedAttacking = true
										if Auto_Haki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
											wait()
											EquipWeapon(Selected_Weapons)
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not Fast_Attack then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									end
								until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo_Quest == false
								NeedAttacking = false
							end
						end
					else
						Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
						if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if Bartilotween then
								Bartilotween:Stop()
							end
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
						end
					end
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
					if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
						Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
					elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						if Bartilotween then
							Bartilotween:Stop()
						end
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
						wait(.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Rengoku then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
					EquipWeapon("Hidden Key")
					toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not Auto_Rengoku or not v.Parent or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						end
					end
				else
					StartMagnet = false
					NeedAttacking = false
					toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
				end
			end
		end)
	end
end)

Tabs.FindSec:AddParagraph({
	Title = "Ectoplasm",
	Content = "Farming Ectoplasm"
})

local EctoplasmGet = Tabs.FindSec:AddToggle("Auto_Ectoplasm", {Title = "Auto Farm Ectoplasm", Default = Auto_Ectoplasm })

EctoplasmGet:OnChanged(function(value)
	Auto_Ectoplasm = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Ectoplasm then
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
								until not Auto_Ectoplasm or not v.Parent or v.Humanoid.Health <= 0
								StartMagnet = false
								NeedAttacking = false
							end
						end
					end
				else
					StartMagnet = false
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			end
		end)
	end
end)

Tabs.FindThird:AddParagraph({
	Title = "Find Items In Third Sea",
	Content = "Find Items In Third Sea"
})

local BuddySw = Tabs.FindThird:AddToggle("Auto_Buddy_Sword", {Title = "Auto Buddy Sword", Default = Auto_Buddy_Sword })
local BuddySwHOP = Tabs.FindThird:AddToggle("Auto_Buddy_Sword_Hop", {Title = "Auto Buddy Sword [HOP]", Default = Auto_Buddy_Sword_Hop })

local HallowScythe = Tabs.FindThird:AddToggle("Auto_Farm_Boss_Hallow", {Title = "Auto Hallow Scythe", Default = Auto_Farm_Boss_Hallow })
local HallowScytheHOP = Tabs.FindThird:AddToggle("Auto_Farm_Boss_Hallow_Hop", {Title = "Auto Hallow Scythe [HOP]", Default = Auto_Farm_Boss_Hallow_Hop })

local CavenderSw = Tabs.FindThird:AddToggle("Auto_Cavender", {Title = "Auto Cavander", Default = Auto_Cavender })
local CavenderSwHOP = Tabs.FindThird:AddToggle("Auto_Cavender_Hop", {Title = "Auto Cavander [HOP]", Default = Auto_Cavender_Hop })

local TwinHooks = Tabs.FindThird:AddToggle("Auto_TwinHooks", {Title = "Auto Twin Hooks", Default = Auto_TwinHooks })
local TwinHooksHOP = Tabs.FindThird:AddToggle("Auto_Farm_Boss_Hallow_Hop", {Title = "Auto Twin Hooks [HOP]", Default = Auto_Farm_Boss_Hallow_Hop })

local Serpent = Tabs.FindThird:AddToggle("Auto_Serpent_Bow", {Title = "Auto Serpent Bow", Default = Auto_Serpent_Bow })
local SerpentHOP = Tabs.FindThird:AddToggle("Auto_Serpent_Bow_Hop", {Title = "Auto Serpent Bow [HOP]", Default = Auto_Serpent_Bow_Hop })

BuddySw:OnChanged(function(value)
	Auto_Buddy_Sword = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

BuddySwHOP:OnChanged(function(value)
	Auto_Buddy_Sword_Hop = value
	Save()
end)

HallowScythe:OnChanged(function(value)
	Auto_Farm_Boss_Hallow = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

HallowScytheHOP:OnChanged(function(value)
	Auto_Farm_Boss_Hallow_Hop = value
	Save()
end)

CavenderSw:OnChanged(function(value)
	Auto_Cavender = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

CavenderSwHOP:OnChanged(function(value)
	Auto_Cavender_Hop = value
	Save()
end)

TwinHooks:OnChanged(function(value)
	Auto_TwinHooks = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

TwinHooksHOP:OnChanged(function(value)
	Auto_TwinHooks_Hop = value
	Save()
end)

Serpent:OnChanged(function(value)
	Auto_Serpent_Bow = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

SerpentHOP:OnChanged(function(value)
	Auto_Serpent_Bow_Hop = value
	Save()
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Buddy_Sword then
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until not Auto_Buddy_Sword or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						end
					end
				end
			end
		end)
	end
end)	

fask.spawn(function()
	pcall(function()
		while wait() do
			if (Auto_Buddy_Sword_Hop and Auto_Buddy_Sword) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Farm_Boss_Hallow then
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name , "Soul Reaper") then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until v.Humanoid.Health <= 0 or not Auto_Farm_Boss_Hallow
							StartMagnet = false
							NeedAttacking = false
						end
					end
				elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
					repeat toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
					EquipWeapon("Hallow Essence")
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						toTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
					else
						if Auto_Farm_Boss_Hallow_Hop then
							ServerFunc:NormalTeleport()
						end
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Cavender then
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Beautiful Pirate [Lv. 1950] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until not Auto_Cavender or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						end
					end
				else
					toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
				end
			end
		end)
	end
end)

fask.spawn(function()
	pcall(function()
		while wait() do
			if (Auto_Cavender_Hop and Auto_Cavender) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_TwinHooks then
				if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Captain Elephant [Lv. 1875] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until not Auto_TwinHooks or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						end
					end
				else
					toTarget(CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125))
				end
			end
		end)
	end
end)

fask.spawn(function()
	pcall(function()
		while wait() do
			if (Auto_TwinHooks_Hop and Auto_TwinHooks) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

fask.spawn(function()
	while wait() do
		if Auto_Serpent_Bow then
			if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == ("Island Empress [Lv. 1675] [Boss]" or v.Name == "Island Empress [Lv. 1675] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						repeat wait()
							StartMagnet = true
							NeedAttacking = true
							if Auto_Haki then
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end
							end
							if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
								wait()
								EquipWeapon(Selected_Weapons)
							end
							PosMon = v.HumanoidRootPart.CFrame
							if not Fast_Attack then
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
						until not Auto_Serpent_Bow or not v.Parent or v.Humanoid.Health <= 0
						StartMagnet = false
						NeedAttacking = false
					end
				end
			else
				toTarget(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))
			end
		end
	end
end)

fask.spawn(function()
	pcall(function()
		while wait() do
			if (Auto_Serpent_Bow_Hop and Auto_Serpent_Bow) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
				ServerFunc:NormalTeleport()
			end
		end
	end)
end)

-- check status 1

Tabs.FindThird:AddParagraph({
	Title = "Elite Hunter Spawn : 🔴"
})

-- fask.spawn(function()
--     while wait() do 
--         pcall(function()
--             if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
--                 SetELS.Title("Elite Hunter Spawn : 🟢")
--             else
--                 SetELS.Title("Elite Hunter : 🔴")
--             end
--         end)
--     end
-- end)

local KillRipIndra = Tabs.FindThird:AddToggle("Auto_Dark_Dagger", {Title = "Auto Rip Indra", Default = Auto_Dark_Dagger })
local KillElite = Tabs.FindThird:AddToggle("Auto_Farm_Elite_Hunter", {Title = "Auto Farm Elite Hunter", Default = Auto_Farm_Elite_Hunter })
local KillEliteHOP = Tabs.FindThird:AddToggle("Auto_Farm_Elite_Hunter_Hop", {Title = "Auto Farm Elite Hunter [HOP]", Default = Auto_Farm_Elite_Hunter_Hop })
local StopAtChalice = Tabs.FindThird:AddToggle("Auto_Dark_Dagger", {Title = "Stop At God's Chalice", Default = true })

KillRipIndra:OnChanged(function(value)
	Auto_Dark_Dagger = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

KillElite:OnChanged(function(value)
	Auto_Farm_Elite_Hunter = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

KillEliteHOP:OnChanged(function(value)
	Auto_Farm_Elite_Hunter_Hop = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

StopAtChalice:OnChanged(function(value)
	Stop_God_Chalice = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

spawn(function()
	while fask.wait() do
		if Auto_Dark_Dagger then
			if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if Auto_Dark_Dagger and v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						repeat fask.wait()
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
								Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10))
							elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
								if Farmtween then
									Farmtween:Stop()
								end
								EquipWeapon()
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10)
							end
						until not Auto_Dark_Dagger or not v.Parent or v.Humanoid.Health <= 0
						NeedAttacking = false
					end
				end
			elseif game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
				local CFrameBoss = CFrame.new(-5359, 424, -2735)
				if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
					Questtween = toTarget(CFrameBoss)
				elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
					if Questtween then
						Questtween:Stop()
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
				end
			elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
				fask.wait(0.25)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
				fask.wait(0.25)
				ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864))
				ChaliceTween:Wait()
				fask.wait(0.25)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
				fask.wait(0.25)
				ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0, -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106))
				ChaliceTween:Wait()
				fask.wait(0.25)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
				fask.wait(0.25)
				ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065))
				ChaliceTween:Wait()
				fask.wait(0.25)
				EquipWeapon("God's Chalice")
				ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795))
				ChaliceTween:Wait()
				fask.wait(0.5)
				EquipWeapon("God's Chalice")
				fask.wait(0.2)
			elseif not inmyselfss("Holy Torch") and (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
				ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
				ChaliceTween:Wait()
				fask.wait(0.2)
				ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
				ChaliceTween:Wait()
				fask.wait(0.5)
			elseif not inmyselfss("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
						for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
							if (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) then
								TushitaTween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if TushitaTween then
										TushitaTween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								end
							end
						end
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if Auto_Dark_Dagger and (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat fask.wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then
											Farmtween:Stop()
										end
										EquipWeapon(Selected_Weapons)
										NeedAttacking = true
										toAroundTarget(v.HumanoidRootPart.CFrame)
									end
								until not Auto_Dark_Dagger or not v.Parent or v.Humanoid.Health <= 0
								NeedAttacking = false
							end

						end
					else
						local string_1 = "EliteHunter";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1);
					end
				else
					local string_1 = "EliteHunter";
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					Target:InvokeServer(string_1);
				end
			end
		else
			break
		end
	end
end)

spawn(function()
	while wait() do 
		pcall(function()
			if Stop_God_Chalice and Auto_Farm_Elite_Hunter then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
					Auto_Farm_Elite_Hunter = false
					Auto_Farm_Elite_Hunter_Hop = false
				end
			end
		end)
	end
end)

function QuestVis()
	return game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible
end

spawn(function()
	while wait() do
		pcall(function()
			if Auto_Farm_Elite_Hunter then
				--BodyClip()
				--_G.Noclip = true
				local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
					if not QuestVis() then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					elseif QuestVis() then
						if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											NeedAttacking = true
											StartMagnet = true
											if Auto_Haki then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
												wait()
												EquipWeapon(Selected_Weapons)
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not Fast_Attack then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.HumanoidRootPart.Transparency = 1
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
										until Auto_Farm_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
										NeedAttacking = false
										StartMagnet = false
									end
								end 
							end
						else
							if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
								toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
							end
							if game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]")  then
								toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
							end
							if game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]")  then
								toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
							end
						end
					end
				else
					if Stop_God_Chalice and Auto_Farm_Elite_Hunter and Auto_Farm_Elite_Hunter_Hop then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
							--noting
						else
							while wait() do 
								pcall(function()
									ServerFunc:NormalTeleport()
								end)
							end
						end
					else
						if Auto_Farm_Elite_Hunter_Hop then
							while wait() do 
								pcall(function()
									ServerFunc:NormalTeleport()
								end)
							end
						end
					end
				end
			end
		end)
	end
end)

Tabs.FindThird:AddParagraph({
	Title = "Cake & Bone",
	Content = "Auto Farm Cake & Bone GG Easy Noob."
})

-- local Mob_Kill_Cake_Prince = Page2:Label("Total : N/A")

-- fask.spawn(function()
--     while wait(.1) do
--         local caketotal = string.match(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"%d+")
--         if caketotal then
--             Mob_Kill_Cake_Prince:Set("Total : "..tostring(caketotal))
--         else
--             Mob_Kill_Cake_Prince:Set("Katakuri : 🟢")
--         end
--     end
-- end)

local GetQuestCakeandBone = Tabs.FindThird:AddToggle("AutoQuest", {Title = "Auto Quest Cake & Bones", Default = true })
local CakeFarm = Tabs.FindThird:AddToggle("Auto_Cake_Prince", {Title = "Auto Farm Cake Princess", Default = Auto_Cake_Prince })
local BoneFarm = Tabs.FindThird:AddToggle("Farm_Bone", {Title = "Auto Farm Bones", Default = Farm_Bone })

GetQuestCakeandBone:OnChanged(function(value)
	AutoQuest = value
end)

CakeFarm:OnChanged(function(value)
	Auto_Cake_Prince = value
	Save()
	if World3 then
		fask.spawn(LPH_JIT_MAX(function()
			while fask.wait() do
				if Auto_Cake_Prince then
					xpcall(function()
						local GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
						local GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
						local MyLevel = game.Players.LocalPlayer.Data.Level.Value
						local LevelFarm = 1

						local Monster = "Cookie Crafter [Lv. 2200]"
						local NameQuest = "CakeQuest1"

						local LevelQuest = 1
						local NameCheckQuest = "Cookie Crafter"

						local CFrameMyMon = CFrame.new(-2365, 38, -12099)

						local CFrameQuest = CFrame.new(-2020, 38, -12025)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						if not string.find(GetQuestTitle.Text, NameCheckQuest) and AutoQuest == true then _F("AbandonQuest"); end
						if GetQuest.Visible == false and AutoQuest == true then
							NeedAttacking = false
							StartMagnet = false
							Questtween = toTarget(CFrameQuest)
							if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Questtween then Questtween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
								fask.wait(0.95)
								_F("StartQuest", NameQuest, LevelQuest)
							end
						elseif GetQuest.Visible == true or AutoQuest == false then
							if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if Auto_Cake_Prince and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat fask.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													StartMagnet = true
													NeedAttacking = true
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														EquipWeapon(Selected_Weapons)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not Fast_Attack then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,25))
												end
											until not Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
											NeedAttacking = false
										end
									end
								else
									if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
										NeedAttacking = false
										if tween then tween:Cancel() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053) * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
										fask.wait(.1)
									end
								end
							else
								if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if 0 and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat fask.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then Farmtween:Stop() end
													StartMagnet = true
													NeedAttacking = true
													StartMagnet = true
													NeedAttacking = true
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														EquipWeapon(Selected_Weapons)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not Fast_Attack then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,25))
												end
											until not Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
											NeedAttacking = false
											StartMagnet = false
										end
									end
								else
									StartMagnet = false
									NeedAttacking = false
									Questtween = toTarget(CFrame.new(-2077, 252, -12373).Position,CFrame.new(-2077, 252, -12373))
									if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
									end
								end
							end
						end
					end,print)
				else
					--break
				end
			end
		end))
	end
end)

BoneFarm:OnChanged(function(value)
	Farm_Bone = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()	
	fask.spawn(LPH_JIT_MAX(function()
		while fask.wait() do
			xpcall(function()
				if Farm_Bone then
					local GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
					local GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
					local MyLevel = game.Players.LocalPlayer.Data.Level.Value
					local LevelFarm = 1

					local Monster = "Living Zombie [Lv. 2000]"
					local NameQuest = "HauntedQuest1"

					local LevelQuest = 2
					local NameCheckQuest = "Living Zombie"

					local CFrameMyMon = CFrame.new(-10144, 140, 5932)

					local CFrameQuest = CFrame.new(-9482, 142, 5567)
				
					if not string.find(GetQuestTitle.Text, NameCheckQuest) and AutoQuest == true then _F("AbandonQuest"); end
					if GetQuest.Visible == false and AutoQuest == true then
						NeedAttacking = false
						StartMagnet = false
						Questtween = toTarget(CFrameQuest)
						if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if Questtween then Questtween:Stop() end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
							fask.wait(0.1)
							_F("StartQuest", NameQuest, LevelQuest)
						end
					elseif GetQuest.Visible == true or AutoQuest == false then
						if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat fask.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10))
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
												if Farmtween then
													Farmtween:Stop()
												end
												StartMagnet = true
												NeedAttacking = true
												if Auto_Haki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
													EquipWeapon(Selected_Weapons)
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not Fast_Attack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.Transparency = 1
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toAroundTarget(v.HumanoidRootPart.CFrame)
											end
										until not Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										NeedAttacking = false
									end
								end
							end
						end
					else
						toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
					end
				end
			end,print)
		end
	end))
end)

Tabs.FindThird:AddParagraph({
	Title = "Yama & Tushita",
	Content = "Farm Yama and Tushita Quest"
})

local TushitaQuest = Tabs.FindThird:AddToggle("AutoTushita", {Title = "Auto Tushita", Default = AutoTushita })
local TushitaQuestHOP = Tabs.FindThird:AddToggle("AutoTushitaHop", {Title = "Auto Tushita [HOP]", Default = AutoTushitaHop })

local YamaQuest = Tabs.FindThird:AddToggle("AutoYama", {Title = "Auto Yama", Default = AutoYama })
local YamaQuestHOP = Tabs.FindThird:AddToggle("AutoYamaHOP", {Title = "Auto Yama [HOP]", Default = AutoYamaHOP })

TushitaQuest:OnChanged(function(starts)
	if World3 then
		AutoTushita = starts
		Save()
		spawn(function()
			while fask.wait() do
				if AutoTushita then
					if game.Players.localPlayer.Data.Level.Value > 2000 and (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White")) or CheckButtonColorOpen() or not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") or (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
						if (game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")) and not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
							if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
								if RipTween then RipTween:Stop() end
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if AutoTushita and v.Name == "Longma [Lv. 2000] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat fask.wait()
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												EquipWeapon(Selected_Weapons)
												if Farmtween then Farmtween:Stop() end
												NeedAttacking = true
												toAroundTarget(v.HumanoidRootPart.CFrame)
											end
										until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
										NeedAttacking = false
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
								RipTween = toTarget(CFrame.new(-10171.7051, 406.981995, -9552.31738))
								NeedAttacking = false
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
							ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
							ChaliceTween:Wait()
							fask.wait(0.5)
							EquipWeapon("Holy Torch")
							fask.wait(0.2)
							HolyTween = toTarget(CFrame.new(-10752.7695, 412.229523, -9366.36328))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-11673.4111, 331.749023, -9474.34668))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-12133.3389, 519.47522, -10653.1904))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-13336.5, 485.280396, -6983.35254))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-13487.4131, 334.84845, -7926.34863))
							HolyTween:Wait()
							fask.wait(1)
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
							fask.wait(0.25)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
							fask.wait(0.25)
							ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864))
							ChaliceTween:Wait()
							fask.wait(0.25)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
							fask.wait(0.25)
							ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0, -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106))
							ChaliceTween:Wait()
							fask.wait(0.25)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
							fask.wait(0.25)
							ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065))
							ChaliceTween:Wait()
							fask.wait(0.25)
							EquipWeapon("God's Chalice")
							ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795))
							ChaliceTween:Wait()
							fask.wait(0.5)
							EquipWeapon("God's Chalice")
							fask.wait(0.2)
						elseif not inmyselfss("Holy Torch") and (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
							ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
							ChaliceTween:Wait()
							fask.wait(0.2)
							ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
							ChaliceTween:Wait()
							fask.wait(0.5)
						elseif not inmyselfss("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) then
											TushitaTween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
												if TushitaTween then
													TushitaTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if AutoTushita and (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat fask.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(Selected_Weapons)
													NeedAttacking = true
													toAroundTarget(v.HumanoidRootPart.CFrame)
												end
											until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
											NeedAttacking = false
										end

									end
								else
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end
				else
					break
				end
			end
		end)
	end
end)

TushitaQuestHOP:OnChanged(function(starts)
	if World3 then
		AutoTushita = starts
		AutoTushitaHop = starts
		Save()
		spawn(function()
			while fask.wait() do
				if AutoTushitaHop then
					if game.Players.localPlayer.Data.Level.Value > 2000 and (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White")) or not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") or (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
						if AutoTushitaHop and not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") and not game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") and not game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
							ServerFunc:TeleportFast()
						elseif (game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")) and game:GetService("Workspace").Map.Turtle.TushitaGate:FindFirstChild("TushitaGate").Transparency == 1 then
							if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
								if RipTween then RipTween:Stop() end
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if AutoTushita and v.Name == "Longma [Lv. 2000] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat fask.wait()
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												EquipWeapon(Selected_Weapons)
												if Farmtween then Farmtween:Stop() end
												NeedAttacking = true
												toAroundTarget(v.HumanoidRootPart.CFrame)
											end
										until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
										NeedAttacking = false
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
								RipTween = toTarget(CFrame.new(-10171.7051, 406.981995, -9552.31738))
								NeedAttacking = false
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
							ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
							ChaliceTween:Wait()
							fask.wait(0.5)
							EquipWeapon("Holy Torch")
							fask.wait(0.2)
							HolyTween = toTarget(CFrame.new(-10752.7695, 412.229523, -9366.36328))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-11673.4111, 331.749023, -9474.34668))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-12133.3389, 519.47522, -10653.1904))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-13336.5, 485.280396, -6983.35254, 0.912677109))
							HolyTween:Wait()
							fask.wait(0.4)
							HolyTween = toTarget(CFrame.new(-13487.4131, 334.84845, -7926.34863))
							HolyTween:Wait()
							fask.wait(1)
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
							fask.wait(0.25)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
							fask.wait(0.25)
							ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864))
							ChaliceTween:Wait()
							fask.wait(0.25)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
							fask.wait(0.25)
							ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0, -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106))
							ChaliceTween:Wait()
							fask.wait(0.25)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
							fask.wait(0.25)
							ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065))
							ChaliceTween:Wait()
							fask.wait(0.25)
							EquipWeapon("God's Chalice")
							ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795))
							ChaliceTween:Wait()
							fask.wait(0.5)
							EquipWeapon("God's Chalice")
							fask.wait(0.2)
							ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
							ChaliceTween:Wait()
							fask.wait(0.2)
							ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
							ChaliceTween:Wait()
							fask.wait(0.5)
						elseif not inmyselfss("Holy Torch") and (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
							ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
							ChaliceTween:Wait()
							fask.wait(0.2)
							ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
							ChaliceTween:Wait()
							fask.wait(0.5)
						elseif not inmyselfss("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if string.find(v.Name,"Diablo") then
											TushitaTween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
												if TushitaTween then
													TushitaTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end
										if string.find(v.Name,"Urban") then
											TushitaTween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
												if TushitaTween then
													TushitaTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end
										if string.find(v.Name,"Deandre") then
											TushitaTween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
												if TushitaTween then
													TushitaTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if AutoTushita and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat fask.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(Selected_Weapons)
													NeedAttacking = true
													toAroundTarget(v.HumanoidRootPart.CFrame)
												end
											until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
											NeedAttacking = false
										end
										if AutoTushita and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat fask.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(Selected_Weapons)
													NeedAttacking = true
													toAroundTarget(v.HumanoidRootPart.CFrame)
												end
											until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
											NeedAttacking = false
										end
										if AutoTushita and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat fask.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(Selected_Weapons)
													NeedAttacking = true
													toAroundTarget(v.HumanoidRootPart.CFrame)
												end
											until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
											NeedAttacking = false
										end
									end
								else
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						elseif AutoTushitaHop then
							ServerFunc:TeleportFast()
						end
					elseif not (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
						ServerFunc:NormalTeleport()
					end
				else
					break
				end
			end
		end)
	end
end)

YamaQuest:OnChanged(function(starts)
	if World3 then
		AutoYama = starts
		Save()
		spawn(function()
			while fask.wait() do
				if AutoYama then
					if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter", "Progress") < 30 then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
								for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
									if (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) then
										YemaTween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
											if YemaTween then
												YemaTween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										end
									end
								end
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if AutoYama and (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat fask.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(Selected_Weapons)
												NeedAttacking = true
												toAroundTarget(v.HumanoidRootPart.CFrame)
											end
										until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
										NeedAttacking = false
									end

								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						else
							if AutoYamaHOP and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
								ServerFunc:TeleportFast()
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					else
						TweenYema = toTarget(game.Workspace.Map.Waterfall.SealedKatana.Handle.Position,game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
						if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if TweenYema then
								TweenYema:Stop()
							end
							if game.Workspace.Enemies:FindFirstChild("Ghost [Lv. 1500]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if AutoYama and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ghost [Lv. 1500]" then
										repeat fask.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(Selected_Weapons)
												NeedAttacking = true
												toAroundTarget(v.HumanoidRootPart.CFrame)
											end
										until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
										NeedAttacking = false
									end
								end
							else
								if TweenYema then
									TweenYema:Stop()
								end
								fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
							end
						end
					end
				else
					break
				end
			end
		end)
	end
end)

YamaQuestHOP:OnChanged(function(starts)
	if World3 then
		AutoYama = starts
		AutoYamaHOP = starts
		Save()
		spawn(function()
			while fask.wait() do
				if AutoYama then
					if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter", "Progress") < 30 then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
								for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
									if (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) then
										YemaTween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
											if YemaTween then
												YemaTween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										end
									end

								end
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if AutoYama and (string.find(v.Name,"Diablo") or string.find(v.Name,"Urban") or string.find(v.Name,"Deandre")) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat fask.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(Selected_Weapons)
												NeedAttacking = true
												toAroundTarget(v.HumanoidRootPart.CFrame)
											end
										until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
										NeedAttacking = false
									end

								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						else
							if AutoYamaHOP and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
								ServerFunc:TeleportFast()
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					else
						TweenYema = toTarget(game.Workspace.Map.Waterfall.SealedKatana.Handle.Position,game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
						if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if TweenYema then
								TweenYema:Stop()
							end
							if game.Workspace.Enemies:FindFirstChild("Ghost [Lv. 1500]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if AutoYama and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ghost [Lv. 1500]" then
										repeat fask.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(Selected_Weapons)
												NeedAttacking = true
												toAroundTarget(v.HumanoidRootPart.CFrame)
											end
										until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
										NeedAttacking = false
									end
								end
							else
								if TweenYema then
									TweenYema:Stop()
								end
								fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
							end
						end
					end
				else
					break
				end
			end
		end)
	end
end)

Tabs.FindThird:AddParagraph({
	Title = "Auto Cursed Dual Katana",
	Content = "Auto Yama + Tushita = Cursed Dual Katana"
})

local Tushita2Quest = Tabs.FindThird:AddToggle("Tushita_Quest", {Title = "Auto Finish Tushita Quest", Default = Tushita_Quest })
local Yama2Quest = Tabs.FindThird:AddToggle("Yama_Quest", {Title = "Auto Finish Yama Quest", Default = Yama_Quest })

local GetCursedDualQuest = Tabs.FindThird:AddToggle("Get_Cursed", {Title = "Auto Get Cursed Dual Katana", Default = Get_Cursed })

Tushita2Quest:OnChanged(function(value)
	Tushita_Quest = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

Yama2Quest:OnChanged(function(value)
	Yama_Quest = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

GetCursedDualQuest:OnChanged(function(value)
	Get_Cursed = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

spawn(function()
	while fask.wait() do
		pcall(function()
			if Tushita_Quest then
				-- BodyClip()
				--_G.Noclip = true
				if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
					wait(.7)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
					wait(.3)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
					warn("กำลังเปิดเปิดประตู...")
				else
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then
						if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -3 then
							repeat wait() toTarget(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)) until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
							if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"),"Check")
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"))
							end
							wait(1)
							repeat wait() toTarget(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)) until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
							if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"),"Check")
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"))
							end
							wait(1)
							repeat wait() toTarget(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)) until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
							if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"),"Check")
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"))
							end
							fask.wait(1)
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -4 then
							if game:GetService("Workspace").Enemies:FindFirstChildOfClass("Model") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude <= 1000 then
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
											repeat fask.wait()
												if Auto_Haki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
													wait()
													EquipWeapon(Selected_Weapons)
												end
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false 
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												NeedAttacking = true 
												PosTHQuest = v.HumanoidRootPart.CFrame
												MagnetTHQuest = true
												NameTH = v.Name
											until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 2
											NeedAttacking = false
										end
									else
										toTarget(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
									end
								end
							else
								toTarget(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
							end
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -5 then
							---
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat fask.wait()
												if Auto_Haki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
													wait()
													EquipWeapon(Selected_Weapons)
												end                                                
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false 
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												NeedAttacking = true
											until not Tushita_Quest or not v.Parent or v.Humanoid.Health <= 0 or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
											NeedAttacking = false
										end
									end
								end
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") and game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").Humanoid.Health > 0 then
								toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * Distance_Auto_Farm)
							else
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
									for i,v in pairs(game:GetService("Workspace").Map.HeavenlyDimension.Exit:GetChildren()) do
										Ex = i
									end
									if Ex == 2 then
										repeat fask.wait()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
										until not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
									end
									NeedAttacking = true
									repeat fask.wait()
										repeat fask.wait() 
											toTarget(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625)) 
											for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
												if v:IsA("ProximityPrompt") then
													fireproximityprompt(v)
												end
											end

										until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
										wait(2)
										_G.DoneT1 = true
									until not Tushita_Quest or _G.DoneT1
									repeat fask.wait()
										repeat fask.wait()
											toTarget(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875)) 
											for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
												if v:IsA("ProximityPrompt") then
													fireproximityprompt(v)
												end
											end
										until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
										wait(2)
										_G.DoneT2 = true
									until _G.DoneT2 or Tushita_Quest == false
									repeat wait()
										repeat fask.wait() 
											toTarget(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375)) 
											for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
												if v:IsA("ProximityPrompt") then
													fireproximityprompt(v)
												end
											end
										until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
										wait(2)
										_G.DoneT3 = true
									until _G.DoneT3 or Tushita_Quest == false
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08, 0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 then
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
												repeat fask.wait()
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														wait()
														EquipWeapon(Selected_Weapons)
													end        
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false 
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
													NeedAttacking = true
													PosTHQuest = v.HumanoidRootPart.CFrame
													MagnetTHQuest = true
													NameTH = v.Name
												until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent
												NeedAttacking = false
											end
										else
											MagnetTHQuest = false
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)

PosMsList = {
	["Pirate Millionaire [Lv. 1500]"] = CFrame.new(-426, 176, 5558),
	["Pistol Billionaire [Lv. 1525]"] = CFrame.new(-83, 127, 6097),
	["Dragon Crew Warrior [Lv. 1575]"] = CFrame.new(6320, 52, -1282),
	["Dragon Crew Archer [Lv. 1600]"] = CFrame.new(6625, 378, 244),
	["Female Islander [Lv. 1625]"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
	["Giant Islander [Lv. 1650]"] = CFrame.new(4902, 670, 39), 
	["Marine Commodore [Lv. 1700]"] = CFrame.new(2401, 123, -7589),
	["Marine Rear Admiral [Lv. 1725]"] = CFrame.new(3588, 229, -7085),
	["Fishman Raider [Lv. 1775]"] = CFrame.new(-10941, 332, -8760),
	["Fishman Captain [Lv. 1800]"] = CFrame.new(-11035, 332, -9087),
	["Forest Pirate [Lv. 1825]"] = CFrame.new(-13446, 413, -7760),
	["Mythological Pirate [Lv. 1850]"] = CFrame.new(-13510, 584, -6987),
	["Jungle Pirate [Lv. 1900]"] = CFrame.new(-11778, 426, -10592),
	["Musketeer Pirate [Lv. 1925]"] = CFrame.new(-13282, 496, -9565),
	["Reborn Skeleton [Lv. 1975]"] = CFrame.new(-8764, 142, 5963),
	["Living Zombie [Lv. 2000]"] = CFrame.new(-10227, 421, 6161),
	["Demonic Soul [Lv. 2025]"] = CFrame.new(-9579, 6, 6194),
	["Posessed Mummy [Lv. 2050]"] = CFrame.new(-9579, 6, 6194),
	["Peanut Scout [Lv. 2075]"] = CFrame.new(-1993, 187, -10103),
	["Peanut President [Lv. 2100]"] = CFrame.new(-2215, 159, -10474),
	["Ice Cream Chef [Lv. 2125]"] = CFrame.new(-877, 118, -11032),
	["Ice Cream Commander [Lv. 2150]"] = CFrame.new(-877, 118, -11032),
	["Cookie Crafter [Lv. 2200]"] = CFrame.new(-2021, 38, -12028),
	["Cake Guard [Lv. 2225]"] = CFrame.new(-2024, 38, -12026),
	["Baking Staff [Lv. 2250]"] = CFrame.new(-1932, 38, -12848),
	["Head Baker [Lv. 2275]"] = CFrame.new(-1932, 38, -12848),
	["Cocoa Warrior [Lv. 2300]"] = CFrame.new(95, 73, -12309),
	["Chocolate Bar Battler [Lv. 2325]"] = CFrame.new(647, 42, -12401),
	["Sweet Thief [Lv. 2350]"] = CFrame.new(116, 36, -12478),
	["Candy Rebel [Lv. 2375]"] = CFrame.new(47, 61, -12889),
	["Ghost [Lv. 1500]"] = CFrame.new(5251, 5, 1111)
}

fask.spawn(function()
	while fask.wait() do
		pcall(function()
			if Yama_Quest then
				--BodyClip()
				--_G.Noclip = true 
				if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then                  
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
				else
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then                        
						if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -3 then
							repeat fask.wait()
								if not game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
									toTarget(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
								else
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Forest Pirate [Lv. 1825]" then
											PosMon = v.HumanoidRootPart.CFrame
											spawn(function()
												BringMobs(PosMon,v.Name)
											end)
											toTarget(game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]").HumanoidRootPart.CFrame)
										end
									end
								end
							until tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 1 or not Yama_Quest
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -4 then
							for ix,HitMon in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
								for NameMonHaze, CFramePos in pairs(PosMsList) do
									if string.find(NameMonHaze,HitMon.Name) and HitMon.Value > 0 then
										if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
													repeat fask.wait()
														if Auto_Haki then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
															wait()
															EquipWeapon(Selected_Weapons)
														end
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														NeedAttacking = true
														PosMon = v.HumanoidRootPart.CFrame
														spawn(function()
															BringMobs(PosMon,v.Name)
														end)
													until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
												end
											end
										else
											repeat wait()
												if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
													for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
															repeat fask.wait()
																if Auto_Haki then
																	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																	end
																end
																if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
																	wait()
																	EquipWeapon(Selected_Weapons)
																end
																v.HumanoidRootPart.CanCollide = false
																v.Head.CanCollide = false
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
																NeedAttacking = true
																PosMon = v.HumanoidRootPart.CFrame
																spawn(function()
																	BringMobs(PosMon,v.Name)
																end)
															until not v:FindFirstChild("HazeESP") or not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
														end
													end
												else
													if (CFramePos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
														toTarget(CFramePos)
													else
														game.Players.LocalPlayer.Character.Humanoid.Health = die
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramePos
														wait(.2)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
													end
												end
											until not Yama_Quest
										end
									end
								end
							end
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
							if game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
									for gg,ez in pairs(game:GetService("Workspace").Map.HellDimension.Exit:GetChildren()) do
										if tonumber(gg) == 2 then
											repeat fask.wait()
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Exit.CFrame
											until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
										end
									end
									NeedAttacking = true
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end      
									if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) ~= 3 then
										repeat fask.wait()
											repeat fask.wait() 
												toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.Particles.CFrame) 
												for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
													if v:IsA("ProximityPrompt") then
														fireproximityprompt(v)
													end
												end
											until (game:GetService("Workspace").Map.HellDimension.Torch1.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
											wait(2)
											_G.T1Yama = true
										until not Yama_Quest or _G.T1Yama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
										repeat fask.wait()
											repeat fask.wait()
												toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.Particles.CFrame) 
												for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
													if v:IsA("ProximityPrompt") then
														fireproximityprompt(v)
													end
												end
											until (game:GetService("Workspace").Map.HellDimension.Torch2.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
											wait(2)
											_G.T2Yama = true
										until _G.T2Yama or Yama_Quest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
										repeat wait()
											repeat fask.wait() 
												toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.Particles.CFrame) 
												for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
													if v:IsA("ProximityPrompt") then
														fireproximityprompt(v)
													end
												end
											until (game:GetService("Workspace").Map.HellDimension.Torch3.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
											wait(2)
											_G.T3Yama = true
										until _G.T3Yama or Yama_Quest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
									end
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v:FindFirstChild("HumanoidRootPart").Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 300 then
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
												repeat fask.wait()
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														wait()
														EquipWeapon(Selected_Weapons)
													end                                                    
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
													NeedAttacking = true
													PosMon = v.HumanoidRootPart.CFrame
													spawn(function()
														BringMobs(PosMon,v.Name)
													end)
												until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
												NeedAttacking = false
											end
										else
											MagnetYamaQuest = false
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
	while fask.wait() do
		pcall(function()
			if Yama_Quest then
				if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
					if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude > 1000 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if string.find(v.Name , "Soul Reaper") then
									repeat fask.wait()
										toTarget(v.HumanoidRootPart.CFrame)
									until v.Humanoid.Health <= 0 or not Yama_Quest or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3 or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000)
								end
							end
						elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
							repeat toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) fask.wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
							EquipWeapon("Hallow Essence")
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").Humanoid.Health > 0 then
							toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame)
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") < 50 and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and not game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
												repeat fask.wait()
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														wait()
														EquipWeapon(Selected_Weapons)
													end                                                           
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
													NeedAttacking = true
													PosMon = v.HumanoidRootPart.CFrame
													spawn(function()
														BringMobs(PosMon,v.Name)
													end)
												until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent
												NeedAttacking = false
											end
										end
									end
								else
									MagnetWaitY = false
									toTarget(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
							end
						end
					end
				end
			end
		end)
	end
end)
fask.spawn(function()
	while fask.wait() do
		pcall(function()
			if Get_Cursed then
				--BodyClip()
				--_G.Noclip = true
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
				if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat fask.wait()
									if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
										EquipWeapon("Yama")
									elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
										EquipWeapon("Tushita")
									else
										warn("Yama or Tushita Only!!!")
										wait(5)
									end
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									NeedAttacking = true 
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not Get_Cursed or not v.Parent or v.Humanoid.Health <= 0
								NeedAttacking = false
							end
						end
					end
				else
					toTarget(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
					fask.wait(.5)
					toTarget(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
				end
			end
		end)
	end
end)

Tabs.FindThird:AddParagraph({
	Title = "Auto Soul Guitar",
	Content = "Auto Soul Guitar Fully [Maybe]"
})

local GetSoulGuitar = Tabs.FindThird:AddToggle("Auto_Quest_Soul_Guitar", {Title = "Auto Soul Guitar", Default = Auto_Quest_Soul_Guitar })

GetSoulGuitar:OnChanged(function(value)
	Auto_Quest_Soul_Guitar = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

LPH_JIT_MAX(function()
	fask.spawn(function() -- Bring Mob Function
		while wait() do
			if StartSoulGuitarMagnt then 
				pcall(function() 
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Living Zombie [Lv. 2000]" then 
							v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
							v.Head.CanCollide = false
							v.Humanoid.Sit = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild('Animator') then
								v.Humanoid:FindFirstChild('Animator'):Destroy() 
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end    
				end)
			end
		end
	end)
end)()

fask.spawn(function()
	while wait() do
		pcall(function()
			if GetWeaponInventory("Soul Guitar") == false then
				if Auto_Quest_Soul_Guitar then
					if GetMaterial("Bones") >= 500 and GetMaterial("Ectoplasm") >= 250 and GetMaterial("Dark Fragment") >= 1 then
						if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
							if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
								local Remotes = game.ReplicatedStorage:WaitForChild("Remotes");
								local __CommF = Remotes:WaitForChild("CommF_");
								local GuitarProgress = __CommF:InvokeServer("GuitarPuzzleProgress", "Check");
								if not GuitarProgress then 
									local gravestoneEvent = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
									if gravestoneEvent == true then
										__CommF:InvokeServer("gravestoneEvent", 2, true);
									else 
										if Auto_Quest_Soul_Guitar_Hop then
											ServerFunc:NormalTeleport()
										end
									end;
								end
								if GuitarProgress then 
									local Swamp = GuitarProgress.Swamp;
									local Gravestones = GuitarProgress.Gravestones;
									local Ghost = GuitarProgress.Ghost;
									local Trophies = GuitarProgress.Trophies;
									local Pipes = GuitarProgress.Pipes;
									local CraftedOnce = GuitarProgress.CraftedOnce;
									if Swamp and Gravestones and Ghost and Trophies and Pipes then 
										Auto_Quest_Soul_Guitar = false
									end
									if not Swamp then 
										repeat wait() 
											Tween(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0,30,0))
										until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Living Zombie [Lv. 2000]" then
												if v:FindFirstChild('Humanoid') then 
													if v:FindFirstChild('HumanoidRootPart') then 
														if game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 2000 then 
															repeat wait() 
																if Auto_Haki then
																	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																	end
																end
																if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
																	wait()
																	EquipWeapon(Selected_Weapons)
																end
																if not Fast_Attack then
																	game:GetService'VirtualUser':CaptureController()
																	game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																end
																v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																v.HumanoidRootPart.Transparency = 1
																v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
																StartSoulGuitarMagnt = true
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,15))
															until not v.Parent or v.Humanoid.Health <= 0 or not  v:FindFirstChild('HumanoidRootPart') or not v:FindFirstChild('Humanoid') or not Auto_Quest_Soul_Guitar
															StartSoulGuitarMagnt = false
														end
													end
												end
											end
										end   
									end
									wait(1)
									if Swamp and not Gravestones then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Gravestones");
									end
									wait(1)
									if Swamp and  Gravestones and not Ghost then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
									end 
									wait(1)
									if  Swamp and  Gravestones and Ghost and not Trophies then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Trophies");
									end
									wait(1)
									if  Swamp and  Gravestones and Ghost and Trophies and not Pipes then 
										__CommF:InvokeServer("GuitarPuzzleProgress", "Pipes");
									end
								end
							else
								if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
									print("Go to Grave")
									toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
								elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
									print("Wait Next Night")
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
								end
							end
						else
							toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
						end
					else
						if GetMaterial("Ectoplasm") <= 250 then
							if World2 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													StartMagnet = true
													NeedAttacking = true
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														wait()
														EquipWeapon(Selected_Weapons)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not Fast_Attack then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												until not Auto_Quest_Soul_Guitar or not v.Parent or v.Humanoid.Health <= 0
												StartMagnet = false
												NeedAttacking = false
											end
										end
									end
								else
									StartMagnet = false
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						elseif GetMaterial("Dark Fragment") < 1 then
							if World2 then
								if game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Darkbeard [Lv. 1000] [Raid Boss]" and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												NeedAttacking = true
												if Auto_Haki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
													wait()
													EquipWeapon(Selected_Weapons)
												end
												if not Fast_Attack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.Transparency = 1
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
											until Auto_Quest_Soul_Guitar or v.Humanoid.Health <= 0
										end
									end
								else
									toTarget(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						elseif GetMaterial("Bones") <= 500 then
							if World3 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													StartMagnet = true
													NeedAttacking = true
													if Auto_Haki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
														wait()
														EquipWeapon(Selected_Weapons)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not Fast_Attack then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
												until not Auto_Quest_Soul_Guitar or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												StartMagnet = false
												NeedAttacking = false
											end
										end
									end
								else
									toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
							end
						end
					end
				end
			end
		end)
	end
end)


Tabs.FindThird:AddParagraph({
	Title = "Miscellaneous",
	Content = "miscellaneous function in tab"
})

local Holy_Torch = Tabs.FindThird:AddToggle("Auto_Holy_Torch", {Title = "Auto Holy Torch", Default = Auto_Holy_Torch })
local PiratesRaid = Tabs.FindThird:AddToggle("PirateRaid", {Title = "Auto Farm Pirates Raid", Default = PirateRaid })

local RainbowHaki = Tabs.FindThird:AddToggle("Auto_Rainbow_Haki", {Title = "Auto Rainbow Haki", Default = Auto_Rainbow_Haki })
local MusketeerHat = Tabs.FindThird:AddToggle("Auto_Musketeer_Hat", {Title = "Auto Musketeer Hat", Default = Auto_Musketeer_Hat })

local ObservationV2 = Tabs.FindThird:AddToggle("Auto_Observation_V2", {Title = "Auto Observation V2", Default = Auto_Observation_V2 })
local UnJiRaid = Tabs.FindThird:AddToggle("Auto_Dough_V2", {Title = "Auto Unlock Dough Dungeon", Default = Auto_Dough_V2 })
local UnPhiRaid = Tabs.FindThird:AddToggle("AutoFinishPhoenixDun", {Title = "Auto Unlock Phoenix Dungeon", Default = AutoFinishPhoenixDun })

Holy_Torch:OnChanged(function(value)
	Auto_Holy_Torch = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

PiratesRaid:OnChanged(function(value)
	PirateRaid = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

RainbowHaki:OnChanged(function(value)
	Auto_Rainbow_Haki = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

MusketeerHat:OnChanged(function(value)
	Auto_Musketeer_Hat = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

ObservationV2:OnChanged(function(value)
	Auto_Observation_V2 = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

UnJiRaid:OnChanged(function(value)
	Auto_Dough_V2 = value
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	Save()
end)

UnPhiRaid:OnChanged(function(value)
	AutoFinishPhoenixDun = value
end)

fask.spawn(function()
	while wait() do
		if Auto_Holy_Torch then
			if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Holy Torch") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
				print("You dont have torch")			
			else
				repeat toTarget(CFrame.new(-10752, 417, -9366)) wait() until not Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
				wait(1)
				repeat toTarget(CFrame.new(-11672, 334, -9474)) wait() until not Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
				wait(1)
				repeat toTarget(CFrame.new(-12132, 521, -10655)) wait() until not Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
				wait(1)
				repeat toTarget(CFrame.new(-13336, 486, -6985)) wait() until not Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
				wait(1)
				repeat toTarget(CFrame.new(-13489, 332, -7925)) wait() until not Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
			end
		else
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			break
		end
	end
end)

spawn(function ()
	while wait() do 
		pcall(function()
			if PirateRaid then
				local PiratesWaitPos = Vector3.new(-4999.45, 318.181, -3010.54)
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PiratesWaitPos).magnitude > 1000 then
					toTarget(PiratesWaitPos)
				else
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 750 then
							repeat wait()
								StartMagnet = true
								NeedAttacking = true
								if Auto_Haki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
									wait()
									EquipWeapon(Selected_Weapons)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not Fast_Attack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
							until not PirateRaid or not v.Parent or v.Humanoid.Health <= 0
							StartMagnet = false
							NeedAttacking = false
						else
							toTarget(PiratesWaitPos)
						end
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Rainbow_Haki then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					-- [[ Fast ]]
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Stone [Lv. 1550] [Boss]" then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)												
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								StartMagnet = false
								NeedAttacking = false
							end
						end
					else
						toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Island Empress [Lv. 1675] [Boss]" then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								StartMagnet = false
								NeedAttacking = false
							end
						end
					else
						toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								StartMagnet = false
								NeedAttacking = false
							end
						end
					else
						toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								StartMagnet = false
								NeedAttacking = false
							end
						end
					else
						toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
								repeat wait()
									StartMagnet = true
									NeedAttacking = true
									if Auto_Haki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
										wait()
										EquipWeapon(Selected_Weapons)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not Fast_Attack then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								StartMagnet = false
								NeedAttacking = false
							end
						end
					else
						toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
					end
				else
					toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
					if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
						wait(1.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
					end
				end
			end
		end)
	end
end)

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Musketeer_Hat then
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate [Lv. 1825]" then
									repeat wait()
										StartMagnet = true
										NeedAttacking = true
										if Auto_Haki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
											wait()
											EquipWeapon(Selected_Weapons)
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not Fast_Attack then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									until not Auto_Musketeer_Hat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									StartMagnet = false
									NeedAttacking = false
								end
							end
						else
							toTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
						end
					else
						toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
						if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
									OldCFrameElephant = v.HumanoidRootPart.CFrame
									repeat wait()
										StartMagnet = true
										NeedAttacking = true
										if Auto_Haki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
											wait()
											EquipWeapon(Selected_Weapons)
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not Fast_Attack then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									until not Auto_Musketeer_Hat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									StartMagnet = false
									NeedAttacking = false
								end
							end
						else
							toTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
						end
					else
						toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
						if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
							wait(1.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
					toTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
				end
			end
		end)
	end
end)

--

fask.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Observation_V2 then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
				else
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
						repeat 
							toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
							wait() 
						until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
						repeat 
							toTarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
							wait() 
						until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
						wait(1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate [Lv. 1825]" then
									repeat wait()
										StartMagnet = true
										NeedAttacking = true
										if Auto_Haki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
											wait()
											EquipWeapon(Selected_Weapons)
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not Fast_Attack then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									until not Auto_Observation_V2 or v.Humanoid.Health <= 0
									StartMagnet = false
									NeedAttacking = false
								end
							end
						else
							repeat 
								toTarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
								wait() 
							until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
									repeat wait()
										StartMagnet = true
										NeedAttacking = true
										if Auto_Haki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
											wait()
											EquipWeapon(Selected_Weapons)
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not Fast_Attack then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									until not Auto_Observation_V2 or v.Humanoid.Health <= 0
									StartMagnet = false
									NeedAttacking = false
								end
							end
						else
							repeat 
								toTarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
								wait() 
							until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
						end
					else
						for i,v in pairs(game.Workspace:GetDescendants()) do
							if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
								v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
								wait()
								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
								wait()
							end
						end  
					end
				end
			end
		end)
	end
end)

DoughMob = {"Cookie Crafter [Lv. 2200]","Cake Guard [Lv. 2225]","Baking Staff [Lv. 2250]"}

fask.spawn(function()
	while wait() do
		if Auto_Dough_V2 then
			if not game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
				if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
					local args = {
						[1] = "CakeScientist",
						[2] = "Check"
					}

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
					local args = {
						[1] = "RaidsNpc",
						[2] = "Check"
					}

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                        
				end
			elseif game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
				if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
					RedDorTween = toTargetP(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782))
					if (CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
						if RedDorTween then RedDorTween:Stop() end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
						wait(0.5)
						EquipWeapon("Red Key")
						wait(0.5)
					end
				elseif game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if Auto_Dough_V2 and v.Name == "Dough King [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = toTarget(v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then
											Farmtween:Stop()
										end
										EquipWeapon(Selected_Weapons)
										v.HumanoidRootPart.Size = Vector3.new(55,55,55)
										NeedAttacking = true
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
									end
								until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")
								NeedAttacking = false
							end
						end
					else
						if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
							NeedAttacking = false
							Questtween = toTargetP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
							if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Questtween then Questtween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
								wait(1)
							end
						end 
					end
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
					--if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)),"already") then

					--else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
					if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if Auto_Dough_V2 and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = toTarget(v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then Farmtween:Stop() end
										NeedAttacking = true
										PosFarmCakePrince = v.HumanoidRootPart.CFrame
										EquipWeapon(Selected_Weapons)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										MagnetFarmCakePrince = true
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
									end
								until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
								NeedAttacking = false
								MagnetFarmCakePrince = false
							end
						end
					else
						MagnetFarmCakePrince = false
						NeedAttacking = false
						Questtween = toTarget(CFrame.new(-2077, 252, -12373))
						if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if Questtween then Questtween:Stop() end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
						end
					end

					--end
				elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")) and GetMaterial("Conjured Cocoa") >= 10 then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
					wait(0.2)
				elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
							for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if string.find(v.Name,"Diablo") then
									DoughTween = toTarget(v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if DoughTween then
											DoughTween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
									end
								end	
								if string.find(v.Name,"Urban") then
									DoughTween = toTarget(v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if DoughTween then
											DoughTween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
									end
								end	
								if string.find(v.Name,"Deandre") then
									DoughTween = toTarget(v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if DoughTween then
											DoughTween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
									end
								end	
							end
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if Auto_Dough_V2 and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(Selected_Weapons)
											NeedAttacking = true
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										end 
									until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
									NeedAttacking = false
								end
								if Auto_Dough_V2 and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(Selected_Weapons)
											NeedAttacking = true
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										end 
									until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
									NeedAttacking = false
								end
								if Auto_Dough_V2 and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(Selected_Weapons)
											NeedAttacking = true
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										end 
									until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
									NeedAttacking = false
								end
							end
						else
							local string_1 = "EliteHunter";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1);
						end
					else
						local string_1 = "EliteHunter";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1);
					end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if Auto_Dough_V2 and (v.Name == "Candy Rebel [Lv. 2375]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Cocoa Warrior [Lv. 2300]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
										Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										NeedAttacking = false
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Farmtween then Farmtween:Stop() end
										NeedAttacking = true
										PosFarmCoco = v.HumanoidRootPart.CFrame
										EquipWeapon(Selected_Weapons)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										MagnetFarmCoco = true
									end
								until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
								NeedAttacking = false
								MagnetFarmCoco = false
							end
						end
					else
						MagnetFarmCoco = false
						NeedAttacking = false
						Questtween = toTarget(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625))
						if (CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if Questtween then
								Questtween:Stop()
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
						end
					end
				end
			else
				print("Error Whyyy")
			end
		else
			break;
		end
	end
end)

spawn(function()
	while wait() do
		if Auto_Dough_V2 then
			if MagnetFarmCakePrince then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if MagnetFarmCakePrince and Auto_Dough_V2 and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosFarmCakePrince
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						end
					end
				end
			end
		else
			break
		end
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			if AutoFinishPhoenixDun then
				if string.find(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"Phoenix") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2813.459716796875, 254.8035125732422, -12591.5029296875)
				end
			end
		end)
	end
end)


Tabs.FullMirage:AddParagraph({
	Title = "~ Full Moon ~",
	Content = "Yo you can see status Full Moon!"
})

-- local FullMoonStatus = Page4:Label("N/S")

-- pcall(function()
--     local MoonPhase = tonumber(game:GetService("Lighting"):GetAttribute("MoonPhase"))
--     if MoonPhase == 8 then
--         FullMoonStatus:Set("Moon 25% After Full Moon")
--     elseif MoonPhase == 7 then
--         FullMoonStatus:Set("Moon 50% After Full Moon")
--     elseif MoonPhase == 6 then
--         FullMoonStatus:Set("Moon 75% After Full Moon")
--     elseif MoonPhase == 5 then
--         FullMoonStatus:Set("Moon 100%")
--     elseif MoonPhase == 4 then
--         FullMoonStatus:Set("Moon 75%")
--     elseif MoonPhase == 3 then
--         FullMoonStatus:Set("Moon 50%")
--     elseif MoonPhase == 2 then
--         FullMoonStatus:Set("Moon 25%")
--     elseif MoonPhase == 1 then
--         FullMoonStatus:Set("Moon 0%")
--     end
-- end)
-- Page4:Button("Update Moon Status",function()
--     pcall(function()
--         local MoonPhase = tonumber(game:GetService("Lighting"):GetAttribute("MoonPhase"))
--         if MoonPhase == 8 then
--             FullMoonStatus:Set("Moon 25% After Full Moon")
--         elseif MoonPhase == 7 then
--             FullMoonStatus:Set("Moon 50% After Full Moon")
--         elseif MoonPhase == 6 then
--             FullMoonStatus:Set("Moon 75% After Full Moon")
--         elseif MoonPhase == 5 then
--             FullMoonStatus:Set("Moon 100%")
--         elseif MoonPhase == 4 then
--             FullMoonStatus:Set("Moon 75%")
--         elseif MoonPhase == 3 then
--             FullMoonStatus:Set("Moon 50%")
--         elseif MoonPhase == 2 then
--             FullMoonStatus:Set("Moon 25%")
--         elseif MoonPhase == 1 then
--             FullMoonStatus:Set("Moon 0%")
--         end
--     end)
-- end)

