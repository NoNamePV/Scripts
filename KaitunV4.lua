_G.KaitunConfig = {
	["Start Farm"] = true,

	["Item"] = {
		["World 1"] = {
			["Saber"] = true,
			["Pole"] = true,
			["Bisento V2"] = true,
			["Cool Shades"] = true,
		},
		["World 2"] = {
			["Rengoku"] = true,
			["Midnight Blade"] = true,
			["Soul Cane"] = true,
			["Gravity Cane"] = true,
			["Dragon Trident"] = true,
			["Dark Coat"] = true,
			["Acidum Rifle"] = true,
		},
		["World 3"] = {
			["Twin Hooks"] = true,
			["Buddy Sword"] = true,
			["Cavander"] = true,
			["Hallow Scythe"] = true,
			["Serpent Bow"] = true,

			["Yama"] = true,
			["Tushita"] = true,
		},
	},
	["Quest"] = {
		["World 3"] = {
			["Elite Hunter"] = true,
			["Rainbow Haki"] = true,
			["Dough Mirror"] = true,
			["Musketeer Hat"] = true,
		},
	},
	["Fruits"] = {
		["Main Fruit"] = {"Flame-Flame","Ice-Ice"},
		["Config"] = {
			["Sniper Fruits"] = true,
			["Find Fruits"] = true,
			["Random Fruits"] = true,
			["Store Fruits"] = true,
		},
	},
}

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Players")
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui

if not game:GetService("Players").LocalPlayer.Team then
	repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)")
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Visible then
			for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
                v.Function()
            end
		end
	until game:GetService("Players").LocalPlayer.Team 
end
wait(1)

do
	FirstSea = game.PlaceId == 2753915549
	SecondSea = game.PlaceId == 4442272183
	ThirdSea = game.PlaceId == 7449423635
end

local LoadingTime = tick()

-- [Fruit]

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.KaitunConfig["Config"]["Sniper Fruits"] then
				if not table.find(_G.KaitunConfig["Fruits"]["Main Fruit"], game.Players.LocalPlayer.Data.DevilFruit.Value) then
					for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")) do
						for i,v1 in next, v do
							if i == "Name" then
								if v["OnSale"] and table.find(_G.KaitunConfig["Fruits"]["Main Fruit"], v1) and not table.find(_G.KaitunConfig["Fruits"]["Main Fruit"], game.Players.LocalPlayer.Data.DevilFruit.Value) then
							        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", v1)
								end
							end
						end
					end
				end
			end
		end)
	end
end)

-- [Anti AFK]

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- [Equip Function]

function EquipWeapon(ToolSe)
	if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end

function EquipMelee()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Melee" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

function EquipSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

-- [No Clip]

spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			if _G.KaitunConfig["Start Farm"] then
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

-- [Tween Func]

local function GetIsLand(...)
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

	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
	end
end

local function toTarget(...)
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

	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then 
		if tween then 
			tween:Cancel() 
		end 
		repeat 
			wait() 
		until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) 
	end

	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 1000 then
		Speed = 350
	elseif Distance >= 1000 then
		Speed = 400
	end

	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		tween:Cancel()
	end 

	function tweenfunc:Wait()
		tween.Completed:Wait()
	end 

	return tweenfunc
end

function Distance(P)
	local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	return Distance
end

-- [Bring Entity]

StartMagnet = true

task.spawn(function()
	while wait() do
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if StartMagnet and NeedBring then
					if ((v.Name == MonFarm) and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
						if (v.Name == "Factory Staff") then
							if ((v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 1000000000) then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif (v.Name == MonFarm) then
							if ((v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 1000000000) then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)

-- [InMyNetWork]

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

-- [SetScriptable]

task.spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)

-- [Attack Function]

local ayaya_module = loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/o7qg477s4kboyky2c8233i6fj4rxndmv.lua"))()

task.spawn(function()
	while task.wait() do
		if NeedAttack then
			ayaya_module.attack()
		end
	end
end)

-- [Remote Function]

function CommF_(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- [Active Buso]

function ActiveHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end

-- [Click Function]

function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

-- [Get Fighting Style]

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

-- [Check Dungeon]

function CheckFruits()
	local Backpack = game:GetService("Players").LocalPlayer.Backpack:GetChildren()
	for i=1,#Backpack do local v = Backpack[i]
		if v.Name:lower():find("fruit") then
			return true
		end
	end
	local Character = game:GetService("Players").LocalPlayer.Character:GetChildren()
	for i=1,#Character do local v = Character[i]
		if v:IsA("Tool") and v.Name:lower():find("fruit") then
			return true
		end
	end
end

-- [Check Fruit 1M]

GetFruits = false

function getInventoryFruits()
	for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
		if v.Price >= 1000000 then 
			GetFruits = true
		end
	end
end

-- [Server Api]

function HopServer(Value)
	pcall(function()
		if not workspace:FindFirstChild("Message") then
			local Massage = Instance.new("Message",workspace)
			Massage.Text = "Status | "..Value
		end
		for count = math.random(1, math.random(40, 75)), 100 do
			remote = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(count)
			for _i ,v in pairs(remote) do
				if tonumber(v['Count']) <= 7 then
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _i)
				end
			end    
		end 	
	end)
end

-- [Stats Function]

task.spawn(function()
    while wait() do
		if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value < 2600 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",10)
		else
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",10)                
		end
    end
end)

-- [Code Function]

local CodeApi = loadstring(game:HttpGet('https://raw.githubusercontent.com/xNoNameZ/Backups/refs/heads/main/RedeemCode.lua'))()

function Redeem(value)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
end
for i,v in pairs(CodeApi) do
	Redeem(v)
end

-- [Mastery Farm]

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
					if UseSkillMasteryDevilFruit and Auto_Mastery_Fruit then
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
						if Auto_Mastery_Gun and UseSkillMasteryGun then
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

-- [Check Mastery]

function CheckMastery(Melee_Name,Mastery_Value)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Melee_Name) then
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Melee_Name).Level.Value >= Mastery_Value then
			return true
		end
	end
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild(Melee_Name) then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild(Melee_Name).Level.Value >= Mastery_Value then
			return true
		end
	end
	return false
end

-- [Get Monster]

function HaveMob(name)
	return game.Workspace.Enemies:FindFirstChild(name) or game:GetService("ReplicatedStorage"):FindFirstChild(name)
end

-- [Get Item's]

function HaveItem(item)
	for i ,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
		if v.Name == item then
			return v
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == item then
				return v
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == item then
				return v
			end
		end
	end
end

-- [Get Tool's]

function HaveTool(name)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name) then
		return true
	end
	return false
end

-- [Get Item's]

function GetItem(item)
	local LocalPlayer = game:GetService("Players").LocalPlayer
	for _, v in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.Name == item then
			return v
		end
	end
	for _, v in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v.Name == item then
			return v
		end
	end
	return nil
end

-- [Check Sea Event]

local function myboat()
	for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		if v:FindFirstChild("Owner") then
			if tostring(v.Owner.Value) == game:GetService("Players").LocalPlayer.Name then
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

-- [Get Materials]

function GetMaterial(Name)
	local Inventory = CommF_("getInventory")
	for i,v in pairs(Inventory) do
		if v.Type == "Material" then 
			if v.Name == Name then
				return v.Count
			end
		end
	end
	return 0
end

-- [Check Button Color]

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

-- [Check Haki Color]

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

-- [Check Mon]

GetGladiator = function()
	toTarget(CFrame.new(-1230.49341, 7.32281303, -3050.3501, -0.28372404, 1.11183759e-07, -0.958905995, 7.6644703e-08, 1, 9.32706783e-08, 0.958905995, -4.70319321e-08, -0.28372404) * CFrame.new(0, 10, 0))
	wait(1)
	toTarget(CFrame.new(-1491.22864, 7.47755527, -3194.2019, -0.0407506861, 1.26799691e-08, 0.99916935, -4.24122177e-08, 1, -1.44202748e-08, -0.99916935, -4.29646256e-08, -0.0407506861) * CFrame.new(0, 10, 0))
	wait(1)
	toTarget(CFrame.new(-1371.93115, 7.40200901, -3379.23804, 0.83229202, 3.40531443e-08, 0.554337442, 1.86150118e-08, 1, -8.93792631e-08, -0.554337442, 8.47086454e-08, 0.83229202) * CFrame.new(0, 10, 0))
	wait(1)
	toTarget(CFrame.new(-1356.52759, 7.31427479, -3594.57959, 0.982409298, -9.45884482e-10, -0.186740339, -1.34027092e-08, 1, -7.55746186e-08, 0.186740339, 7.67480373e-08, 0.982409298) * CFrame.new(0, 10, 0))
	wait(1)
	toTarget(CFrame.new(-1116.98181, 7.32406616, -3270.92383, -0.249164313, 9.3330101e-08, -0.968461215, -2.98388088e-08, 1, 1.04046364e-07, 0.968461215, 5.48223724e-08, -0.249164313) * CFrame.new(0, 10, 0))
	wait(1)
end

-- [Quest Lib]

loadstring(game:HttpGet('https://raw.githubusercontent.com/NoNamePV/Utils/refs/heads/main/BloxFruits/DataQuest.lua'))()

-- [Kaitun Sequency]

task.spawn(function()
	while wait() do
		local succ,err = pcall(function()
			if _G.KaitunConfig["Start Farm"] then
				local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
				local MyBeli = game:GetService("Players").LocalPlayer.Data.Beli.Value
				local MyFragment = game:GetService("Players").LocalPlayer.Data.Fragments.Value
				if FirstSea then
					if _G.KaitunConfig["Item"]["World 1"]["Saber"] and MyLevel >= 200 and not HaveItem("Saber") and HaveMob("Saber Expert") then
						Saber()
						print("Saber")
					elseif _G.KaitunConfig["Item"]["World 1"]["Pole"] and MyLevel >= 250 and not HaveItem("Pole") and HaveMob("Thunder God") then
						Pole()
						print("Pole")
					elseif _G.KaitunConfig["Item"]["World 1"]["Bisento V2"] and MyLevel >= 525 and HaveMob("Greybeard") then
						BisentoV2()
						print("Bisento V2")
					elseif _G.KaitunConfig["Item"]["World 1"]["Cool Shades"] and MyLevel >= 600 and not HaveTool("Cool Shandes") and HaveMob("Cyborg") then
						CoolShades()
						print("Cool Shades")
					elseif MyLevel >= 700 then
						Dressrosa()
						print("Dressrosa")
					else
						FarmLevel()
						print("Farm Level")
					end
				elseif SecondSea then
					if _G.KaitunConfig["Item"]["World 2"]["Acidum Rifle"] and HaveMob("Core") then
						AcidumRifle()
						print("Acidum Rifle")
					elseif MyLevel >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
						Bartilo()
						print("Bartilo")
					elseif _G.KaitunConfig["Item"]["World 2"]["Gravity Cane"] and MyLevel >= 950 and not HaveItem("Gravity Cane") and HaveMob("Fajita") then
						GravityCane()
						print("Gravity Cane")
					elseif _G.KaitunConfig["Item"]["World 2"]["Soul Cane"] and MyBeli >= 3000000 and not HaveItem("Soul Cane") then
						SoulCane()
						print("Soul Cane")
					elseif _G.KaitunConfig["Item"]["World 2"]["Midnight Blade"] and not HaveItem("Midnight Blade") and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check") >= 100 then
						MidnightBlade()
						print("Midnight Blade")
					elseif _G.KaitunConfig["Item"]["World 2"]["Dark Coat"] and MyLevel >= 1300 and not HaveTool("Dark Coat") and HaveMob("Darkbeard") then
						DarkCoat()
						print("Dark Coat")
					elseif _G.KaitunConfig["Item"]["World 2"]["Rengoku"] and MyLevel >= 1350 and not HaveItem("Rengoku") and HaveMob("Awakened Ice Admiral") then
						Rengoku()
						print("Rengoku")
					elseif _G.KaitunConfig["Item"]["World 2"]["Dragon Trident"] and MyLevel >= 1400 and not HaveItem("Dragon Trident") and HaveMob("Tide Keeper") then
						DragonTrident()
						print("Dragon Trident")
					elseif MyLevel >= 1500 and HaveTool("Warrior Helmet") then
						Zou()	
						print("Zou Quest")
					else
						FarmLevel()
						print("Farm Level")
					end
				elseif ThirdSea then
					if _G.KaitunConfig["Item"]["World 3"]["Twin Hooks"] and MyLevel >= 1600 and HaveMob("Captain Elephant") then
						TwinHooks()
					elseif _G.KaitunConfig["Item"]["World 3"]["Buddy Sword"] and MyLevel >= 1800 and HaveMob("Cake Queen") then
						BuddySword()
					elseif _G.KaitunConfig["Item"]["World 3"]["Serpent Bow"] and MyLevel >= 1850 and HaveMob("Island Empress") then
						SerpentBow()
					elseif _G.KaitunConfig["Quest"]["World 3"]["Musketeer Hat"] and MyLevel >= 1850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
						MusketeerHat()
					elseif _G.KaitunConfig["Item"]["World 3"]["Cavander"] and MyLevel >= 1950 and HaveMob("Beautiful Pirate") then
						Cavander()
					elseif _G.KaitunConfig["Quest"]["World 3"]["Rainbow Haki"] and MyLevel >= 1950 and HaveMob("Stone") and HaveMob("Island Empress") and HaveMob("Kilo Admiral") and HaveMob("Captain Elephant") and HaveMob("Beautiful Pirate") then 
						RainbowHaki()
					elseif _G.KaitunConfig["Item"]["World 3"]["Hallow Scythe"] and MyLevel >= 2000 and HaveMob("Soul Reaper") then
						HallowScythe()
					elseif _G.KaitunConfig["Quest"]["World 3"]["Elite Hunter"] and MyLevel >= 2000 and HaveMob("Deandre") or HaveMob("Urban") or HaveMob("Diablo") then
						EliteHunter()
					elseif _G.KaitunConfig["Quest"]["World 3"]["Dough Mirror"] and MyLevel >= 2275 and HaveMob("Cake Prince") then
						DoughMirror()
					elseif _G.KaitunConfig["Sword"]["World 3"]["Yama"] and MyLevel >= 2500 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 and not HaveItem("Yama") then
						Yama()
					elseif _G.KaitunConfig["Sword"]["World 3"]["Tushita"] and MyLevel >= 2000 and not HaveItem("Tushita") and ThirdWorld and game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
						Tushita()
					else
						FarmLevel()
					end
				end
			end
		end)
		if not succ then warn("Kaitun Sequency : "..err) end
	end
end)

function FarmLevel()
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	local QuestTitle = game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
	local GetsQuest = game.Players.LocalPlayer.PlayerGui.Main.Quest
	if (MyLevel >= 20 and MyLevel <= 99) then
		if MyLevel >= 20 and MyLevel <= 99 then
			local CFrameMyMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
			if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "God's Guard" then
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat task.wait()
								ActiveHaki()
								EquipMelee()
								NeedBring = true
								NeedAttack = true
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Head.CanCollide = false 
								PosMon = v.HumanoidRootPart.CFrame
								MonFarm = v.Name
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
							until not (game:GetService("Workspace").Enemies:FindFirstChild("God's Guard")) or not (FarmLevel()) or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				end
			else
				toTarget(CFrameMyMon)
			end
		end
	else
		CheckQuest()
		if not string.find(QuestTitle, NameMon) then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		end
		if GetsQuest.Visible == false then
			toTarget(CFrameQuest)
			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
			end
		elseif GetsQuest.Visible == true then
			if game:GetService("Workspace").Enemies:FindFirstChild(Monster) then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == Monster then
							if string.find(QuestTitle, NameMon) then
								repeat task.wait()
									ActiveHaki()       
									EquipMelee() 
									PosMon = v.HumanoidRootPart.CFrame
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
									MonFarm = v.Name
									NeedBring = true
									NeedAttack = true
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(70,70,70)
								until not FarmLevel() or v.Humanoid.Health <= 0 or not v.Parent or GetsQuest.Visible == false
							end
						end
					end
				end
			else
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 275 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 299 then
					GetGladiator()
				end
				if not (game:GetService("Players").LocalPlayer.Data.Level.Value >= 275 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 299) then
					toTarget(CFrameMyMon * CFrame.new(0, 10, 0))
				end
				if game:GetService("ReplicatedStorage"):FindFirstChild(Monster) then
					toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Monster).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
				end
			end
		end
	end
end

function Saber()
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
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									if v.Name == "Mob Leader" then
										repeat task.wait()
											ActiveHaki()
											EquipMelee()
											NeedAttack = true
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											v.HumanoidRootPart.Transparency = 1
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											FarmPos = v.HumanoidRootPart.CFrame
											MonFarm = v.Name
											game:GetService'VirtualUser':CaptureController()
											game:vice'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
										until v.Humanoid.Health <= 0 or Saber() == false
									end
								end
								if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
									toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
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
		if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					if v.Name == "Saber Expert" then
						repeat task.wait()
							ActiveHaki()
							EquipMelee()
							NeedAttack = true
							toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							FarmPos = v.HumanoidRootPart.CFrame
							MonFarm = v.Name
							game:GetService'VirtualUser':CaptureController()
							game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
						until not v.Parent or v.Humanoid.Health <= 0 or Saber() == false
						if v.Humanoid.Health <= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
						end
					end
				end
			end
		end
	end
end

function Pole()
	if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if v.Name == "Thunder God" then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						FarmPos = v.HumanoidRootPart.CFrame
						MonFarm = v.Name
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
					until not Pole() or not v.Parent or v.Humanoid.Health <= 0
				end
			end
		end
	else
		toTarget(CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934))
	end
end	

function BisentoV2()
	if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if v.Name == "Greybeard" then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						NeedAttack = true
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						FarmPos = v.HumanoidRootPart.CFrame
						MonFarm = v.Name
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
					until not BisentoV2() or not v.Parent or v.Humanoid.Health <= 0
				end
			end
		end
	else
		toTarget(CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321))
	end
end

function CoolShades()
	if game:GetService("Workspace").Enemies:FindFirstChild("Cyborg") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if v.Name == "Cyborg" then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						NeedAttack = true
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						FarmPos = v.HumanoidRootPart.CFrame
						MonFarm = v.Name
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
					until not CoolShades() or not v.Parent or v.Humanoid.Health <= 0
				end
			end
		end
	else
		toTarget(CFrame.new(6130.38086, 9.76513767, 3916.90308, -0.28136304, -1.30420315e-08, -0.959601402, 4.01042088e-09, 1, -1.47669814e-08, 0.959601402, -8.0032887e-09, -0.28136304))
	end
end

function Dressrosa()
	if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
		repeat wait() toTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Dressrosa()
		wait(1)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
		EquipWeapon("Key")
		repeat wait() toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Dressrosa()
		wait(3)
	elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
		if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
					repeat wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.Transparency = 1
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
					until v.Humanoid.Health <= 0 or not v.Parent or not Dressrosa()
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

function AcidumRifle()
	if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == "Core" then
				if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and AcidumRifle() then
					repeat task.wait()
						ActiveHaki()
						EquipWeapon(Weapon)
						NeedAttack = true
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.Head.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						toTarget(CFrame.new(448.46756, 199.356781, -441.389252))
					until AcidumRifle() == false or v.Humanoid.Health <= 0 or not v.Parent
				end
			end
		end
	else
		toTarget(CFrame.new(448.46756, 199.356781, -441.389252))        
	end
end

function Bartilo()
	if game:GetService("Players").LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
		if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
			if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
				MsBoss = "Swan Pirate"
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == MsBoss then
						pcall(function()
							repeat task.wait()
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
								ActiveHaki()
								EquipMelee()
								NeedAttack = true
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))										
								PosMonBarto =  v.HumanoidRootPart.CFrame
							until not v.Parent or v.Humanoid.Health <= 0 or Bartilo() == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
						end)
					end
				end
			else
				repeat toTarget(CFrame.new(932.624451, 156.106079, 1180.27466)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466)).Magnitude <= 10
			end
		else
			repeat toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
			wait(1.1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
		end 
	elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
		if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
			MsBoss = "Jeremy"
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if v.Name == MsBoss then
					OldCFrameBartlio = v.HumanoidRootPart.CFrame
					repeat task.wait()
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))			
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					until not v.Parent or v.Humanoid.Health <= 0 or Bartilo() == false
				end
			end
		elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
			repeat toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
			wait(1.1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
			wait(1)
			repeat toTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
			wait(2)
		else
			repeat toTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
		end
	elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
		repeat toTarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
		wait(1)
		repeat toTarget(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
		wait(1)
		repeat toTarget(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
		wait(1)
		repeat toTarget(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
		wait(1)
		repeat toTarget(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
		wait(1)
		repeat toTarget(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
		wait(1)
		repeat toTarget(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
		wait(1)
		repeat toTarget(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not Bartilo() or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
	end
end

function GravityCane()
	if game:GetService("Workspace").Enemies:FindFirstChild("Fajita") then
		for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if (v.Name == "Fajita") then
				if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))	
					until not GravityCane() or not v.Parent or (v.Humanoid.Health <= 0)
				end
			end
		end
	else
		toTarget(CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536))
		if game:GetService("ReplicatedStorage"):FindFirstChild("Fajita") then
			toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Fajita").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
		end
	end
end

function SoulCane()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end

function MidnightBlade()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm","Buy",3)
end

function Rengoku()
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
		EquipWeapon("Hidden Key")
		toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
	elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						NeedBring = true
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						FarmPos = v.HumanoidRootPart.CFrame
						MonFarm = v.Name
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
					until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or Rengoku() == false or not v.Parent or v.Humanoid.Health <= 0
				end
			end
		end
	else
		toTarget(CFrame.new(5595.99463, 28.9773693, -6712.5332, -0.0710366815, 4.93487518e-09, -0.997473717, -6.86896817e-10, 1, 4.99629182e-09, 0.997473717, 1.04008147e-09, -0.0710366815))
	end
end

function DarkCoat()
	if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
		for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if (v.Name == "Darkbeard") then
				if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))		
					until not DarkCoat() or not v.Parent or (v.Humanoid.Health <= 0)
				end
			end
		end
	else
		toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
	end
end

function DragonTrident()
	if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
		for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if (v.Name == "Tide Keeper") then
				if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))	
					until not DragonTrident() or not v.Parent or (v.Humanoid.Health <= 0)
				end
			end
		end
	else
		toTarget(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
		if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
			toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
		end
	end
end

function Zou()
	if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
			CommF_("F_","TravelZou")
			if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
				if game.Workspace.Enemies:FindFirstChild("rip_indra") then 	
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "rip_indra" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat wait()
								ActiveHaki()
								EquipMelee()
								NeedAttack = true
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
							until not Zou() or not v.Parent or v.Humanoid.Health <= 0 
							wait(.5)
							Check = 2
							repeat wait() CommF_("F_","TravelZou") until Check == 1
							NeedAttack = false
						end
					end
				else
					CommF_("F_","ZQuestProgress","Check")
					CommF_("F_","ZQuestProgress","Begin")
				end
			elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
				CommF_("F_","TravelZou")
			else
				if game.Workspace.Enemies:FindFirstChild("Don Swan") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Don Swan" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat wait()
								ActiveHaki()
								EquipMelee()
								NeedAttack = true
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
							until not Zou() or not v.Parent or v.Humanoid.Health <= 0 
						end
					end
				else
					toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
				end
			end
		else
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
				TabelDevilFruitStore = {}
				TabelDevilFruitOpen = {}
				for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
					for i,v1 in pairs(v) do
						if i == "Name" then 
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
					for i,DevilFruitStore in pairs(TabelDevilFruitStore) do
						if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
							if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
								CommF_("F_","LoadFruit",DevilFruitStore)
							else
								CommF_("F_","TalkTrevor","1")
								CommF_("F_","TalkTrevor","2")
								CommF_("F_","TalkTrevor","3")
							end
						end
					end
				end
				CommF_("F_","TalkTrevor","1")
				CommF_("F_","TalkTrevor","2")
				CommF_("F_","TalkTrevor","3")	
			end
		end
	end
end

function TwinHooks()
	if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == ("Captain Elephant" or v.Name == "Captain Elephant") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
				repeat wait()
					ActiveHaki()
					EquipMelee()
					NeedAttack = true
					PosMon = v.HumanoidRootPart.CFrame
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.Transparency = 1
					v.Humanoid.JumpPower = 0
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.CanCollide = false
					v.Humanoid:ChangeState(11)
					toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
				until not TwinHooks() or v.Humanoid.Health <= 0
			end
		end
	else
		toTarget(CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125))
	end
end

function BuddySword()
	if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
				repeat wait()
					ActiveHaki()
					EquipMelee()
					NeedAttack = true
					PosMon = v.HumanoidRootPart.CFrame
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.Transparency = 1
					v.Humanoid.JumpPower = 0
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.CanCollide = false
					v.Humanoid:ChangeState(11)
					toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
				until not BuddySword() or v.Humanoid.Health <= 0
			end
		end
	else
		toTarget(CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499))
	end
end

function SerpentBow()
	if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == ("Island Empress [Lv. 1675] [Boss]" or v.Name == "Island Empress [Lv. 1675] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
				repeat wait()
					ActiveHaki()
					EquipMelee()
					NeedAttack = true
					PosMon = v.HumanoidRootPart.CFrame
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.Transparency = 1
					v.Humanoid.JumpPower = 0
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.CanCollide = false
					v.Humanoid:ChangeState(11)
					toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
				until not SerpentBow() or not v.Parent or v.Humanoid.Health <= 0
			end
		end
	else
		toTarget(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))
	end
end

function MusketeerHat()
	if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
		if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
			if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Forest Pirate [Lv. 1825]" then
						repeat wait()
							ActiveHaki()
							EquipMelee()
							NeedAttack = true
							PosMon = v.HumanoidRootPart.CFrame
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						until not MusketeerHat() or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
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
						CFrameCaptain = v.HumanoidRootPart.CFrame
						repeat wait()
							ActiveHaki()
							EquipMelee()
							NeedAttack = true
							PosMon = v.HumanoidRootPart.CFrame
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						until not MusketeerHat() or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
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

function Cavander()
	if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == ("Beautiful Pirate [Lv. 1950] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
				repeat wait()
					ActiveHaki()
					EquipMelee()
					NeedAttack = true
					PosMon = v.HumanoidRootPart.CFrame
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.Transparency = 1
					v.Humanoid.JumpPower = 0
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.CanCollide = false
					v.Humanoid:ChangeState(11)
					toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
				until not Cavander() or v.Humanoid.Health <= 0
			end
		end
	else
		toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
	end
end

function Yama()
	repeat wait(.1)
		fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
	until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not Yama()
end

function Tushita()
	if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
			wait(1)
			local TushitaR = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
			local TorchR = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")['Torches']
			if TorchR[1] == false then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
					EquipWeapon("Holy Torch")
					repeat toTarget(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.CFrame) wait() until not _G.KaitunConfig["Item"]["World 3"]["Tushita"] or (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.CFrame).Magnitude <= 5
				end
			elseif TorchR[2] == false then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
					EquipWeapon("Holy Torch")
					repeat toTarget(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.CFrame) wait() until not _G.KaitunConfig["Item"]["World 3"]["Tushita"] or (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.CFrame).Magnitude <= 5
				end
			elseif TorchR[3] == false then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
					EquipWeapon("Holy Torch")
					repeat toTarget(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.CFrame) wait() until not _G.KaitunConfig["Item"]["World 3"]["Tushita"] or (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.CFrame).Magnitude <= 5
				end
			elseif TorchR[4] == false then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
					EquipWeapon("Holy Torch")
					repeat toTarget(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame) wait() until not _G.KaitunConfig["Item"]["World 3"]["Tushita"] or (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame).Magnitude <= 5
				end
			elseif TorchR[5] == false then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
					EquipWeapon("Holy Torch")
					repeat toTarget(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame) wait() until not _G.KaitunConfig["Item"]["World 3"]["Tushita"] or (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame).Magnitude <= 5
				end
			elseif _G.KaitunConfig["Item"]["World 3"]["Tushita"] == true and MyLevel >= 2000 and ThirdWorld and TushitaR['KilledLongma'] == false and game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
				if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Longma [Lv. 2000] [Boss]" then
							repeat task.wait()
								ActiveHaki()
								EquipMelee()
								NeedAttack = true
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
							until not _G.KaitunConfig["Item"]["World 3"]["Tushita"] or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				else
					toTarget(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
				end
			end
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
			end
		else
			if Distance(CFrame.new(5314.58203125, 25.419387817382812, -125.94227600097656)) > 10 and not TorchR[5] == false then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
			end
			wait(1)
			toTarget(game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame)
		end
	end
end

function RainbowHaki()
	if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
	elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
		if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if v.Name == "Stone [Lv. 1550] [Boss]" then
					repeat wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						PosMon = v.HumanoidRootPart.CFrame
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid:ChangeState(11)												
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
					until not RainbowHaki() or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
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
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						PosMon = v.HumanoidRootPart.CFrame
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid:ChangeState(11)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
					until not RainbowHaki() or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
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
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						PosMon = v.HumanoidRootPart.CFrame
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid:ChangeState(11)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
					until not RainbowHaki() or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
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
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						PosMon = v.HumanoidRootPart.CFrame
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid:ChangeState(11)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
					until not RainbowHaki() or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
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
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						PosMon = v.HumanoidRootPart.CFrame
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid:ChangeState(11)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
					until not RainbowHaki() or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
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

function HallowScythe()
	if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == "Soul Reaper" or v.Name == " Soul Reaper" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
				repeat wait()
					ActiveHaki()
					EquipMelee()
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
					v.HumanoidRootPart.Transparency = 1
					sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
				until v.Humanoid.Health <= 0 or HallowScythe == false
			end
		end
	elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
		repeat toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
			  wait(0.5)
		EquipWeapon("Hallow Essence")
	else
		if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
			toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
		end
	end
end

function EliteHunter()
	local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
	if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
		if not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
		elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
			if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat wait()
								ActiveHaki()
								EquipMelee()
								NeedAttack = true
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
							until EliteHunter() == false or v.Humanoid.Health <= 0 or not v.Parent
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
	end
end

function DoughMirror()
	if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == "Dough King" then
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					repeat task.wait()
						ActiveHaki()
						EquipMelee()
						NeedAttack = true
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						game:GetService("VirtualUser"):CaptureController()
						game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
						sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
					until not DoughMirror() or not v.Parent or v.Humanoid.Health <= 0
				end
			end
		end
	else
		toTarget(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
		if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
			toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
		end
	end
end

print("Pictures Hub Loading Successfully in "..LoadingTime-tick().." sec.")	
