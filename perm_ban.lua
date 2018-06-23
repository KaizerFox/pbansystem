function kickF(plr)
	spawn(function()
		if plr.Parent ~= nil then
			local newChar = dummy:Clone()
			local model1 = Instance.new("Model")
			model1.Parent = game:GetService("Workspace")
			local model2 = Instance.new("Model")
			model2.Parent = model1
			newChar.Parent = model2
			newChar.HumanoidRootPart.Position = Vector3.new(math.random(999000, 1001000), 10000, 0)
			for i = 1,4 do
				local Plat = Instance.new('SkateboardPlatform')
				Plat.Parent = model1
				Plat.Position = newChar.HumanoidRootPart.Position
				Plat.Name = "MyPlat"
				Plat.Size = Vector3.new(10, 1.2, 10)
				Plat.Transparency = 1
			end
			plr.Character = newChar
			local PART = Instance.new('Part')
			PART.Parent = newChar
			PART.CFrame = newChar.HumanoidRootPart.CFrame - Vector3.new(0, 3, 0)
			PART.Size = Vector3.new(10, 1.2, 10)
			PART.Anchored = true
			PART.Transparency = 1
			if model1:FindFirstChild("SkateboardPlatform") then
				model1.SkateboardPlatform.CFrame = newChar.HumanoidRootPart.CFrame
			end
			wait(0.4)
			if newChar then
				newChar:Destroy()
			end
			kickF(plr)
		end
	end) 
end


pban = {} --inside the save file for IY
pban = readfile("IY.txt")
for i,v in pairs(game.Players:GetChildren()) do
if pban[asd.UserId] then
kickF(v)
end
game.Players.OnPlayerAdded:connect(function(f)
if pban[asdd.UserId] then
banfunction(f)
end)
    
    --yes
        
        
        --aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
        
