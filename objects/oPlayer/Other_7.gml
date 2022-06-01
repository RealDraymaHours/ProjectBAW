/// @description Combo's
if IsActive
{
	if ComboEnd()
	{
		if onGround
		{
			ComboReset();
		}		
		
		ComboFinisher = true;
		IsActive = false;
		state = "IDLE";
	}
	else
	{
		IsActive = false;
		state = "IDLE";
		alarm[2] = 30;
	}
	
	if state == "CHARGEATTACK"
	{
		ComboForceEnd();	
		state = "IDLE";
		image_index = 0;
	}
}

if ((state == "PARRY") || (state == "PARRIED"))
{
	state = "IDLE";	
}
