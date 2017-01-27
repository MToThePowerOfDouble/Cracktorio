local action = {}
function action.remove_speed(data)
    local player, pdata = game.players[data.player_index], global.player_data[data.player_index]
    --Since we added player in a previous tick we need to make sure the player is still valid.
    if player and player.valid and player.character then
		--change the modifier back only if it hasn't changes since we changed it earlier.
		local cur_speed = player.character_running_speed_modifier
		local cur_mining = player.character_mining_speed_modifier
		--current issue -----2x modifier won't reset value
		player.character_running_speed_modifier = data.modifier_new == cur_speed and data.modifier_old or cur_speed
		player.character_mining_speed_modifier = data.mining_new == cur_mining and data.mining_old or cur_mining
		player.print("the drugs have worn off")
    end
end

local function on_trigger_created_entity(event)
    game.print("Fires on any TCE event")
    --Not the recomended way of doing this but we will go with it for testing
    local player = game.players[1]
    --Only affect players with characters
    if player and player.character then
        --Add everything we will need to a data table
        local data = {}
        --When does this effect expire
        data.expires = event.tick + 240 --4 seconds from now
        --What are we changing
        data.action = "remove_speed"
        data.player_index = player.index
        data.modifier_old = player.character_running_speed_modifier
		data.modifier_new = player.character_running_speed_modifier + 0.5
		data.mining_old = player.character_mining_speed_modifier
		data.mining_new = player.character_mining_speed_modifier + 0.5
		--Change the current modifier value to the new value
		--Determines what drug is being used
		local player_stack = player.cursor_stack.name
		if player_stack == "Caffeine-Capsule" then
			player.character_running_speed_modifier = data.modifier_new
		end
		if player_stack == "Nicotine-Capsule" then
			player.character_mining_speed_modifier = data.mining_new
		end
			--Get or create a table of queues at position [expires]
			global.tick_queue[data.expires] = global.tick_queue[data.expires] or {}
        --Make local refrence to our queue
        local queue = global.tick_queue[data.expires]
        --Insert a new queue into table at expires tick position
        queue[#queue+1] = data
    end
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
        global.tick_queue[event.tick]=nil
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
