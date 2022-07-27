if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "seqDamageBig":
			flashAlpha = 1;
			play_enemy_damage();
			CameraShake(4,10);
		break;
		case "seqDamageMid":
			flashAlpha = 1;
			play_enemy_damage();
			CameraShake(4,6);
		break;
		case "seqDamageSmall":
			flashAlpha = 1;
			play_enemy_damage();
			CameraShake(4,4);
        break;
		case "seqNostro1StartUp":
			sprite_index = sNostro1CloakGrappleBoss;
		break;
    }
} 