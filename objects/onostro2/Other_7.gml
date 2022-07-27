

function PickState()
{
	rnd = irandom(4);
	
	if rnd != prevRND
	{
		switch(rnd)
		{
			case(0):
				state = "BASECOMBO";
				subState = "BASE0";
				moving = true;
			break
			case(1):
				if instance_number(oNostroLightTurret) < 3
				{
					state = "LIGHTCIRCLE";
					subState = "START";
			
					sprite_index = sNostro2AngleCast;
			
					LightX = p.x - 150;
					LightY = p.y;
				}
				else
				{
					state = "BASECOMBO";
					subState = "BASE0";
					moving = true;
				}
			break;
			case(2):
				state ="LIGHTCHASE";
				subState = "START";
			
				sprite_index = sNostro2AngleCastChase;
			break;
			case(3):
				state = "LIGHTPILLAR";
				subState = "START";
			
				LightPillarCount = 0;
			
				sprite_index = sNostro2AngleCastPillarDown;		
			
				alarm[3] = 10;
			break;
			case(4):
				if instance_exists(oNostroLightPillar)
				{
					state = "BASECOMBO";
					subState = "BASE0";
					moving = true;
				}
				else
				{
					state = "LAUNCH";
					subState = "START";
				}
			break;
		}
	}
	else
	{
		state = "IDLE";
		subState = "IDLE";
	}
	
	prevRND = rnd;
}

function PickStateSpecial()
{
	rnd = irandom(10);
	switch(rnd)
	{
		case(0):
		case(1):
		case(2):
		case(3):
		case(4):
			specialState = "BASECOMBO";
			subState = "SBASE1";
		break;
		case(5):
		case(6):
			subState = "PARRY";
			specialState = "PARRY";
			image_index = 1;
		break;
		case(7):
		case(8):
		case(9):
		case(10):
			specialState = "KICK";
			subState = "KICK";
			sekiro_warning();
		break;
	}	
}

switch(state)
{
	case("SPAWN1"):
		sprite_index = sNostro1CloakPhaseChange2;
		state = "SPAWN2";
	break;
	case("SPAWN2"):
	case("RETURNTOWINGS"):
		state = "IDLE";
	break;
	case("LIGHTCIRCLE"):
	case("LIGHTCHASE"):
		sprite_index = sNostro2AngleIdle;
	break;
	case("LIGHTPILLAR"):
		if subState == "STOP"
		{
			state = "IDLE";
			subState = "IDLE";
		}
	break;
	case("IDLE"):	
		hspeed = 0;
		vspeed = 0;
		speed = 0;
		
		y = startY;
		PickState();
	break;
	case("BASECOMBO"):
		switch(subState)
		{
			case("BASE0"):
				subState = "BASE1";
				moving = true;
			break;
			case("BASE1"):
				subState = "BASE2";
				moving = true;
			break;
			case("BASE2"):
				subState = "BASE3";
				moving = true;
			break;
			case("BASE3"):
				subState = "BASE4";
				moving = true;
			break;
			case("BASE4"):
				subState = "BASE5";
				moving = true
				CameraZoom(8,10);
			break;
			case("BASE5"):
				state = "IDLE";
				subState = "IDLE";	
				moving = false;
				CameraZoom(10,10);
			break;
		
		}
	break;
	case("PARRIED"):
		switch(subState)
		{
			case("BASE1"):
				state = "BASECOMBO";
				subState = "BASE2";
			break;
			case("BASE2"):
				state = "BASECOMBO";
				subState = "BASE3";
			break;
			case("BASE3"):
				subState = "BASE4";
				state = "BASECOMBO";
			break;
			case("BASE4"):
				subState = "BASE5";
				state = "BASECOMBO";
				CameraZoom(8,10);
			break;
			case("BASE5"):
				state = "IDLE";
				subState = "IDLE";
				CameraZoom(10,10);
			break;
		}
	break;
	case("LAUNCH"):
		if subState == "WAIT"
		{
			if image_xscale == 1
			{
				subState = "LAUNCHLEFT";
			}
			else
			{
				subState = "LAUNCHRIGHT";
			}
		}
		else if subState == "FALL"
		{
			state = "IDLE";
			subState = "IDLE";
		}
	break;
	case("STAGGERED"):
		state = "IDLE";
		subState = "IDLE";
	break;
	case("NOWINGS"):
		switch(specialState)
		{
			case("IDLE"):
				PickStateSpecial();
			break;
			case("PARRY"):
			if Knockback
			{	
				Knockback = false;
				GuardBreak = false;
			}
			specialState = "IDLE";
			subState = "IDLE";
		
		
			break;
			case("KICK"):
			case("STAGGERED"):
				specialState = "IDLE";
				subState = "IDLE";
			break;
			case("RIPOST"):
				specialState = "BASECOMBO";
				subState = "SBASE3";
			break;
			case("BASECOMBO"):
				switch(subState)
				{
					case("SBASE1"):
						subState = "SBASE2";
						flipCheck();
					break;
					case("SBASE2"):
						brnd = irandom(1);
						if brnd == 1
						{
							subState = "SBASE3";
							specialState = "BASECOMBO";	
						}
						else
						{
							subState = "PARRY";
							specialState = "PARRY";
						}
						flipCheck();
					break;
					case("SBASE3"):
						subState = "IDLE";
						specialState = "IDLE";
					break;
				}
				break;
				case("PARRIED"):
					switch(subState)
					{
						case("SBASE1"):
							subState = "SBASE2";
							specialState = "BASECOMBO";
							flipCheck();
						break;
						case("SBASE2"):
							brnd = irandom(1);
							if brnd == 1
							{
								subState = "SBASE3";
								specialState = "BASECOMBO";	
							}
							else
							{
								subState = "PARRY";
								specialState = "PARRY"
							}
							flipCheck();
						break;
						case("SBASE3"):
						case("KICK"):
							subState = "IDLE";
							specialState = "IDLE";
						break;
			

					}
			break;
		}
	break
}
