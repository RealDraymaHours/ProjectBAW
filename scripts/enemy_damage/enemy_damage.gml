// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_damage(enemy, dmg)
{
	//when enemy is in a parry state then he reposts the player
		if ((enemy.Parry))
		{
				oPlayer.alarm[9] = 2;
				state = "PARRIED";
				active = false;
			
				alarm[0] = 60;
			
				enemy.state = "RIPOST";
				enemy.image_index = 0;
				
				enemy.alarm[11] = enemy.StaggerRegenTime;
			
				oGame.alarm[0] = 40;
		}
		else
		{
			CallEnemyDamageJustForThisStupidScript(enemy, dmg);
		}
}

function CallEnemyDamageJustForThisStupidScript(enemy, dmg)
{
	
			enemy.flashAlpha = 1;
			enemy.Invunerable = true;
			enemy.Health -= dmg;
			enemy.Stagger += 2;
			enemy.alarm[11] = enemy.StaggerRegenTime;
			
			alarm[0] = 60;
			CameraShake(2,4);	
	//make effect
			repeat(5)
			{
				instance_create(x,y,oStrikeEffect);	
			}
			
	//play audio
			play_enemy_damage();	
}