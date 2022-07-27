// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_damage_active(dmg)
{
	if ((!global.Staggered))
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
