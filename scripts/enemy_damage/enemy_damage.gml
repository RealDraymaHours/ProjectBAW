// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_damage(enemy, dmg)
{
	//when enemy is in a parry state then he reposts the player
		if ((enemy.Parry) && (!charge))
		{
			oPlayer.alarm[9] = 2;
			instance_destroy();
			
			enemy.state = "RIPOST";
			enemy.image_index = 0;
			
			oGame.alarm[0] = 40;
		}
		else
		{
		//Damage enemy
		//if the attacks break is higher than the enemies poise then the enemy gets knocked back
			if Break > enemy.Poise
			{
				enemy.Knockback = true;	
				enemy.KnockbackDirection = KnockbackDirection;
				enemy.KnockbackStrenght = KnockbackStrenght;
			}

			enemy.flashAlpha = 1;
			enemy.Invunerable = true;
			enemy.Health -= dmg;
	
			alarm[0] = KnockbackTime;
			CameraShake(2,4);
	
	//make effect
			repeat(5)
			{
				instance_create(x,y,oStrikeEffect);	
			}
			
	//give wrath
			global.Mana += 10 * global.ManaMultiplier;
			oGame.alarm[0] = 30;
	
	//play audio
			play_enemy_damage();
		}
}