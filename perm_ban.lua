pban = {} --inside the save file for IY
pban = readfile("IY.txt")
for i,asd in pairs(game.Players:GetChildren()) do
if pban[asd.UserId] then
banfunction(asd)
end
game.Players.OnPlayerAdded:connect(function(asdd)
if pban[asdd.UserId] then
banfunction(asdd)
end)
    
    --yes
