local action = {}
function action.remove_speed(data)
    local player = game.players[data.player_index]
    player.running_speed = .15
    game.print("the drugs have worn off")
end

local function on_trigger_created_entity(event)
    -- will currently fire on any tce event
    game.print("the trigger is working!")
    local player = game.players[1]  --for testing.......
    local expires = event.tick + 120   -- expires 2 seconds from now
    player.running_speed = .5
    global.tick_queue[expires] = {action="remove_speed", player_index=player.index}
end
script.on_event(defines.events.on_trigger_created_entity, on_trigger_created_entity)

local function on_tick(event)
    local queue = global.tick_queue
    if queue[event.tick] then
        action[queue[event.tick].action](queue[event.tick])
        queue[event.tick] = nil
        --convuletd but it works! :)
    end
end
script.on_event(defines.events.on_tick, on_tick)

local function new_player(player_index)
    local pd = global.player_data
    if player_index then
        pd[player_index] = pd[player_index] or {}
    else
        for index in pairs(game.players) do
            pd[index] = pd[index] or {}
        end
    end
end

local function on_player_created(event)
    new_player(event.player_index)
end
script.on_event(defines.events.on_player_created, on_player_created)

local function on_init()
    global = {}
    global.tick_queue = {}
    global.player_data = {}
    new_player()
end
script.on_init(on_init)
