/// @description  Transition


	step++;

	if (step > time) { instance_destroy(); }

	if (!surface_exists(surf_start) || !surface_exists(surf_end)) {
	    if (room != next_room) { room_goto(next_room);}
		surface_free(application_surface); 
		instance_destroy(sysTransition);	    
	}

