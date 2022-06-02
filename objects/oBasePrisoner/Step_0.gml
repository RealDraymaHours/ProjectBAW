/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch(state)
{
	case("IDLE"):
	sprite_index = sBasePrisonerIdle;
		if distance_to_object(oPlayer) > 40{state = "RUN"}
	break;
	case("RUN"):
		move_towards_point(oPlayer.x,y,1);
		sprite_index = sBasePrisonerRun;
		if distance_to_object(oPlayer) > 5{state = "ATTACK" image_index = 0; hspeed = 0; vspeed = 0;}
	break;
	case("ATTACK"):
		sprite_index = sBasePrisonerSlam;
		if distance_to_object(oPlayer) > 20{state = "RUN"}
	break;
	case("PARRIED"):
		sprite_index = sBasePrisonerParried;
	break;
	case("STAGGERED"):
	break;
}