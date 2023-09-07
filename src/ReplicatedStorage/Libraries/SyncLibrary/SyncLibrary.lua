
local DataCache = require(game.ReplicatedStorage.Modules.DataCache)
local SyncRequests = require(game.ReplicatedStorage.Modules.SyncRequests)

local SyncEvent = game.ReplicatedStorage.Remotes:WaitForChild("SyncEvent")

--Goals: Validate the players request to modify data

local SyncLibrary = {

    Validate = function(player, request, newValue)

        if SyncRequests[request](player, newValue) then
            return true
        else
            return false
        end
    end,

    Modify = function(player, request, args)
        
    end,

    Rollback = function(player, request, args)
        
    end,
}

return SyncLibrary