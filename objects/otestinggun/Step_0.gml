if instance_exists(oPlayer)
{
	switch (state)
	{
		case("IDLE"):
			if oPlayer.state == "IDLE"
			{
					sprite_index = sGunIdle;
					image_angle = point_direction(x,y, mouse_x, mouse_y);
					image_xscale = 1;
					image_yscale = 1;
			
					if mouse_x > p.x
					{		
						image_yscale = 1;
						oPlayer.facing = oPlayer.RIGHT;
					}
					else
					{
						image_yscale = -1;
						oPlayer.facing = oPlayer.LEFT;
					}
			
					y = p.y;
			
			}
			else
			{
			
					if oPlayer.facing = oPlayer.RIGHT
					{
						image_yscale = 1;	
					}
					else
					{
						image_yscale = -1;	
					}
			
					sprite_index = sGunIdle;
					image_angle = 90;
			
					y = p.y + 10;
			
		

			}

			if ((mouse_check_button(mb_left)) && (global.Mana == global.MaxMana))
			{		
				image_index = 0;
				state = "SHOOT"	
				instance_create(x,y,oKILLERFORTESTING);
			
					image_angle = point_direction(x,y, mouse_x, mouse_y);
					image_xscale = 1;
					image_yscale = 1;
			
					if mouse_x > p.x
					{		
						image_yscale = 1;
						oPlayer.facing = oPlayer.RIGHT;
					}
					else
					{
						image_yscale = -1;
						oPlayer.facing = oPlayer.LEFT;
					}
				global.Mana = 0;
			
			}
			if ((mouse_check_button(mb_right)) && (global.Mana == global.MaxMana))
			{		
				image_index = 0;
				state = "SHOOT"	
				instance_create(x,y,oBREAKERFORTESTING);
			
					image_angle = point_direction(x,y, mouse_x, mouse_y);
					image_xscale = 1;
					image_yscale = 1;
			
					if mouse_x > p.x
					{		
						image_yscale = 1;
						oPlayer.facing = oPlayer.RIGHT;
					}
					else
					{
						image_yscale = -1;
						oPlayer.facing = oPlayer.LEFT;
					}
				global.Mana = 0;
			
			}
		break;
		case("SHOOT"):
				if oPlayer.facing = oPlayer.RIGHT
				{
					image_yscale = 1;	
				}
				else
				{
					image_yscale = -1;	
				}
			
				sprite_index = sGunIShoot;
				image_angle = 90;
			
				y = p.y + 10;
		break;
	}
	x = p.x;
}
else
{
			
	sprite_index = sGunIdle;
	image_angle = 90;
			
	y = p.y + 10;
	x = p.x;	
	
}




