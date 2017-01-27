local action = {}

function action.nothing()
end

function action.remove_speed(data)
    local player, pdata = game.players[data.player_index], global.player_data[data.player_index]
    --Since we added player in a previous tick we need to make sure the player is still valid.
    if player and player.valid and player.character then
        --change the modifier back only if it hasn't changes since we changed it earlier.
        local cur_speed = player.character_running_speed_modifier
		local cur_mining = player.character_mining_speed_modifier
		local cur_health = player.character_health_bonus
		--current issue -----2x modifier won't reset value
		player.character_running_speed_modifier = data.modifier_new == cur_speed and data.modifier_old or cur_speed
		player.character_mining_speed_modifier = data.mining_new == cur_mining and data.mining_old or cur_mining
		player.chatacter_health_bonus = data.health_new == cur_health and data.health_old or cur_health
		player.print("the drugs have worn off")
    end
end

function action.add_speed(player, tick)
    --Add everything we will need to a data table
    local data = {}
    data.expires = tick + 240 --4 seconds from now
    data.action = "remove_speed"
    data.player_index = player.index
    data.modifier_old = player.character_running_speed_modifier
    data.modifier_new = player.character_running_speed_modifier + 0.5
    player.character_running_speed_modifier = data.modifier_new
    return data
end

function action.teleport(player)
    local data = {}
	local plx = math.random(player.position.x-25, player.position.y+25)
	local ply = math.random(player.position.x-25, player.position.y+25)
	--good and bad, look at surface.find_non_colliding_position
	player.teleport(player.surface.find_non_colliding_position("player",{plx, ply},10,1))
	return data
end

function action.add_100_health(player, tick)
	local data = {}
	data.expires = tick + 240
	data.health_old = player.character_health_bonus
	data.health_new = player.character_health_bonus + 100
	player.character_health_bonus = data.health_new
	return data
end

function action.mining_speed(player)
    data.mining_old = player.character_mining_speed_modifier
    data.mining_new = player.character_mining_speed_modifier + 0.5
end

local function on_trigger_created_entity(event)
    game.print("Fires on any TCE event")
    --Not the recomended way of doing this but we will go with it for testing
    local player = game.players[1]
    --Only affect players with characters
    if player and player.character then
        local data = {}
        local stack_name = player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name
        if stack_name == "Caffeine-Capsule" then
            data = action.add_speed(player, event.tick)
        elseif stack_name == "Nicotine-Capsule" then
			data = action.teleport(player)
		elseif stack_name == "Alcohol-Capsule" then
			data = action.add_speed(player, event.tick)
		elseif stack_name == "Marijuana-Capsule" then
			data = action.teleport(player)
		elseif stack_name == "Cocaine-Capsule" then
			data = action.add_speed(player, event.tick)
		elseif stack_name == "Opium-Capsule" then
			data = action.teleport(player)
		elseif stack_name == "Heroin-Capsule" then
			data = action.add_speed(player, event.tick)
		elseif stack_name == "Methamphetamine-Capsule" then
			data = action.teleport(player)
		elseif stack_name == "MDMA-Capsule" then
			data = action.add_speed(player, event.tick)
		elseif stack_name == "LSD-Capsule" then
			data = action.add_speed(player, event.tick)
		end
        --Only add to queue if it expires.
        if data.expires then
            --Get or create a table of queues at position [expires]
            global.tick_queue[data.expires] = global.tick_queue[data.expires] or {}
            --Make local refrence to our queue
            local queue = global.tick_queue[data.expires]
            --Insert a new queue into table at expires tick position
            queue[#queue+1] = data
        end
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
