/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if Parried{state = "PARRIED"; image_index = 0; Parried = false;}

if ((Stagger > StaggerMax) && (state != "STAGGERED") && state != "NOWINGS")
{
	audio_play_sound(sndGuardbreak, 1000, false);
	state = "STAGGERED";
	StaggerRegen = 10;
	StaggerRegenTime = 0.1;
	alarm[11] = 1;
	image_index = 0;
	sprite_index = sNostro2AngleGrapplePossible;
	
	speed = 0;
	hspeed = 0;
	vspeed = 0;
	
}
else if state != "STAGGERED"
{
	StaggerRegen = 1;
	StaggerRegenTime = 120;
}


switch(state)
{
	case("IDLE"):
		sprite_index = sNostro2AngleIdle;
		Track = true;
		CameraZoom(10,10);
		
		if ((distance_to_object(p) > 50))
		{
			move_towards_point(p.x,y,2);	
		}
		else
		{
			hspeed = 0;
			vspeed = 0;
			speed = 0;
		}
		
	break;
	case("LIGHTCIRCLE"):
		if subState == "START"{alarm[1] = 5; subState = "GOING";}
	break;
	case("LIGHTCHASE"):
		switch(subState)
		{
			case("START"):
				subState = "GO";
				alarm[2] = 10;
			break;
		}
	break;
	case("LAUNCH"):
		Track = false;
		
		switch(subState)
		{
			case("FALL"):
				CameraZoom(5,10);
				if (image_xscale == 1) 
				{
					if (x > ArenaEnd - 60)
					{
						speed = 0;
						hspeed = 0;
						vspeed = 0;
					}
					else
					{
						hspeed = 4;	
					}
				}
				else if (image_xscale == -1)
				{
					if (x < ArenaStart + 60)
					{
						hspeed = 0;
						vspeed = 0;
						speed = 0;
					}
					else
					{
						hspeed = -4;
					}
				}
			break;
			case("START"):
				CameraZoom(7,10);
				if ((distance_to_point(ArenaEnd,y)) > (distance_to_point(ArenaStart,y)))
				{
					subState = "GORIGHT";	
				}
				else
				{
					subState = "GOLEFT";
				}
			break;
			case("WAIT"):
				sprite_index = sNostro2AngleLaunchStart;
			break;
			case("GOLEFT"):

				if x > ArenaStart + 60
				{
					image_xscale = -1;
					move_towards_point(ArenaStart + 60,y,8);
					sprite_index = sNostro2AngleIdle;
				}
				else
				{
					hspeed = 0;
					vspeed = 0;
					image_xscale = 1;
					image_index = 0;
					subState = "WAIT";				
				}
			break;
			case("LAUNCHLEFT"):
				if x < ArenaEnd - 60
				{
					active = true;
					image_xscale = 1;
					move_towards_point(ArenaEnd - 60,y,8);
					sprite_index = sNostro2AngleLaunchGoing;
				}
				else
				{
					active = false;
					hspeed = 0;
					vspeed = 0;
					subState = "GORIGHT";
					
				}
				
				if distance_to_object(p) < 200
				{
					CameraZoom(10,6);	
				}
				else
				{
					CameraZoom(5,6);
				}
				
			break;
			case("GORIGHT"):
				if x < ArenaEnd - 60
				{
					
					image_xscale = 1;
					move_towards_point(ArenaEnd - 60,y,8);
					sprite_index = sNostro2AngleIdle;
				}
				else
				{
					hspeed = 0;
					vspeed = 0;
					image_xscale = -1;
					image_index = 0;
					subState = "WAIT";	
				}
			break;
			case("LAUNCHRIGHT"):
				if x > ArenaStart + 60
				{
					active = true;
					image_xscale = -1;
					hspeed = -8;
					sprite_index = sNostro2AngleLaunchGoing;
				}
				else
				{
					active = false;
					hspeed = 0;
					subState = "GOLEFT";
					
				}
				
				if distance_to_object(p) < 200
				{
					CameraZoom(10,6);	
				}
				else
				{
					CameraZoom(5,6);
				}
			break;
			
			
				
		}
	break;
	case("BASECOMBO"):
		switch(subState)
		{
			case("BASE0"):
				sprite_index = sNostro2AngleComboStart;
			break;
			case("BASE1"):
				sprite_index = sNostro2AngleCombo1;
			break;
			case("BASE2"):
				sprite_index = sNostro2AngleCombo2;
			break;
			case("BASE3"):
				sprite_index = sNostro2AngleCombo1;
			break;
			case("BASE4"):
				sprite_index = sNostro2AngleCombo2;
			break;
			case("BASE5"):
				sprite_index = sNostro2AngleCombo3;
			break;
		}
			if ((moving) && (distance_to_object(p) > 50))
			{
				move_towards_point(p.x,y,3);	
			}
			else
			{
				hspeed = 0;
				vspeed = 0;
				speed = 0;
			}
	break;
	case("NOWINGS"):
		Stagger = 0;
		y = NoWingsY;
		switch(specialState)
		{
			case("IDLE"):
				sprite_index = sNostro1NoCloakIdle;
				Track = true;
			break;
			case("RIPOST"):
				if sprite_index != sNostro1NoCloakRipost{image_index = 0;}
				Parry = false;
				sprite_index = sNostro1NoCloakRipost;
			break;
			case("KICK"):
				Track = false;
				sprite_index = sNostro1NoCloakKick;
			break;
			case("PARRY"):
				sprite_index = sNostro1NoCloakParry;
			break;
			case("BASECOMBO"):
				Track = false;
				switch(subState)
				{
					case("SBASE1"):
						sprite_index = sNostro1NoCloakCombo1;
					break;
					case("SBASE2"):
						sprite_index = sNostro1NoCloakCombo2;
					break;
					case("SBASE3"):
						sprite_index = sNostro1NoCloakCombo3;
					break;
				}
			break;
			case("PARRIED"):
			switch(subState)
			{
				case("SBASE1"):
					sprite_index = sNostro1NoCloakCombo1Parried;
				break;
				case("SBASE2"):
					sprite_index = sNostro1NoCloakCombo2Parried;
				break;
				case("SBASE3"):
					sprite_index = sNostro1NoCloakCombo3Parried;
				break;
				case("KICK"):
					specialState = "IDLE";
				break;
			}
		break;
		}
	break;
	case("PARRIED"):
		switch(subState)
		{
			case("BASE1"):
				sprite_index = sNostro2AngleCombo1Parried;
			break;
			case("BASE2"):
				sprite_index = sNostro2AngleCombo2Parried;
			break;
			case("BASE3"):
				sprite_index = sNostro2AngleCombo1Parried;
			break;
			case("BASE4"):
				sprite_index = sNostro2AngleCombo2Parried;
			break;
			case("BASE5"):
				sprite_index = sNostro2AngleCombo3Parried;
			break;
			
			case("SBASE1"):
			case("SBASE2"):
			case("SBASE3"):
			case("KICK"):
				state = "NOWINGS";
				specialState = "PARRIED";
			break;
		}
	break;
	case("RIPOST"):
		state = "NOWINGS";
		subState = "RIPOST";
		specialState = "RIPOST";
	break;
	case("STAGGERED"):
		if place_meeting(x,y,oGrabNoGhost)
		{
			instance_destroy(oNostroLightBullet);
			instance_destroy(oNostroLightPillar);
			instance_destroy(oNostroLightTurret);
			
			instance_destroy(oGrabNoGhost);
			instance_destroy(t);
			instance_destroy(oPlayer);
				
			
			Animation = instance_create(x,y,oGrappleAnimation);
			Animation.Caster = self;
			Animation.alarm[0] = 205;
			Animation.TheSequence = seqNostro2Grapple;
				
			state = "GRAPPLE";
		}
	break;
	case("RETURNTOWINGS"):
		sprite_index = sNostro2BackToWings;
	break;
}



if ((Health < 0) && (!instance_exists(oGrappleAnimation)))
{
	instance_destroy();
}