rnd = irandom(1);
switch(state)
{
	case("IDLE"):
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
		}
		
		flipCheck();
	break;
	case("CASTTURRET"):
		state = "IDLE";
		subState = "IDLE";
	break;
	case("BASECOMBO"):
		switch(subState)
		{
			case("BASE1"):
				subState = "BASE2";
				flipCheck();
			break;
			case("BASE2"):
				subState = "BASE3";
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
				subState = "BASE3";
				state = "BASECOMBO";
				flipCheck();
			break;
			case("BASE3"):
				subState = "IDLE";
				state = "IDLE";
			break;
		}
	break;
}

prevState = state;