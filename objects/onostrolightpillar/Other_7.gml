switch(sprite_index)
{
	case(sNostroLightPillarSpawn):
		sprite_index = sNostroLightPillar;
	break;
	case(sNostroLightPillar):
		sprite_index = sNostroLightPillarActive;
		Active = true;
	break;
	case(sNostroLightPillarActive):
		instance_destroy();
	break;
}