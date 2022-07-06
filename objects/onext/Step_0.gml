if (place_meeting(x, y, p)) {
    if (xx != -1) { p.x = xx; }
    if (yy != -1) { p.y = yy; }
    global.StopMoving = true;
    room_goto_transition(next_room, kind, 60);
	oPlayer.state = "IDLE";
	
}

