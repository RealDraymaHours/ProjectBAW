// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function logic_attack()
{
	if ComboCounter != -1
		{
			switch(ComboArray[ComboCounter])
			{
				case(1):
					switch(ComboCounter)
					{
						case(0):
							if onGround
							{
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
							hitbox = instance_create(x,y,oPDZ);
							hitbox.sprite_index = sPlayerBaseCombo1Hitbox;
							hitbox.image_xscale = 1 * facing;
							hitbox.alarm[0] = 10;		
						break;
						case(1):
							if onGround
							{
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
							hitbox = instance_create(x,y,oPDZ);	
							hitbox.sprite_index = sPlayerBaseCombo2Hitbox;
							hitbox.image_xscale = 1 * facing;
							hitbox.alarm[0] = 10;
						break;
					}
				break;
			}
		}
}


function logic_attack_charge()
{
	if ComboCounter != -1
	{
		if onGround
		{
			if facing == RIGHT
			{
			 h = Approach(h, 20, groundFric);   
				h = Approach(h, 20, groundAccel);
			}
			else
			{
			    h = Approach(h, -20, groundFric);   
				h = Approach(h, 20, groundAccel);
			}
		}
			
		hitbox = instance_create(x,y,oPDZ);	
		hitbox.sprite_index = sPlayerBaseChargedAttackHitbox;
		hitbox.image_xscale = 1 * facing;
		hitbox.alarm[0] = 10;
	}
}