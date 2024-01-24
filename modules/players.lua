
global.data = "ma data"


local function on_player_created(event)

    

    local LuaPlayer = game.players[event.player_index]

    if LuaPlayer then 

        local data = {mod_name="RitnDemo", data={
            type = "event",
            player_name = LuaPlayer.name
        }, e=event}

        --remote.call('RitnLog', 'trace_event', data)

        log('[RitnDemo] > ' .. game.table_to_json(data)) 
        

    end

    

end



---------------------------------------------------------------------------------------------
local module = {events = {}}
---------------------------------------------------------------------------------------------
-- Events Player
module.events[defines.events.on_player_created] = on_player_created
---------------------------------------------------------------------------------------------
return module