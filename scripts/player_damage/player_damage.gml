// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_damage(dmg)
{
	if ((!global.Staggered))
	{
		if ((oPlayer.facing != Direction) && (instance_exists(t)) && (t.active))
		{
			Caster.Parried = true;
			global.Health += 0.3;
			global.Mana += 50;
			oPlayer.image_index = 0;
			
			Caster.Stagger += Stagger;
			
			Caster.alarm[11] = Caster.StaggerRegenTime;
			
			repeat(5)
			{
				instance_create(oPlayer.x,oPlayer.y,oParryEffect);	
			}
			CameraShake(8,8);
			play_parry();
		}
		else
		{
			global.Health -= dmg;
			global.Staggered = true;
			CameraShake(8,8);
		
			play_player_damage();
			repeat(5)
			{
				instance_create(oPlayer.x,oPlayer.y,oStrikeEffect);	
			}
		}
		
	}
	instance_destroy();
}