local SyncLibrary = require(game.ReplicatedStorage.Libraries.SyncLibrary.SyncLibrary)
local SyncEvent = require(game.ReplicatedStorage.Remotes.Events.SyncEvent)

SyncEvent.OnServerEvent:Connect(function(player, request, path, newValue, ...)

    local args = {...}

    if SyncLibrary.Validate(player, request, path, newValue, args) then
        SyncLibrary.Modify(player, request, path, newValue)
    end
end)