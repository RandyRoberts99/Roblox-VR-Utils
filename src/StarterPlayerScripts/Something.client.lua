--Services

-- Modules
local DataCache = require(game.ReplicatedStorage.Modules.DataCache)

-- Remotes
local DataFetch = game.ReplicatedStorage.Remotes.Functions.DataFetch

-- Objects
local Player = Players.LocalPlayer
local PlayerData = DataCache[player.UserId]

Player.CharacterAdded:Connect(function()
    DataCache[player.UserId] = DataFetch:InvokeServer(player)
end)