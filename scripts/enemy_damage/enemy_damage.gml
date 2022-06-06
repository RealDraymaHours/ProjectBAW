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
	
	play_enemy_damage();
	}
}
