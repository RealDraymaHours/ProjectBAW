if MoveBack
{
	oPlayer.state = "IDLE";
	instance_destroy();	
}
else if Grabbed
{
	if TheThingIgrabbed.state == "STUNNED"
	{
		TheThingIgrabbed.alarm[10] = 1;
		instance_destroy();
	}
	else
	{
		oPlayer.state = "IDLE";	
		oPlayer.IsAttacking = false;
		with oPlayer
		{
			if !oHook.GrabbedAnEnemy
			{
				oPlayer.h = 0 
				oPlayer.h = 0
				oPlayer.v = 0;   
				oPlayer.v = 0;
		
				oPlayer.v = Approach(oPlayer.v, -3, oPlayer.airFric);   
				oPlayer.v = Approach(oPlayer.v, -3, oPlayer.airAccel);
			}
		
			hspeed = 0;
			vspeed = 0;	
			CanDash = true;
			IsActive = false;
		}	
		
		instance_destroy();
	}
}
