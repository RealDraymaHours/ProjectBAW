/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

y = originY;

if Parried{state = "PARRIED"; image_index = 0; Parried = false;}

if ((Stagger > StaggerMax) && (state != "STAGGERED"))
{
	audio_play_sound(sndGuardbreak, 1000, false);
	state = "STAGGERED";
	StaggerRegen = 20;
	StaggerRegenTime = 0.1;
	alarm[11] = 1;
	image_index = 0;
	sprite_index = sNostro1CloakGrapplePossible;
}
else if state != "STAGGERED"
{
	StaggerRegen = 1;
	StaggerRegenTime = 60;
}

if ((!Knockback) && (!GuardBreak)) 
{
	switch(state)
	{
		case("IDLE"):
			sprite_index = sNostro1Idle;
			subState = "IDLE";
			Track = true;
		break;
		case("PARRY"):
				sprite_index = sNostro1CloakParry;

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
		case("RIPOST"):
			if sprite_index != sNostro1CloakRipost{image_index = 0;}
			Parry = false;
			sprite_index = sNostro1CloakRipost;
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
					state = "IDLE";
				break;
			}
		break;
		case("STAGGERED"):
			if place_meeting(x,y,oGrabNoGhost)
			{
				instance_destroy(oGrabNoGhost);
				instance_destroy(t);
				instance_destroy(oPlayer);
				
				
				Animation = instance_create(x,y,oGrappleAnimation);
				Animation.Caster = self;
				Animation.alarm[0] = 155;
				Animation.TheSequence = seqNostro1Grapple;
				
				state = "GRAPPLE";
			}
		break;
	
	
	}
}
else
{
	if GuardBreak
	{
		sprite_index = sNostro1GuardBreak;	
		if Parry{sprite_index = 0; audio_play_sound(sndGuardbreak,1000,false);}
		Parry = false;
	}
	else
	{
		sprite_index = sNostro1Knockback;
	}
	
	state = "IDLE";
	subState = "IDLE";
}

if ((Health <= 0) && (!instance_exists(oGrappleAnimation)))
{
	instance_destroy();
}