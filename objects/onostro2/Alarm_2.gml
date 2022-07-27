/// @description Spawn pillar
if state != "NOWINGS"
{
	switch(subState)
	{
		case("GO"):
			if LightPillarCount < 100
			{
				multi = ArenaEnd - (LightPillarCount * 7);
				multi2 = ArenaStart + (LightPillarCount * 7);
				pil = instance_create(multi, y + 80, oNostroLightPillar);
				pil2 = instance_create(multi2, y + 80, oNostroLightPillar);
			
				pil.image_speed = 8;
				pil2.image_speed = 8;
				LightPillarCount++
			
				alarm[2] = 5;
			}
			else
			{
				state = "IDLE";
				subState = "IDLE";
				LightPillarCount = 0;
			}
		break;
	}
}
else
{
	instance_destroy(oNostroLightPillar);
}