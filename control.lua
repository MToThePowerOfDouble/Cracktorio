local action = {}
function action.remove_speed(data)
    local player = game.players[data.player_index]
    --Since we added player in a previous tick we need to make sure the player is still valid.
    if player and player.valid then
        player.running_speed = .15
        player.print("the drugs have worn off")
    end
end

local function on_trigger_created_entity(event)
    game.print("Fires on any TCE event")
    --Not the recomended way of doing this but we will go with it for testing
    local player = game.players[1]
    --When does this effect expire
    local expires = event.tick + 120 --2 seconds from now
    --What we are changing
    player.running_speed = .5
    --Get or create a table of queues at position [expires]
    global.tick_queue[expires] = global.tick_queue[expires] or {}
    --Make local refrence to our queue
    local queue = global.tick_queue[expires]
    --Insert a new queue into table at expires tick position
    queue[#queue+1] = {
        action="remove_speed", --The action we want to do when it expires
        player_index=player.index, --The player this action affects
        expires=expires --The tick it expires on
    }
end
script.on_event(defines.events.on_trigger_created_entity, on_trigger_created_entity)

local function on_tick(event)
    --Local refrence to to our queue
    if global.tick_queue[event.tick] then
        local queue = global.tick_queue[event.tick]
        --Loop through all items in the queue for this tick
        for _, ind_queue in pairs(queue) do
            --Perform the action associated with this, pass the ind_queue as parameter
            action[ind_queue.action](ind_queue)
        end
        --Delete the queue for this position, it isn't needed anymore
        global.queue[event.tick]=nil
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
