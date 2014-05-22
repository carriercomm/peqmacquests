function event_spawn(e)
	eq.spawn_condition("oot",0,1,0);
	eq.spawn_condition("oot",0,2,0);
end

function event_signal(e)
	local count = eq.get_entity_list():CountClient();
	if(count == 1) then
		local zone_time = eq.get_zone_time(); -- Time here is off by 1, so 6AM = 5.	
		local hour = zone_time["zone_hour"] + 1;
		if(hour ~= 7 and hour ~= 19 and hour ~= 1 and hour ~= 13) then
			eq.spawn_condition("oot",0,1,0);
			eq.spawn_condition("oot",0,2,0);
			e.self:Shout("Boat passengers: Sorry, you missed the boat and should be at safe coords.");
		else
			e.self:Shout("Letting spawn_events handle condition!");
		end
	end			
end