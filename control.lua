require "util"

global.isTimerOn = false

 script.on_event(defines.events.on_trigger_created_entity, function(event)
	 game.print("the trigger is working!")
	 global.isTimerOn = true
	 global.now = game.tick
	 global.time = game.tick
	 local player = game.players[1]
	 player.running_speed = .5
	 
 end)

 script.on_event(defines.events.on_tick, function(event)
	if global.isTimerOn == true then
		global.now = global.now + 1
			if global.now == global.time + 100 then
				game.print("the timer works after some ticks")
				game.players[event.player.index].running_speed = 0.15
				global.isTimerOn = false
			end
		end
 end)