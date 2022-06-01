if event_data[?"event_type"] == "sprite event"
{
	switch(event_data[? "message"])
	{
		case("create_BaseCombo1"):
			if onGround
			if facing == RIGHT
			{
			    h = Approach(h, 5, groundFric);   
				h = Approach(h, 5, groundAccel);
			}
			else
			{
			    h = Approach(h, -5, groundFric);   
				h = Approach(h, 5, groundAccel);
			}
		
			hitbox = instance_create(x,y,oPDZ);
			hitbox.sprite_index = sPlayerBaseCombo1Hitbox;
			hitbox.image_xscale = image_xscale;
			hitbox.alarm[0] = 10;
			

			
			
		break;
		case("create_BaseCombo2"):
			if onGround
			if facing == RIGHT
			{
			    h = Approach(h, 5, groundFric);   
				h = Approach(h, 5, groundAccel);
			}
			else
			{
			    h = Approach(h, -5, groundFric);   
				h = Approach(h, 5, groundAccel);
			}
		
			hitbox = instance_create(x,y,oPDZ);
			hitbox.sprite_index = sPlayerBaseCombo1Hitbox;
			hitbox.image_xscale = image_xscale;
			hitbox.alarm[0] = 10;
			
			hitbox = instance_create(x,y,oPDZ);	
			hitbox.sprite_index = sPlayerBaseCombo2Hitbox;
			hitbox.image_xscale = image_xscale;
			hitbox.alarm[0] = 10;
		break;
		case("create_BaseCombo3"):
			hitbox = instance_create(x,y,oPDZ);			
			hitbox.sprite_index = sPlayerBaseCombo3Hitbox;
			hitbox.image_xscale = image_xscale;
			hitbox.alarm[0] = 10;
		break;
	}
}

if (event_data[? "message"] == "Player_Forward_Medium")
{
	if onGround		
	if facing == RIGHT
	{
	    h = Approach(h, 10, groundFric);   
		h = Approach(h, 10, groundAccel);
	}
	else
	{
	    h = Approach(h, -10, groundFric);   
		h = Approach(h, 10, groundAccel);
	}

}

if (event_data[? "message"] == "Player_Forward_Small")
{
	if onGround
	if facing == RIGHT
	{
	    h = Approach(h, 5, groundFric);   
		h = Approach(h, 5, groundAccel);
	}
	else
	{
	    h = Approach(h, -5, groundFric);   
		h = Approach(h, 5, groundAccel);
	}
}


if (event_data[? "message"] == "Player_Forward_Massive")
{
	if onGround
	if facing == RIGHT
	{
	    h = Approach(h, 10, groundFric);   
		h = Approach(h, 10, groundAccel);
	}
	else
	{
	    h = Approach(h, -10, groundFric);   
		h = Approach(h, 10, groundAccel);
	}
}
