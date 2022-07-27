
if instance_exists(oPlayer)
{
	if state != "PARRIED"
	{

		switch(state)
		{
			case("IDLE"):
			case("RUN"):
				oPlayer.IsActive = false;
				active = false;
				if ((mouse_check_button(mb_left)) && (global.Mana >= 50))
				{
					active = true;
					state = "ATTACK";
					global.Mana -= 50;
					image_angle = point_direction(x,y,mouse_x,mouse_y);
			
					image_index = 0;
			
					if mouse_x > p.x
					{
						oPlayer.facing = oPlayer.RIGHT;
						x = p.x;	
						image_xscale = -1;
						image_yscale = 1;
					}
					else
					{
						oPlayer.facing = oPlayer.LEFT;
						x = p.x;	
						image_xscale = -1;
						image_yscale = -1;
					}
			
					if combo == 0
					{
						sprite_index = sCaneSlash1;	
						combo = 1;
					}
					else
					{
						sprite_index = sCaneSlash2;
						combo = 0;
					}
				}

			break;
			case("ATTACK"):
			case("ATTACKCHARGE"):
				oPlayer.IsActive = true;
				oPlayer.h = 0;
				oPlayer.v = 0;
			break;
		}

		if ((state != "ATTACK") && (state != "PARRIED"))
		{
			switch(oPlayer.state)
			{
				case("IDLE"):
					state = "IDLE";
					sprite_index = sCaneIdle;
					image_angle = 0;
					image_xscale = 1;
					image_yscale = 1;
			
				break;
				case("RUN"):
					state = "RUN"
					sprite_index = sCaneRun;
					image_angle = 0;
				break;
		

			}
				if oPlayer.facing = oPlayer.RIGHT
				{
					x = p.x - 7;	
					image_xscale = -1;
				}
				else
				{
					x = p.x + 7;	
					image_xscale = 1;
				}
			y = p.y;
	
			image_index = p.image_index;
		}

	}
	else 
	{
		active = false;
		if oPlayer.state == "IDLE"
		{
				sprite_index = sCaneIdle;
				image_angle = 0;
				image_xscale = 1;
				image_yscale = 1;
		}
		else
		{
				sprite_index = sCaneRun;
				image_angle = 0;
		}
		
			if oPlayer.facing = oPlayer.RIGHT
			{
				x = p.x - 7;	
				image_xscale = -1;
			}
			else
			{
				x = p.x + 7;	
				image_xscale = 1;
			}
		y = p.y;
	
		image_index = p.image_index;	
	}
}
else
{
	if p.facing = 1
	{
		x = p.x - 7;	
		image_xscale = -1;
	}
	else
	{
		x = p.x + 7;	
		image_xscale = 1;
	}
}

