///@desc Spawn light

if subState != "DONE"
{
	if !LightSpawnLeftDone
	{
		LightX = irandom_range(p.x - 120, p.x +120);
		LightY = irandom_range(p.y - 80, p.y -120);
		
		if instance_number(oNostroLightTurret) < 5
		{
			light = instance_create(LightX, LightY,oNostroLightTurret);	
			light.dmg = 0.5;
			alarm[1] = 5;			
		}
		else
		{
			LightSpawnLeftDone = true;	
			alarm[1] = 50;
		}
	}
	else
	{
		LightX = irandom_range(p.x - 120, p.x +120);
		LightY = irandom_range(p.y - 80, p.y -120);
	
		if instance_number(oNostroLightTurret) < 9
		{
			light = instance_create(LightX, LightY,oNostroLightTurret);	
			light.dmg = 0.5;
			alarm[1] = 5;
		}
		else
		{
			subState = "DONE";
			alarm[1] = 200;
		}
	}
}
else
{
	state = "IDLE";
	subState = "IDLE";
}