local function on_trigger_created_entity(event)
    game.print("the trigger is working!")
    global.isTimerOn = true
    global.now = game.tick
    global.time = game.tick
    local player = game.players[1]
    player.running_speed = .5
end
script.on_event(defines.events.on_trigger_created_entity, on_trigger_created_entity)

local function on_tick(event)
    if global.isTimerOn == true then
        global.now = global.now + 1
        if global.now == global.time + 100 then
            game.print("the timer works after some ticks")
            game.players[event.player.index].running_speed = 0.15
            global.isTimerOn = false
        end
    end
end
script.on_event(defines.events.on_tick, on_tick)

local function on_init()
    global.isTimerOn = false
end
script.on_init(on_init)
