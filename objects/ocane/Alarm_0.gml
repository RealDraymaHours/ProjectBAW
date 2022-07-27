if instance_exists(oPlayer)
{
	if oPlayer.onGround
	{
		combo = 0;
		state = "RUN";
	}
	else
	{
	
		alarm[0] = 1;
	}
}
else
{
	alarm[0] = 1;
}