switch(sprite_index)
{
	case(sNostroLightPillarSpawn):
		sprite_index = sNostroLightPillar;
	break;
	case(sNostroLightPillar):
		sprite_index = sNostroLightPillarActive;
		Active = true;
		//audio_play_sound(sndNostroLightPillarActivate, 1000, false);
	break;
	case(sNostroLightPillarActive):
		instance_destroy();
	break;
}