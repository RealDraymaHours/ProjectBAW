
function PickState()
{
	while rnd == prevState{rnd = irandom(3);}
		
	if distance_to_object(p) > 50
	{	
		switch(rnd)
		{
			case(1):
				state = "CASTTURRET";
				subState = "CAST";
				instance_create(irandom_range(p.x-50,p.x+50),y-40,oNostroLightTurret);
			break;
			case(2):
				state = "CASTPILLAR";
				subState = "CAST";
				sekiro_warning();
				
				instance_create_depth(p.x, y+49, p.depth - 100,oNostroLightPillar);
			break;
		}	
	}
	else
	{
		switch(rnd)
		{
			case(0):
				state = "BASECOMBO";
				subState = "BASE1";
			break;
			case(1):
				state = "CASTTURRET";
				subState = "CAST";
				instance_create(irandom_range(x-50,x+50),y-40,oNostroLightTurret);
			break;
			case(2):
				subState = "PARRY";
				state = "PARRY";
				image_index = 1;
			break;
			case(3):
				state = "KICK";
				subState = "KICK";
				sekiro_warning();
			break;
		}	
	}
}

if !GuardBreak
{
	switch(state)
	{
		case("IDLE"):
			GuardBreak = false;
			PickState();		
			flipCheck();
		break;
		case("PARRY"):
			if Knockback
			{	
				Knockback = false;
				GuardBreak = false;
			}
			state = "IDLE";
			subState = "IDLE";
		
		
		break;
		case("KICK"):
		case("CASTPILLAR"):
		case("CASTTURRET"):
		case("STAGGERED"):
			state = "IDLE";
			subState = "IDLE";
		break;
		case("RIPOST"):
			state = "BASECOMBO";
			subState = "BASE3";
		break;
		case("BASECOMBO"):
			switch(subState)
			{
				case("BASE1"):
					subState = "BASE2";
					flipCheck();
				break;
				case("BASE2"):
					brnd = irandom(1);
					if brnd == 1
					{
						subState = "BASE3";
						state = "BASECOMBO";	
					}
					else
					{
						subState = "PARRY";
						state = "PARRY";
					}
					flipCheck();
				break;
				case("BASE3"):
					subState = "IDLE";
					state = "IDLE";
				break;
			}
		break;
		case("PARRIED"):
			switch(subState)
			{
				case("BASE1"):
					subState = "BASE2";
					state = "BASECOMBO";
					flipCheck();
				break;
				case("BASE2"):
					brnd = irandom(1);
					if brnd == 1
					{
						subState = "BASE3";
						state = "BASECOMBO";	
					}
					else
					{
						subState = "PARRY";
						state = "PARRY"
					}
					flipCheck();
				break;
				case("BASE3"):
				case("KICK"):
					subState = "IDLE";
					state = "IDLE";
				break;
			

			}
		break;
	}
}
else
{
	GuardBreak = false;	
}



prevState = rnd;