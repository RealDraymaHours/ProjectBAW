switch(sprite_index)
{
	case(sShieldBruteBlock):
	case(sShieldBruteAttackEnd):
	case(sShieldBruteParried):
		sprite_index = sShieldBruteIdle;
		Parry = false;
		Parried = false;
		Track = true;
	break;
	case(sShieldBruteAttackBegin):	
		create_enemy_hitbox_noknockback(self, 1.5, 20, sShieldBruteAttackHitbox);
		Parry = false;
		sprite_index = sShieldBruteAttackEnd;
		CameraShake(2,4);
		audio_play_sound(PlayerSoulWeapon1, 1000, false);
	break;
	case(sShieldBruteIdle):		
		sprite_index = sShieldBruteBlock;
		Parry = true;
	break;
	case(sShieldBruteRipost):
		sprite_index = sShieldBruteAttackBegin;
		Track = false;
		Parry = false;
		state = "IDLE";
	break;
}