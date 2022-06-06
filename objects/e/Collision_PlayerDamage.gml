/// @description 
if !Invunerable
{
	if other.Break > Poise
	{
		Knockback = true;	
		KnockbackDirection = other.KnockbackDirection;
		KnockbackStrenght = other.KnockbackStrenght;
	}

	flashAlpha = 1;
	Invunerable = true;
	Health -= other.Damage;
	
	alarm[0] = other.KnockbackTime;
	CameraShake(2,4);
	
	repeat(5)
	{
		instance_create(x,y,oStrikeEffect);	
	}
	
	rnd = irandom(2);
	
	switch(rnd)
	{
		case(0):
			audio_play_sound(PlayerWeaponHit1, 1000, false);
		break;
		case(1):
			audio_play_sound(PlayerWeaponHit2, 1000, false);
		break;
		case(2):
			audio_play_sound(PlayerWeaponHit3, 1000, false);
		break;
	}
}
