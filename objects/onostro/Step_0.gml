/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if Parried{state = "PARRIED"; image_index = 0; Parried = false;}

switch(state)
{
	case("IDLE"):
		sprite_index = sNostro1Idle;
		subState = "IDLE";
		Track = true;
	break;
	case("CASTTURRET"):
		sprite_index = sNostro1Cast;
	break;
	case("CASTPILLAR"):
		sprite_index = sNostro1Cast;
	break;
	case("KICK"):
		Track = false;
		sprite_index = sNostro1CloakKick1;
	break;
	case("BASECOMBO"):
		Track = false;
		switch(subState)
		{
			case("BASE1"):
				sprite_index = sNostro1CloakCombo1;
			break;
			case("BASE2"):
				sprite_index = sNostro1CloakCombo2;
			break;
			case("BASE3"):
				sprite_index = sNostro1CloakCombo3;
			break;
		}
	break;
	case("PARRIED"):
		switch(subState)
		{
			case("BASE1"):
				sprite_index = sNostro1CloakCombo1Parried;
			break;
			case("BASE2"):
				sprite_index = sNostro1CloakCombo2Parried;
			break;
			case("BASE3"):
				sprite_index = sNostro1CloakCombo3Parried;
			break;
			case("KICK"):
				state = "KICK";
			break;
		}
	break;
	
	
}