switch(state)
{
	case("ATTACK"):
		if sprite_index = sBasePrisonerSlashBegin
		{			
			create_enemy_hitbox_noknockback(self,1,10,image_xscale,sBasePrisonerSlashHitbox, false);			
					
			audio_play_sound(PlayerSoulWeapon1, 1000, false);
			sprite_index = sBasePrisonerSlashEnd;
		}
		else 
		{
			state = "IDLE";	
		}
	break;
	case("DEATH"):
		instance_destroy();
	break;
	case("PARRIED"):
		state = "IDLE";
		Parried = false;
	break;
}
