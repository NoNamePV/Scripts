repeat task.wait() until game:IsLoaded()

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

OldWorld = game.PlaceId == 2753915549
NewWorld = game.PlaceId == 4442272183
ThirdWorld = game.PlaceId == 7449423635

-- [Anti AFK]

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- [Equip Function]

spawn(function()
	while wait() do
		pcall(function()
			if Weapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Fruits" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

function EquipWeapon(ToolSe)
	if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end

function UnEquipMelee()
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
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

spawn(function()
	pcall(function()
		while wait() do
			for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)
end)

-- [No Clip]

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        pcall(function()
            -- [All World]
            if Auto_Farm_Level or Fast_Farm_Mode or Auto_Dressrosa_Quest or Auto_Zou_Quest or Auto_Mastery_Fruit or Auto_Farm_Chest or Auto_Farm_Materials or Auto_Bosses_Select or
            -- [Old World]
            Auto_Dressrosa_Quest or Auto_Find_Saber or Auto_Find_Pole or Auto_Find_Saws or Auto_Find_Warden or Auto_Find_Shades or
			-- [New World]
			Auto_Find_Rengoku or Auto_Gravity_Cane or Auto_Dragon_Trident or Auto_Bartilo_Quest or Auto_Factory_Farm or Auto_Kill_DonSwan or Auto_Dark_Coat or Auto_Farm_Ectoplasm or
			-- [Three World]
			Auto_Cavander_Sword or Auto_Buddy_Sword or Auto_Twin_Hooks or Auto_Hallow_Scythe or Auto_Find_Yama or Auto_Find_Tushita or Auto_CDK or
			Auto_Serpent_Bow or Auto_Holy_Torch or Auto_Rainbow_Haki or Auto_Elite_Hunter or Auto_Musketeer_Hat or Auto_Farm_Observation or Auto_Observation_V2 or
			Auto_Cake_Prince or Auto_Farm_Bones or Auto_Dough_Awaken or Auto_Phoenix_Awaken
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

-- [Bring Mob]

spawn(function()
	while wait() do
		pcall(function()
			CheckQuest()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if StartMagnet then
					if NeedBring and v.Name == MonFarm or v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						elseif v.Name == MonFarm or v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid.JumpPower = 0
								v.HumanoidRootPart.Locked = true
								v.Humanoid:ChangeState(14)
								v.Humanoid:ChangeState(11)
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
	while task.wait(.0) do
		if StartMagnet then
			pcall(function()
				CheckQuest()
				local enemies = game:GetService("Workspace").Enemies:GetChildren()
				for _, enemy1 in pairs(enemies) do
					for _, enemy2 in pairs(enemies) do
						if enemy1.Name == Enemy and enemy2.Name == Enemy then
							if enemy1:FindFirstChild("Humanoid") and enemy1:FindFirstChild("HumanoidRootPart") and 
								enemy2:FindFirstChild("Humanoid") and enemy2:FindFirstChild("HumanoidRootPart") then
								if enemy1.Humanoid.Health > 0 and enemy2.Humanoid.Health > 0 then
									enemy1.HumanoidRootPart.CFrame = enemy2.HumanoidRootPart.CFrame
									enemy1.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
									enemy2.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
									enemy1.HumanoidRootPart.Transparency = 1
									enemy1.HumanoidRootPart.CanCollide = false
									enemy1.Humanoid.WalkSpeed = 0
									enemy1.Humanoid.JumpPower = 0
									enemy1.Humanoid:ChangeState(11)
									enemy2.HumanoidRootPart.Transparency = 1
									enemy2.HumanoidRootPart.CanCollide = false
									enemy2.Humanoid.WalkSpeed = 0
									enemy2.Humanoid.JumpPower = 0
									enemy2.Humanoid:ChangeState(11)
									if sethiddenproperty then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
								end
							end
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if StartMagnet then
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if NeedBring and v.Name == Monster and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif NeedBring and v.Name == Monster and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if StartMagnet then
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if NeedBring and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif NeedBring and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                end
            end
        end)
    end
end)

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

-- [Fast Attack]

local Ayaya = loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/o7qg477s4kboyky2c8233i6fj4rxndmv.lua"))()

task.spawn(function()
    while task.wait() do
        if NeedAttack then
            pcall(function()
                Ayaya.attack()
            end)
        end
    end
end)
wait(2)

-- [Random Attack Farm]

task.spawn(function()
	while wait() do 
		if RandomPosition then
			AttackRandomType = math.random(1,5)
			wait(0.5)
		end
	end
end)
task.spawn(function()
	while wait() do 
		if EntityPosition then
			EntityRandomType = math.random(1,4)
			wait(0.5)
		end
	end
end)

-- [Abandoned Quest]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- [Tween Function]

if FirstSea then
	CanTeleport = {
		Vector3.new(3864.6884765625, 5.716391563415527, -1926.214111328125),
		Vector3.new(61163.8515625, 5.650546073913574, 1819.7841796875),
		Vector3.new(-7894.61767578125, 5545.8349609375, -380.29119873046875),
		Vector3.new(-4607.82275, 872.54248+50, -1667.55688)
	}
elseif SecondSea then
	CanTeleport = {
		Vector3.new(923.2125244140625, 125.40035247802734, 32852.83203125), 
		Vector3.new(-286.6488037109375, 306.130615234375, 596.5967407226562), 
		Vector3.new(2283.7080078125, 15.277364730834961, 905.8712158203125), 
		Vector3.new(-6505.7294921875, 83.31233978271484, -130.24234008789062) 
	}
elseif ThirdSea then
	CanTeleport = {
		Vector3.new(-12479.416015625, 375.2204284667969, -7566.20751953125),
		Vector3.new(-12462.322265625, 375.2204284667969, -7551.25390625), 
		Vector3.new(-12447.615234375, 375.22039794921875, -7568.06982421875),
		Vector3.new(-12464.0859375, 376.9941101074219, -7576.71484375), 
		Vector3.new(5742.9169921875, 610.7672729492188, -268.2395935058594), 
		Vector3.new(5756.26025390625, 610.7301025390625, -283.0395202636719), 
		Vector3.new(5742.65771484375, 610.7301635742188, -300.1603088378906), 
		Vector3.new(5733.099609375, 612.1041870117188, -283.2297058105469),
		Vector3.new(-5076.99853515625, 314.8587341308594, -3151.824951171875), 
		Vector3.new(-5083.52880859375, 314.821533203125, -3131.4833984375), 
		Vector3.new(-5102.43017578125, 316.62139892578125, -3144.850830078125), 
		Vector3.new(-5106.0595703125, 314.8215026855469, -3180.6748046875), 
		Vector3.new(-11993.580078125, 331.8077087402344, -8844.1826171875), 
		Vector3.new(-11972.7275390625, 332.1136474609375, -8833.6376953125), 
		Vector3.new(-12013.34375, 332.1136474609375, -8832.685546875), 
		Vector3.new(5314.45703125, 36.142032623291016, -146.67759704589844), 
		Vector3.new(5314.58203125, 22.53643226623535, -125.94227600097656), 
		Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586) 
	}
end

function toTarget(p)
    local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    local Distance = (p.Position - HumanoidRP.Position).Magnitude
    game.Workspace.Gravity = 0

    if Distance < 300 then
        HumanoidRP.CFrame = p
        return
    end

    if Distance > 300 then
        p = CFrame.new(p.Position.X, 150, p.Position.Z)
    elseif p.Position.Y >= 160 then
    	p = CFrame.new(p.Position.X, p.Position.Y + 150, p.Position.Z)
	end

    if not game.Players.LocalPlayer.Character:FindFirstChild("PartTP") then
        local PartTP = Instance.new("Part", game.Players.LocalPlayer.Character)
        PartTP.Size = Vector3.new(10,1,10)
        PartTP.Name = "PartTP"
        PartTP.Anchored = true
        PartTP.Transparency = 1
        PartTP.CanCollide = false
        PartTP.CFrame = HumanoidRP.CFrame
        PartTP:GetPropertyChangedSignal("CFrame"):Connect(function()
            task.wait(0.01)
            HumanoidRP.CFrame = PartTP.CFrame
        end)
    end

    local PartTP = game.Players.LocalPlayer.Character.PartTP
    local Tween = game:GetService("TweenService"):Create(PartTP, TweenInfo.new(Distance / 320, Enum.EasingStyle.Linear), {CFrame = p})
    Tween:Play()

    function StopTween()
        if Tween then
            Tween:Cancel()
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("PartTP") then
            game.Players.LocalPlayer.Character:FindFirstChild("PartTP"):Destroy()
        end
    end

    local closestDistance = math.huge
    local closestV = nil

    for i, v in ipairs(CanTeleport) do
        if (v - p.Position).Magnitude < (HumanoidRP.Position - p.Position).Magnitude 
            and game.Players.LocalPlayer.Character.Humanoid.Health > 0
            and (v - HumanoidRP.Position).Magnitude > 30 then
            local distance = (v - p.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestV = v
            end
        end
    end

    if closestV then
        if Tween then
            Tween:Cancel()
            wait(0.3)
        end
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", closestV)
        wait(.5)
        PartTP.CFrame = HumanoidRP.CFrame
    end
end

function FastTween(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/150, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

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
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/150, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

-- [Buso Activing]

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

function AttackPlayers()
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

-- [Check Fruit 1M]

CheckFruit1M = false

function getInventory()
	for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
		if v.Price >= 1000000 then 
			CheckFruit1M = true
		end
	end
end

-- [Server Api]

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

function CheckMastery(NameWe,MasNum)
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

-- [Check Monster]

function HaveMob(name)
	return game.Workspace.Enemies:FindFirstChild(name) or game.ReplicatedStorage:FindFirstChild(name)
end

-- [Check Item]

function HaveItem(Weaponname)
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

function HaveItem(ah)
	for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
		if v.Name == ah then
			return v
		end
	end
end

-- [Check Sea Event]

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

-- [Get Materials]

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

-- [Check HakiColor]

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

-- [Quest Lib]

loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNamePV/Utils/refs/heads/main/BloxFruits/Quest.lua"))()

-- [Interface]

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SixZensED/Scripts/refs/heads/main/UI%20Libraries/pictures.lua"))()

local main = library.new({})

local Main = main.newtab({Icon = "7040391851"})

Main.Label({Title = "[⚔️] Auto Farm Main"})

Main.Toggle({
    Title = "Auto Farm Level",
    Default = false,
    Callback = function(value)
        Auto_Farm_Level = value
    end,
})

Main.Toggle({
    Title = "Fast Auto Farm Level",
    Default = false,
    Callback = function(value)
        Fast_Farm_Mode = value
    end,
})

spawn(function()
	while wait() do
		if Auto_Farm_Level then
			pcall(function()
				local MyLevel = game.Players.LocalPlayer.Data.Level.Value
				local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				local GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                if Fast_Farm_Mode and (MyLevel >= 15 and MyLevel <= 89) then
                    if MyLevel >= 15 and MyLevel <= 89 then
                        local CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
						if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "God's Guard" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											ActiveHaki()
											EquipMelee()
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false 
											NeedBring = true
                                            NeedAttack = true
											PosMon = v.HumanoidRootPart.CFrame
											MonFarm = v.Name
										    if AttackRandomType == 1 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										    elseif AttackRandomType == 2 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
										    elseif AttackRandomType == 3 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
										    elseif AttackRandomType == 4 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
										    elseif AttackRandomType == 5 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
										    else
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										    end
											game:GetService("VirtualUser"):CaptureController()
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
										until not (game:GetService("Workspace").Enemies:FindFirstChild("God's Guard")) or not (Fast_Farm_Mode or Auto_Farm_Level) or v.Humanoid.Health <= 0 or not v.Parent
									end
								end
							end
						else
							toTarget(CFrameMon * CFrame.new(0,10,0))
						end
					end
				else
					CheckQuest()
					if not string.find(QuestTitle, NameMon) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					end
					if GetQuest.Visible == false then
					 	if FastTween then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
								FastTween(CFrameQuest)
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
								FastTween(CFrameQuest)
							end
						else
							toTarget(CFrameQuest)
						end
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
						end
					elseif GetQuest.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if v.Name == Mon then
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											repeat task.wait()
												ActiveHaki()       
												EquipWeapon(Weapon) 
												PosMon = v.HumanoidRootPart.CFrame
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												MonFarm = v.Name
												NeedBring = true
                                                NeedAttack = true
										    if AttackRandomType == 1 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										    elseif AttackRandomType == 2 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
										    elseif AttackRandomType == 3 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
										    elseif AttackRandomType == 4 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
										    elseif AttackRandomType == 5 then
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
										    else
											    toTargetP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										    end
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(70,70,70)
											until not Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										end
									end
								end
							end
						else
							toTarget(CFrameMon * CFrame.new(0,10,0))
							if game:GetService("Players").LocalPlayer.Data.Level.Value >= 275 and game:GetService("Players").LocalPlayer.Data.Level.Value <= 299 then
								toTarget(CFrame.new(-1230.49341, 7.32281303, -3050.3501, -0.28372404, 1.11183759e-07, -0.958905995, 7.6644703e-08, 1, 9.32706783e-08, 0.958905995, -4.70319321e-08, -0.28372404) * CFrame.new(0,10,0))
								wait(2)
								toTarget(CFrame.new(-1491.22864, 7.47755527, -3194.2019, -0.0407506861, 1.26799691e-08, 0.99916935, -4.24122177e-08, 1, -1.44202748e-08, -0.99916935, -4.29646256e-08, -0.0407506861) * CFrame.new(0,10,0))
								wait(2)
								toTarget(CFrame.new(-1371.93115, 7.40200901, -3379.23804, 0.83229202, 3.40531443e-08, 0.554337442, 1.86150118e-08, 1, -8.93792631e-08, -0.554337442, 8.47086454e-08, 0.83229202) * CFrame.new(0,10,0))
								wait(2)
								toTarget(CFrame.new(-1356.52759, 7.31427479, -3594.57959, 0.982409298, -9.45884482e-10, -0.186740339, -1.34027092e-08, 1, -7.55746186e-08, 0.186740339, 7.67480373e-08, 0.982409298) * CFrame.new(0,10,0))
								wait(2)
								toTarget(CFrame.new(-1116.98181, 7.32406616, -3270.92383, -0.249164313, 9.3330101e-08, -0.968461215, -2.98388088e-08, 1, 1.04046364e-07, 0.968461215, 5.48223724e-08, -0.249164313) * CFrame.new(0,10,0))
								wait(2)
							end
							if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
								toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
							end
						end
					end
				end
			end)
		end
	end
end)

if OldWorld then
    Main.Toggle({
        Title = "Auto Dressrosa Quest",
        Default = false,
        Callback = function(value)
            Auto_Dressrosa_Quest = value
        end,
    })
elseif NewWorld then
    Main.Toggle({
        Title = "Auto Zou Quest",
        Default = false,
        Callback = function(value)
            Auto_Zou_Quest = value
        end,
    })
end

task.spawn(function()
    while wait() do
        if Auto_Dressrosa_Quest and game.Players.LocalPlayer.Data.Level.Value >= 700 and OldWorld then
            Auto_Farm_Level = false
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 and OldWorld then
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        repeat wait() toTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_Dressrosa_Quest
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        EquipWeapon("Key")
                        local Key_Dressrosa = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                        repeat wait() toTarget(Key_Dressrosa) until (Key_Dressrosa.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Auto_Dressrosa_Quest
                        wait(3)
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        ActiveHaki()
                                        EquipWeapon(Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
										if AttackRandomType == 1 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										elseif AttackRandomType == 2 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
										elseif AttackRandomType == 3 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
										elseif AttackRandomType == 4 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
										elseif AttackRandomType == 5 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
										else
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										end
                                    until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Dressrosa_Quest
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
            end)
        end
    end
end)

spawn(function()
	while wait() do
		pcall(function()
			if Auto_Zou_Quest then
				if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
					Auto_Farm_Level = false
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
							Com("F_","TravelZou")
							if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
								if game.Workspace.Enemies:FindFirstChild("rip_indra") then 	
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "rip_indra" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then Farmtween:Stop() end
													NeedAttack = true
													ActiveHaki()
													EquipWeapon(Weapon)
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												end
											until not Auto_Zou_Quest or not v.Parent or v.Humanoid.Health <= 0 
											wait(.5)
											Check = 2
											repeat wait() Com("F_","TravelZou") until Check == 1
											NeedAttack = false
										end
									end
								else
									Com("F_","ZQuestProgress","Check")
									Com("F_","ZQuestProgress","Begin")
								end
							elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
								Com("F_","TravelZou")
							else
								if game.Workspace.Enemies:FindFirstChild("Don Swan") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Don Swan" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then Farmtween:Stop() end
													NeedAttack = true
													ActiveHaki()
													EquipWeapon(Weapon)
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.Transparency = 1
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												end
											until not Auto_Zou_Quest or not v.Parent or v.Humanoid.Health <= 0 
											NeedAttack = false
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
								if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Swan Pirate" then
											pcall(function()
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
														Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Farmtween then Farmtween:Stop() end
														NeedAttack = true
														NeedBring = true
														ActiveHaki()
														EquipWeapon(Weapon)
														PosMon = v.HumanoidRootPart.CFrame
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.Transparency = 1
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													end
												until not v.Parent or v.Humanoid.Health <= 0 or Auto_Zou_Quest == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
												NeedAttack = false
												NeedBring = false
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
												NeedAttack = true
												ActiveHaki()
												EquipWeapon(Weapon)
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.Transparency = 1
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)															
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											end
										until not v.Parent or v.Humanoid.Health <= 0 or Auto_Zou_Quest == false
										NeedAttack = false
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
end)

Main.Label({Title = "[⚙️] Farm Setting"})

Main.Dropdown({
    Title = "Select Weapon Type",
    List = {"Melee","Sword","Fruits"},
    Callback = function(value)
        Weapon = value
    end,
})

Main.Toggle({
    Title = "Enabled Bring Entity",
    Default = true,
    Callback = function(value)
        NeedBring = value
    end,
})

Main.Toggle({
    Title = "Enabled Buso Haki",
    Default = true,
    Callback = function(value)
        BusoHaki = value
    end,
})

spawn(function()
	while task.wait() do
	  	if BusoHaki then 
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
		  		local args = {
					[1] = "Buso"
		  		}
		  		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
	  	end
	end
end)

Main.Toggle({
    Title = "Enabled Random Attack",
    Default = false,
    Callback = function(value)
        RandomPosition = value
    end,
})

Main.Toggle({
    Title = "Enabled Fast Tween",
    Default = false,
    Callback = function(value)
        FastTween = value
    end,
})

Main.Label({Title = "[📌] Auto Mastery Farm"})

Main.Dropdown({
    Title = "Select Skill Type",
    List = {"Z","X","C","V","F"},
    Callback = function(value)
        Skill = value
    end,
})

Main.Toggle({
    Title = "Auto Farm Fruit Mastery",
    Default = false,
    Callback = function(value)
        Auto_Mastery_Fruit = value
    end,
})

Main.Slider({
	Title = "Health ( % )",
	Min = 1 ,
	Max = 100,
	Default = 25,
	Callback = function(value)
		HealthPercent = value
	end,
})	

if OldWorld then
	Main.Label({Title = "[🌊] First World Item"})
	Main.Toggle({
		Title = "Auto Saws Sword",
		Default = false,
		Callback = function(value)
			Auto_Find_Saws = value
		end,
	})
	Main.Toggle({
		Title = "Auto Warden Sword",
		Default = false,
		Callback = function(value)
			Auto_Find_Warden = value
		end,
	})
	Main.Toggle({
		Title = "Auto Saber Sword",
		Default = false,
		Callback = function(value)
			Auto_Find_Saber = value
		end,
	})
	Main.Toggle({
		Title = "Auto Pole Sword",
		Default = false,
		Callback = function(value)
			Auto_Find_Pole = value
		end,
	})
	Main.Toggle({
		Title = "Auto Cool Shades",
		Default = false,
		Callback = function(value)
			Auto_Find_Shades = value
		end,
	})
elseif NewWorld then
	Main.Label({Title = "[🐬] New World Item"})
	Main.Toggle({
		Title = "Auto Rengoku Sword",
		Default = false,
		Callback = function(value)
			Auto_Find_Rengoku = value
		end,
	})
	Main.Toggle({
		Title = "Auto Legendary Sword",
		Default = false,
		Callback = function(value)
			Auto_Legendary_Sword = value
		end,
	})
	Main.Toggle({
		Title = "Auto True Triple Katana",
		Default = false,
		Callback = function(value)
			Auto_TTK = value
		end,
	})
	Main.Toggle({
		Title = "Auto Gravity Cane",
		Default = false,
		Callback = function(value)
			Auto_Gravity_Cane = value
		end,
	})
	Main.Toggle({
		Title = "Auto Dragon Trident",
		Default = false,
		Callback = function(value)
			Auto_Dragon_Trident = value
		end,
	})
	Main.Label({Title = "[🌴] New World Quest"})
	Main.Toggle({
		Title = "Auto Bartilo Quest",
		Default = false,
		Callback = function(value)
			Auto_Bartilo_Quest_Quest = value
		end,
	})
	Main.Toggle({
		Title = "Auto Factory Farm",
		Default = false,
		Callback = function(value)
			Auto_Factory_Farm = value
		end,
	})
	Main.Toggle({
		Title = "Auto Kill Don Swan",
		Default = false,
		Callback = function(value)
			Auto_Kill_DonSwan = value
		end,
	})
	Main.Toggle({
		Title = "Auto Dark Coat",
		Default = false,
		Callback = function(value)
			Auto_Dark_Coat = value
		end,
	})
	Main.Toggle({
		Title = "Auto Farm Ectoplasm",
		Default = false,
		Callback = function(value)
			Auto_Farm_Ectoplasm = value
		end,
	})
elseif ThirdWorld then
	Main.Label({Title = "[🏝️] Third World Item"})
	Main.Toggle({
		Title = "Auto Cavander Sword",
		Default = false,
		Callback = function(value)
			Auto_Cavander_Sword = value
		end,
	})
	Main.Toggle({
		Title = "Auto Buddy Sword",
		Default = false,
		Callback = function(value)
			Auto_Buddy_Sword = value
		end,
	})
	Main.Toggle({
		Title = "Auto Twin Hooks",
		Default = false,
		Callback = function(value)
			Auto_Twin_Hooks = value
		end,
	})
	Main.Toggle({
		Title = "Auto Hallow Scythe",
		Default = false,
		Callback = function(value)
			Auto_Hallow_Scythe = value
		end,
	})
	Main.Toggle({
		Title = "Auto Yama Sword",
		Default = false,
		Callback = function(value)
			Auto_Find_Yama = value
		end,
	})
	Main.Toggle({
		Title = "Auto Tushita Sword",
		Default = false,
		Callback = function(value)
			Auto_Find_Tushita = value
		end,
	})
	Main.Label({Title = "[⚔️] Dual Katana Quest"})
	Main.Toggle({
		Title = "Auto Finished Yama",
		Default = false,
		Callback = function(value)
			Yama_Quest = value
		end,
	})
	Main.Toggle({
		Title = "Auto Finished Tushita",
		Default = false,
		Callback = function(value)
			Tushita_Quest = value
		end,
	})
	Main.Toggle({
		Title = "Auto Get Cursed Katana",
		Default = false,
		Callback = function(value)
			Get_Cursed = value
		end,
	})
	Main.Label({Title = "[🎀] Serpent Bow Item"})
	Main.Toggle({
		Title = "Auto Serpent Bow",
		Default = false,
		Callback = function(value)
			Auto_Serpent_Bow = value
		end,
	})
	Main.Label({Title = "[⛱️] Third World Quest"})
	Main.Toggle({
		Title = "Auto Holy Torch",
		Default = false,
		Callback = function(value)
			Auto_Holy_Torch = value
		end,
	})
	Main.Toggle({
		Title = "Auto Rainbow Haki",
		Default = false,
		Callback = function(value)
			Auto_Rainbow_Haki = value
		end,
	})
	Main.Toggle({
		Title = "Auto Elite Hunter",
		Default = false,
		Callback = function(value)
			Auto_Elite_Hunter = value
		end,
	})
	Main.Toggle({
		Title = "Auto Musketeer Hats",
		Default = false,
		Callback = function(value)
			Auto_Musketeer_Hat = value
		end,
	})

	Main.Label({Title = "[👁️] Observation Quest"})
	Main.Toggle({
		Title = "Auto Farm Observation",
		Default = false,
		Callback = function(value)
			Auto_Farm_Observation = value
		end,
	})
	Main.Toggle({
		Title = "Auto Do Observation V2",
		Default = false,
		Callback = function(value)
			Auto_Observation_V2 = value
		end,
	})

	Main.Label({Title = "[🎂] Farm Cake Prince"})
	Main.Toggle({
		Title = "Auto Cake Prince",
		Default = false,
		Callback = function(value)
			Auto_Cake_Prince = value
		end,
	})
	Main.Toggle({
		Title = "Auto Farm Dough King",
		Default = false,
		Callback = function(value)
			Auto_Dough_King = value
		end,
	})
	Main.Label({Title = "[🦴] Farm Bones"})
	Main.Toggle({
		Title = "Auto Farm Bones",
		Default = false,
		Callback = function(value)
			Auto_Farm_Bone = value
		end,
	})
	Main.Toggle({
		Title = "Auto Random Bones",
		Default = false,
		Callback = function(value)
			Auto_Random_Bone = value
		end,
	})
end

-- [First Sea Item]

task.spawn(function()
    while task.wait() do
		if Auto_Find_Saws and OldWorld then
			pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "The Saw") then
                            if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
                                    EquipWeapon(ActiveHaki)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                until not Auto_Find_Saws or not v.Parent or (v.Humanoid.Health <= 0)
                            end
                        end
                    end
				else
                	toTarget(CFrame.new(- 690.33081054688, 15.09425163269, 1582.2380371094))
                	if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                    	toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                	end
				end
			end)
		end
	end
end)
task.spawn(function()
    while task.wait() do
		if Auto_Find_Warden and OldWorld then
			pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Chief Warden") then
                            if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                until not Auto_Find_Warden or not v.Parent or (v.Humanoid.Health <= 0)
                            end
                        end
                    end
                	toTarget(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562))
                	if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                    	toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                	end
				end
			end)
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if Auto_Find_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
			pcall(function()
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
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												if v.Name == "Mob Leader" then
													repeat task.wait()
														ActiveHaki()
														EquipMelee()
														NeedAttack = true
														if AttackRandomType == 1 then
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
														elseif AttackRandomType == 2 then
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
														elseif AttackRandomType == 3 then
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
														elseif AttackRandomType == 4 then
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
														elseif AttackRandomType == 5 then
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
														else
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
														end
														v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
														v.HumanoidRootPart.Transparency = 1
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														FarmPos = v.HumanoidRootPart.CFrame
														MonFarm = v.Name
														game:GetService'VirtualUser':CaptureController()
														game:vice'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
													until v.Humanoid.Health <= 0 or Auto_Find_Saber == false
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
										if AttackRandomType == 1 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										elseif AttackRandomType == 2 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
										elseif AttackRandomType == 3 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
										elseif AttackRandomType == 4 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
										elseif AttackRandomType == 5 then
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
										else
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										end
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										FarmPos = v.HumanoidRootPart.CFrame
										MonFarm = v.Name
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
									until not v.Parent or v.Humanoid.Health <= 0 or Auto_Find_Saber == false
									if v.Humanoid.Health <= 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
									end
								end
							end
						end
					end
				end
			end)
		end
	end
end)
task.spawn(function()
    while task.wait() do
		if Auto_Find_Pole and OldWorld then
			pcall(function()
				local CFramePole = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							if v.Name == "Thunder God" then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									NeedAttack = true
									NeedBring = true
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									FarmPos = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
								until not Auto_Find_Pole or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					toTarget(CFramePole)
				end
			end)
		end
	end
end)
task.spawn(function()
    while task.wait() do
		if Auto_Find_Shades and OldWorld then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cyborg") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							if v.Name == "Cyborg" then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									NeedAttack = true
									NeedBring = true
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									FarmPos = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
								until not Auto_Find_Shades or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					toTarget(CFrame.new(6130.38086, 9.76513767, 3916.90308, -0.28136304, -1.30420315e-08, -0.959601402, 4.01042088e-09, 1, -1.47669814e-08, 0.959601402, -8.0032887e-09, -0.28136304))
				end
			end)
		end
	end
end)

-- [Second Sea Item]

spawn(function()
    while task.wait() do
        if Auto_Find_Rengoku and NewWorld then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
					toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
									NeedBring = true
                                    EquipWeapon(Weapon)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or Auto_Find_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    toTarget(CFrame.new(5595.99463, 28.9773693, -6712.5332, -0.0710366815, 4.93487518e-09, -0.997473717, -6.86896817e-10, 1, 4.99629182e-09, 0.997473717, 1.04008147e-09, -0.0710366815))
                end
            end)
        end
    end
end)
task.spawn(function()
	while wait() do
		local succ,err = pcall(function()
			if Auto_Legendary_Sword then
				local LS_Remotes = game:GetService("ReplicatedStorage").Remotes.CommF_
				LS_Remotes:InvokeServer("LegendarySwordDealer","1")
				LS_Remotes:InvokeServer("LegendarySwordDealer","2")
				LS_Remotes:InvokeServer("LegendarySwordDealer","3")
			end
		end)
		if not succ then print("Legendary Sword"..err) end
	end
end)
task.spawn(function()
	while wait() do
		local succ,err = pcall(function()
			if Auto_TTK then
				local TTK_Remotes = game:GetService("ReplicatedStorage").Remotes.CommF_
				TTK_Remotes:InvokeServer("MysteriousMan","2")
			end
		end)
		if not succ then print("True Triple Katana"..err) end
	end
end)
task.spawn(function()
    while task.wait() do
		if Auto_Gravity_Cane and OldWorld then
			pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Fajita") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Fajita") then
                            if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                until not Auto_Gravity_Cane or not v.Parent or (v.Humanoid.Health <= 0)
                            end
                        end
                    end
                	toTarget(CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536))
                	if game:GetService("ReplicatedStorage"):FindFirstChild("Fajita") then
                    	toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Fajita").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                	end
				end
			end)
		end
	end
end)

task.spawn(function()
    while task.wait() do
		if Auto_Dragon_Trident and OldWorld then
			pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Tide Keeper") then
                            if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                until not Auto_Dragon_Trident or not v.Parent or (v.Humanoid.Health <= 0)
                            end
                        end
                    end
                	toTarget(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                	if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                    	toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                	end
				end
			end)
		end
	end
end)
task.spawn(function()
    pcall(function()
        while wait(.1) do
            if Auto_Bartilo_Quest and NewWorld then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
					Auto_Farm_Level = false
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            MsBoss = "Swan Pirate"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MsBoss then
                                    pcall(function()
                                        repeat task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(Weapon)
											NeedAttack = true
                                            ActiveHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											if AttackRandomType == 1 then
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
											elseif AttackRandomType == 2 then
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
											elseif AttackRandomType == 3 then
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
											elseif AttackRandomType == 4 then
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
											elseif AttackRandomType == 5 then
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30))
											else
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
											end												
                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                            NeedBring = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo_Quest == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        NeedBring = false
                                    end)
                                end
                            end
                        else
                            repeat toTarget(CFrame.new(932.624451, 156.106079, 1180.27466)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466)).Magnitude <= 10
                        end
                    else
                        repeat toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        MsBoss = "Jeremy"
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MsBoss then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(Weapon)
									NeedAttack = true
                                    ActiveHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end				
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo_Quest == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat toTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat toTarget(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat toTarget(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat toTarget(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat toTarget(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat toTarget(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat toTarget(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat toTarget(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat toTarget(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat toTarget(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not Auto_Bartilo_Quest or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end
        end
    end)
end)
spawn(function()
    while task.wait() do
        if Auto_Factory_Farm and NewWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Core" then
                            if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and Auto_Factory then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    toTarget(CFrame.new(448.46756, 199.356781, -441.389252))
                                until Auto_Factory_Farm == false or v.Humanoid.Health <= 0 or not v.Parent
                            end
                        end
                    end
                else
                    ToTarget(CFrame.new(448.46756, 199.356781, -441.389252))        
                end        
            end)
        end
    end
end)
task.spawn(function()
    while task.wait() do
		if Auto_Kill_DonSwan and NewWorld then
			pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Don Swan") then
                            if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
                                    EquipWeapon(ActiveHaki)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end		
                                until not Auto_Kill_DonSwan or not v.Parent or (v.Humanoid.Health <= 0)
                            end
                        end
                    end
				else
                	toTarget(CFrame.new(2284.912109375, 15.537666320801, 905.48291015625))
                	if game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan") then
                    	toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                	end
				end
			end)
		end
	end
end)
task.spawn(function()
    while task.wait() do
		if Auto_Dark_Coat and NewWorld then
			pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Darkbeard") then
                            if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                                repeat task.wait()
                                    ActiveHaki()
									NeedAttack = true
                                    EquipWeapon(ActiveHaki)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end		
                                until not Auto_Dark_Coat or not v.Parent or (v.Humanoid.Health <= 0)
                            end
                        end
                    end
				else
                	toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                	if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                    	toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                	end
				end
			end)
		end
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			if Auto_Farm_Ectoplasm then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v.Name == "Ship Steward") or (v.Name == "Ship Engineer") or (v.Name == "Ship Deckhand") or ((v.Name == "Ship Officer") and v:FindFirstChild("Humanoid"))) then
							if (v.Humanoid.Health > 0) then
								repeat wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									NeedAttack = true
									NeedBring = true
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									FarmPos = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
								until not Auto_Farm_Ectoplasm or not v.Parent or (v.Humanoid.Health <= 0)
							end
						end
					end
				else
					local EntraceShip = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
					if (EntraceShip > 20000) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
					end
					toTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875));
				end
			end
		end)
	end
end)

-- [Third Sea Item]

spawn(function()
	while wait() do
		pcall(function()
			if Auto_Cavander_Sword then
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Beautiful Pirate [Lv. 1950] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								NeedBring = true
								NeedAttack = true
								ActiveHaki()
								EquipWeapon(Weapon)
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								if AttackRandomType == 1 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								elseif AttackRandomType == 2 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
								elseif AttackRandomType == 3 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
								elseif AttackRandomType == 4 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
								elseif AttackRandomType == 5 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30))
								else
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								end
							until not Auto_Cavander_Sword or v.Humanoid.Health <= 0
							NeedBring = false
							NeedAttack = false
						end
					end
				else
					toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
				end
			end
		end)
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			if Auto_Buddy_Sword then
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								NeedBring = true
								NeedAttack = true
								ActiveHaki()
								EquipWeapon(Weapon)
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								if AttackRandomType == 1 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								elseif AttackRandomType == 2 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
								elseif AttackRandomType == 3 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
								elseif AttackRandomType == 4 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
								elseif AttackRandomType == 5 then
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -30))
								else
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								end
							until not Auto_Buddy_Sword or v.Humanoid.Health <= 0
						end
					end
				else
					toTarget(CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499))
				end
			end
		end)
	end
end)

task.spawn(function()
	while wait() do
		if Auto_Hallow_Scythe then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Soul Reaper" or v.Name == " Soul Reaper [ Lv. 2300 ] [ Raid Boss ]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait()
								ActiveHaki()
								EquipWeapon(Weapon)
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								v.HumanoidRootPart.Transparency = 1
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							until v.Humanoid.Health <= 0 or Auto_Hallow_Scythe == false
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
			end)
		end
	end
end)

spawn(function()
    while wait() do
        if Auto_Find_Yama then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                repeat wait(.1)
                    fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not Auto_Find_Yama
            end
        end
    end
end)

spawn(function()
	while wait() do
		if Auto_Find_Tushita then
			if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						repeat wait()
							ActiveHaki()
							EquipWeapon(Weapon)
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 4))
						until not Auto_Find_Tushita or not v.Parent or v.Humanoid.Health <= 0
					end
				end
			else
				toTarget(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
			end
		end
	end
end)

-- [Doing CDK Quest]

spawn(function()
	while task.wait() do
		pcall(function()
			if Tushita_Quest then
				-- BodyClip()
				--_G.Noclip = true
				if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
					wait(.7)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
					wait(.3)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
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
							task.wait(1)
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -4 then
							if game:GetService("Workspace").Enemies:FindFirstChildOfClass("Model") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude <= 1000 then
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
											repeat task.wait()
												ActiveHaki()
												EquipWeapon(Weapon)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false 
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												NeedAttack = true 
												PosTHQuest = v.HumanoidRootPart.CFrame
												NeedBring = true
												NameTH = v.Name
											until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 2
											NeedAttack = false
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
											repeat task.wait()
												ActiveHaki()
												EquipWeapon(Weapon)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false 
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												NeedAttack = true
											until not Tushita_Quest or not v.Parent or v.Humanoid.Health <= 0 or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
											NeedAttack = false
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
										repeat task.wait()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
										until not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
									end
									NeedAttack = true
									repeat task.wait()
										repeat task.wait() 
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
									repeat task.wait()
										repeat task.wait()
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
										repeat task.wait() 
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
												repeat task.wait()
													ActiveHaki()
													EquipWeapon(Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false 
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													NeedAttack = true
													PosTHQuest = v.HumanoidRootPart.CFrame
													NeedBring = true
													NameTH = v.Name
												until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent
												NeedAttack = false
											end
										else
											NeedBring = false
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

task.spawn(function()
	while task.wait() do
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
							repeat task.wait()
								if not game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
									toTarget(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
								else
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Forest Pirate [Lv. 1825]" then
											PosMon = v.HumanoidRootPart.CFrame
											NeedBring = true
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
													repeat task.wait()
														ActiveHaki()
														EquipWeapon(Weapon)
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														NeedAttack = true
														PosMon = v.HumanoidRootPart.CFrame
														NeedBring = true
													until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
												end
											end
										else
											repeat wait()
												if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
													for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
															repeat task.wait()
																ActiveHaki()
																EquipWeapon(Weapon)
																v.HumanoidRootPart.CanCollide = false
																v.Head.CanCollide = false
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
																NeedAttack = true
																PosMon = v.HumanoidRootPart.CFrame
																NeedBring = true
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
											repeat task.wait()
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Exit.CFrame
											until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
										end
									end
									NeedAttack = true
									EquipWeapon(Weapon)
									if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) ~= 3 then
										repeat task.wait()
											repeat task.wait() 
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
										repeat task.wait()
											repeat task.wait()
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
											repeat task.wait() 
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
												repeat task.wait()
													ActiveHaki()
													EquipWeapon(Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													NeedAttack = true
													PosMon = v.HumanoidRootPart.CFrame
													NeedBring = true
												until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
												NeedAttack = false
											end
										else
											NeedBring = false
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
	while task.wait() do
		pcall(function()
			if Yama_Quest then
				if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
					if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude > 1000 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if string.find(v.Name , "Soul Reaper") then
									repeat task.wait()
										toTarget(v.HumanoidRootPart.CFrame)
									until v.Humanoid.Health <= 0 or not Yama_Quest or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3 or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000)
								end
							end
						elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
							repeat toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) task.wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
							EquipWeapon("Hallow Essence")
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").Humanoid.Health > 0 then
							toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame)
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") < 50 and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and not game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
												repeat task.wait()
													ActiveHaki()
													EquipWeapon(Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													NeedAttack = true
													PosMon = v.HumanoidRootPart.CFrame
													NeedBring = true
												until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent
												NeedAttack = false
											end
										end
									end
								else
									NeedBring = false
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
task.spawn(function()
	while task.wait() do
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
								repeat task.wait()
									if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
										EquipWeapon("Yama")
									elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
										EquipWeapon("Tushita")
									else
										warn("[Warning] : You Don't Have Yama or Tushita")
										wait(5)
									end
									ActiveHaki()
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									NeedAttack = true 
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not Get_Cursed or not v.Parent or v.Humanoid.Health <= 0
								NeedAttack = false
							end
						end
					end
				else
					toTarget(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
					task.wait(.5)
					toTarget(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
				end
			end
		end)
	end
end)

task.spawn(function()
	while wait() do
		if Auto_Serpent_Bow then
			if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == ("Island Empress [Lv. 1675] [Boss]" or v.Name == "Island Empress [Lv. 1675] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
						repeat wait()
							NeedBring = true
							NeedAttack = true
							ActiveHaki()
							EquipWeapon(Weapon)
							PosMon = v.HumanoidRootPart.CFrame
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
						until not Auto_Serpent_Bow or not v.Parent or v.Humanoid.Health <= 0
						NeedBring = false
						NeedAttack = false
					end
				end
			else
				toTarget(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))
			end
		end
	end
end)

-- [Third Sea Quest]

task.spawn(function()
	while wait() do
		if Auto_Holy_Torch then
			if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Holy Torch") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
				print("[Warning] : You Don't Have Torch")			
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

task.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Rainbow_Haki then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Stone [Lv. 1550] [Boss]" then
								repeat wait()
									NeedBring = true
									NeedAttack = true
									ActiveHaki()
									EquipWeapon(Weapon)
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)												
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								NeedBring = false
								NeedAttack = false
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
									NeedBring = true
									NeedAttack = true
									ActiveHaki()
									EquipWeapon(Weapon)
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								NeedBring = false
								NeedAttack = false
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
									NeedBring = true
									NeedAttack = true
									ActiveHaki()
									EquipWeapon(Weapon)
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								NeedBring = false
								NeedAttack = false
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
									NeedBring = true
									NeedAttack = true
									ActiveHaki()
									EquipWeapon(Weapon)
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								NeedBring = false
								NeedAttack = false
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
									NeedBring = true
									NeedAttack = true
									ActiveHaki()
									EquipWeapon(Weapon)
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								NeedBring = false
								NeedAttack = false
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

task.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Elite_Hunter then
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
											NeedAttack = true
											NeedBring = true
											ActiveHaki()
											EquipWeapon(Weapon)
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.HumanoidRootPart.Transparency = 1
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										until Auto_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
										NeedAttack = false
										NeedBring = false
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
		end)
	end
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if Auto_Musketeer_Hat then
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate [Lv. 1825]" then
									repeat wait()
										NeedBring = true
										NeedAttack = true
										ActiveHaki()
										EquipWeapon(Weapon)
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until not Auto_Musketeer_Hat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									NeedBring = false
									NeedAttack = false
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
										NeedBring = true
										NeedAttack = true
										ActiveHaki()
										EquipWeapon(Weapon)
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until not Auto_Musketeer_Hat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									NeedBring = false
									NeedAttack = false
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

-- [Observation Quest]

spawn(function()
	while wait() do
		pcall(function()
			if Auto_Farm_Observation then
				repeat task.wait()
					if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService('VirtualUser'):CaptureController()
						game:GetService('VirtualUser'):SetKeyDown('0x65')
						wait(2)
						game:GetService('VirtualUser'):SetKeyUp('0x65')
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not Auto_Farm_Observation
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if Auto_Farm_Observation then
				if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
					print("Observation Haki : Is Maxed")
					wait(2)
				else
					if NewWorld then
						if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
							if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat task.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
								until Auto_Farm_Observation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat task.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
										wait(1)
									if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and Auto_Farm_Observation_Hop == true then
										game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
									end
								until Auto_Farm_Observation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							toTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
						end
					elseif OldWorld then
						if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
							if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat task.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
								until Auto_Farm_Observation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat task.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
									wait(1)
									if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and Auto_Farm_Observation_Hop == true then
										game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
									end
								until Auto_Farm_Observation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							end
						else
							toTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
						end
					elseif ThirdWorld then
						if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
							if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat task.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
								until Auto_Farm_Observation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							else
								repeat task.wait()
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
									wait(1)
									if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and Auto_Farm_Observation_Hop == true then
										game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
									end
								until Auto_Farm_Observation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
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

-- [Observation V2 Quest]

spawn(function()
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
										NeedBring = true
										NeedAttack = true
										ActiveHaki()
										EquipWeapon(Weapon)
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									until not Auto_Observation_V2 or v.Humanoid.Health <= 0
									NeedBring = false
									NeedAttack = false
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
										NeedBring = true
										NeedAttack = true
										ActiveHaki()
										EquipWeapon(Weapon)
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,Distance_Auto_Farm,0))
									until not Auto_Observation_V2 or v.Humanoid.Health <= 0
									NeedBring = false
									NeedAttack = false
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

-- [Farm Cake Prince]

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Cake_Prince then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
									NeedAttack = true
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    else
                        if KillMob == 0 then
                        end                    
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                ActiveHaki()
                                                EquipWeapon(Weapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false 
                                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
												NeedAttack = true
                                                NeedBring = true
                                                PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
												if AttackRandomType == 1 then
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												elseif AttackRandomType == 2 then
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
												elseif AttackRandomType == 3 then
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
												elseif AttackRandomType == 4 then
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
												elseif AttackRandomType == 5 then
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
												else
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												end
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            until not Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or KillMob == 0
                                        end
                                    end
                                end
                            else
                                NeedBring = false
                                toTarget(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            end
                                        end
                                    end
                                end                       
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                toTarget(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Dough_King and ThirdWorld then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Dough King" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
									NeedAttack = true
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not  Auto_Dough_King or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                	toTarget(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
                end
            end)
        end
    end
end)

-- [Farm Bone]

spawn(function()
    while wait() do 
        if Auto_Farm_Bone and ThirdWorld then
            pcall(function()
				local BoneCFrame = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
                toTarget(BoneCFrame)
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                               repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
									NeedAttack = true
                                    NeedBring = true
                                    PosMonBone = v.HumanoidRootPart.CFrame
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Auto_Farm_Bone or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    NeedBring = false
                    toTarget(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Reborn Skeleton" then
                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Living Zombie" then
                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Demonic Soul" then
                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Posessed Mummy" then
                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
	pcall(function()
		while wait(.1) do
			if Auto_Random_Bone then    
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
			end
		end
	end)
end)

-- [Auto Farm Misc]

Main.Label({Title = "[📦] Auto Farm Chest"})

Main.Toggle({
    Title = "Auto Farm Chest",
    Default = false,
    Callback = function(value)
        Auto_Farm_Chest = value
    end,
})

spawn(function()
    while wait() do
        if Auto_Farm_Chest then
            local v673 = game:GetService("Players");
            local v674 = v673.LocalPlayer;
            local v675 = v674.Character or v674.CharacterAdded:Wait() ;
            local v676 = v675:GetPivot().Position;
            local v677 = game:GetService("CollectionService");
            local v678 = v677:GetTagged("_ChestTagged");
            local v679, v680 = math.huge;
            for v765 = 1, # v678 do
                local v766 = v678[v765];
                local v767 = (v766:GetPivot().Position - v676).Magnitude;
                if (not v766:GetAttribute("IsDisabled") and (v767 < v679)) then
                    v679, v680 = v767, v766;
                end
            end
            if v680 then
                local v840 = v680:GetPivot().Position;
                local v841 = CFrame.new(v840);
                toTargetP(v841);
            end
        end
    end
end)

Main.Label({Title = "[✨] Auto Material Farm"})

if OldWorld then
	TableMaterial = {
		"Magma Ore",
		"Angel Wing",
        "Scrap Metal",
        "Leather",
        "Fish Tail"
	}
elseif NewWorld then
    TableMaterial = {
        "Scrap Metal",
	    "Leather",
	    "Radioactive",
	    "Mystic Droplet",
	    "Magma Ore",
	    "Vampire Fang"
    }
elseif ThirdWorld then
	TableMaterial = {
		"Gunpowder",
		"Mini Tusk",
		"Conjured Cocoa",
		"Fish Tail",
		"Scrap Metal",
		"Dragon Scale",
		"Demonic Wisp"
	}
end

Main.Dropdown({
    Title = "Select Material Type",
    List = TableMaterial,
    Callback = function(value)
        MaterialType = value
    end,
})

Main.Toggle({
    Title = "Auto Farm Material",
    Default = false,
    Callback = function(value)
        Auto_Farm_Materials = value
    end,
})

spawn(function()
    while task.wait() do
        if Auto_Farm_Materials and MaterialType == "Magma Ore" and OldWorld then
            pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Military Spy" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Magma Ore" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
            end)
			elseif Auto_Farm_Materials and MaterialType == "Angel Wing" and OldWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Royal Soldier" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Scrap Metal" and OldWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Brute" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									NeedAttack = true 
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Scrap Metal" or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					toTarget(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Leather" and OldWorld then
                if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Pirate" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
									NeedAttack = true
                                    NeedBring = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Auto_Farm_Materials and MaterialType == "Leather" or not v.Parent or v.Humanoid.Health <= 0
                                NeedBring = true
                            end
                        end
                    end
                else
                	toTarget(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
			elseif Auto_Farm_Materials and MaterialType == "Fish Tail" and OldWorld then
                if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Fishman Captain" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
									NeedAttack = true
                                    NeedBring = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Auto_Farm_Materials and MaterialType == "Fish Tail" or not v.Parent or v.Humanoid.Health <= 0
                                NeedBring = false
                            end
                        end
                    end
                else
                	toTarget(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
            elseif Auto_Farm_Materials and MaterialType == "Scrap Metal" and NewWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Mercenary" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
								   	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
							 	until not Auto_Farm_Materials and MaterialType == "Scrap Metal" or not v.Parent or v.Humanoid.Health <= 0
						  	end
					  	end
				  	end
			  	else
			  		toTarget(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125))
				  	if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
					  	toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
				  	end
			  	end
			elseif Auto_Farm_Materials and MaterialType == "Leather" and NewWorld then
                if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Marine Captain" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
									NeedAttack = true
                                    NeedBring = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not Auto_Farm_Materials and MaterialType == "Leather" or not v.Parent or v.Humanoid.Health <= 0
                                NeedBring = false
                            end
                        end
                    end
                else
                	toTarget(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    end
                end
			elseif Auto_Farm_Materials and MaterialType == "Radioactive" and NewWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Factory Staff" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Radioactive" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(533.22045898438, 128.46876525879, 355.62615966797))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Mystic Droplet" and NewWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Water Fighter" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Mystic Droplet" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-3262.9301757813, 298.69036865234, - 10552.529296875))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Magma Ore" and NewWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Lava Pirate" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Magma Ore" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Vampire Fang" and NewWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Vampire") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Vampire" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Vampire Fang" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(- 5806.1098632813, 16.722528457642, - 1164.4384765625))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Vampire") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Vampire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Gunpowder" and ThirdWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Pistol Billionaire" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Gunpowder" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875) * CFrame.new(0,10,0))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Mini Tusk" and ThirdWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Mythological Pirate" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Mini Tusk" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125) * CFrame.new(0,10,0))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Conjured Cocoa" and ThirdWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Conjured Cocoa" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125) * CFrame.new(0,10,0))
				end
			elseif Auto_Farm_Materials and MaterialType == "Fish Tail" and ThirdWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Fishman Raider" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Fish Tail" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625) * CFrame.new(0,10,0))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Raider") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Raider").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Scrap Metal" and ThirdWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Jungle Pirate" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Scrap Metal" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625) * CFrame.new(0,10,0))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Dragon Scale" and ThirdWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Dragon Crew Archer" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Dragon Scale" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125) * CFrame.new(0,10,0))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			elseif Auto_Farm_Materials and MaterialType == "Demonic Wisp" and ThirdWorld then
				if game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Demonic Soul" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									ActiveHaki()
									EquipWeapon(Weapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false 
									NeedAttack = true
									NeedBring = true
									PosMon = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								until not Auto_Farm_Materials and MaterialType == "Demonic Wisp" or not v.Parent or v.Humanoid.Health <= 0
								NeedBring = false
							end
						end
					end
				else
					toTarget(CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625) * CFrame.new(0,10,0))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					end
				end
			end
        end
    end)

Main.Label({Title = "[🏰] Auto Bosses Farm"})

if OldWorld then
    TableBoss = {
        "The Gorilla King",
        "Bobby",
        "Yeti",
        "Mob Leader",
        "Vice Admiral",
        "Warden",
        "Chief Warden",
        "Swan",
        "Magma Admiral",
        "Fishman Lord",
        "Wysper",
        "Thunder God",
        "Cyborg",
        "Saber Expert"
    }
elseif NewWorld then
    TableBoss = {
        "Diamond",
        "Jeremy",
        "Fajita",
        "Don Swan",
        "Smoke Admiral",
        "Cursed Captain",
        "Darkbeard",
        "Order",
        "Awakened Ice Admiral",
        "Tide Keeper"
    }
elseif ThirdWorld then
    TableBoss = {
        "Stone",
        "Hydra Leader",
        "Kilo Admiral",
        "Captain Elephant",
        "Beautiful Pirate",
        "rip_indra True Form",
        "Longma",
        "Soul Reaper",
        "Cake Queen"
    }
end

Main.Dropdown({
    Title = "Select Bosses Type",
    List = TableBoss,
    Callback = function(value)
        SelectBoss = value
    end,
})

Main.Toggle({
    Title = "Auto Bosses Select",
    Default = false,
    Callback = function(value)
        Auto_Bosses_Select = value
    end,
})

spawn(function()
    while wait() do
        if Auto_Bosses_Select then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == SelectBoss) then
                            if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
                                repeat wait()
                                    ActiveHaki()
                                    EquipWeapon(Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									if AttackRandomType == 1 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									elseif AttackRandomType == 2 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0))
									elseif AttackRandomType == 3 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30))
									elseif AttackRandomType == 4 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0))
									elseif AttackRandomType == 5 then
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, -30))
									else
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not Auto_Bosses_Select or not v.Parent or (v.Humanoid.Health <= 0)
                            end
                        end
                    end
                elseif game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                end
            end)
        end
    end
end)

LoadScripts = true
print("Pictures hub loading success in : "..tick())
