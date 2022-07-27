if state != "NOWINGS"
{
	if LightPillarCount < 6
	{
	
		px = p.x - 30;
	
		pxtrue = px + (LightPillarCount * 10);
	
		instance_create(pxtrue,y + 80,oNostroLightPillar);
		alarm[3] = 3;	
	
		LightPillarCount++;
	}
	else
	{
		subState = "STOP";
	
		LightPillarCount = 0;
	}
}
else
{
	instance_destroy(oNostroLightPillar);
}
