// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_damage(dmg)
{
	if ((!global.Staggered) && (!oPlayer.Parry) && (oPlayer.state != "DASH"))
	{
		global.Health -= dmg;
		global.Staggered = true;
		CameraShake(8,8);
		
		rnd = irandom(1);
		switch(rnd)
		{
			case(0):
				audio_play_sound(OKA_Slash1, 1000, false);
			break;
			case(1):
				audio_play_sound(OKA_Slash3, 1000, false);
			break;
		}		
		repeat(5)
		{
			instance_create(oPlayer.x,oPlayer.y,oStrikeEffect);	
		}
		
	}
	else if oPlayer.Parry
	{
		oPlayer.state = "RIPOST";
		oPlayer.Parry = false;
		Caster.Parried = true;
		oPlayer.image_index = 0;
		repeat(5)
		{
			instance_create(oPlayer.x,oPlayer.y,oParryEffect);	
		}
		CameraShake(8,8);
		audio_play_sound(PlayerParryWIP, 1000, false);
	}
	
	instance_destroy();
}