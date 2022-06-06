// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_damage(enemy, dmg)
{
	if !other.Invunerable
	{
		if Break > other.Poise
		{
			other.Knockback = true;	
			other.KnockbackDirection = KnockbackDirection;
			other.KnockbackStrenght = KnockbackStrenght;
		}

		other.flashAlpha = 1;
		other.Invunerable = true;
		other.Health -= dmg;
	
		alarm[0] = KnockbackTime;
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
}
