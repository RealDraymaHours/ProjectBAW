// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_damage_noparry(dmg)
{
if ((!global.Staggered) && (oPlayer.state != "DASH"))
	{
		global.Health -= dmg;
		global.Staggered = true;
		CameraShake(8,8);
		
		if oPlayer.Parry
		{
			audio_play_sound(sndGuardbreak,1000,false);
		}
		
		play_player_damage();
		repeat(5)
		{
			instance_create(oPlayer.x,oPlayer.y,oStrikeEffect);	
		}
		
	}
}