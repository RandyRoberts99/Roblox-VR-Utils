-- Services
local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")
local DataStore = DataStoreService:GetDataStore("TestData1")

-- Modules
local DataCache = require(game.ReplicatedStorage.Modules.DataCache)
local DefaultData = require(game.ServerStorage.Modules:WaitForChild("DefaultData"))

Players.PlayerAdded:Connect(function(player)
	DataCache[player.UserId] = DataStore:GetAsync(player.UserId) or DefaultData
end)

Players.PlayerRemoving:Connect(function(player)
	DataStore:SetAsync(player.UserId, DataCache[player.UserId])
	DataCache[player.UserId] = nil
end)