// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_UI_Boss(Name, bossHealth, bossHealthMax, bossStagger, BossStaggerMax)
{	
	healthbar_width = 790;
	healthbar_height = 8;
	healthbar_x = 32;
	healthbar_y = 700;
	
	//Title
	draw_text_color(healthbar_x, healthbar_y - 20, Name, c_white,c_white,c_white,c_white,1);
	
	
	//Healthbar
	draw_sprite(sBarBossBorder,0, healthbar_x, healthbar_y);

	//draw_sprite(sBarBackground,0, healthbar_x, healthbar_y);

	draw_sprite_stretched(sHealthBar,0,healthbar_x + 3,healthbar_y+6,(bossHealth/bossHealthMax) * healthbar_width, healthbar_height);
	draw_sprite_stretched(sManaBar,0,healthbar_x + 3 ,healthbar_y + 25,(bossStagger/BossStaggerMax) * healthbar_width, healthbar_height);
	

	//mana

}