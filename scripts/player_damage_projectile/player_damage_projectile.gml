// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_damage_projectile(dmg)
{
	if ((!global.Staggered) && (!oPlayer.Parry) && (oPlayer.state != "DASH"))
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
	else if oPlayer.Parry
	{
		oPlayer.state = "RIPOST";
		rnd = irandom(2);
		switch(rnd)
		{
			case(0):
				oPlayer.sRipost = sPlayerRipost;
			break;
			case(1):
				oPlayer.sRipost = sPlayerRipost2;
			break;
			case(2):
				oPlayer.sRipost = sPlayerRipost3;
			break;
		}
		oPlayer.image_index = 0;
		active = false;
		repeat(5)
		{
			instance_create(oPlayer.x,oPlayer.y,oParryEffect);	
		}
		CameraShake(8,8);
		play_parry();
	}
}