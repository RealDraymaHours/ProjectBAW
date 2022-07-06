/// @description Insert description here
// You can write your code in this editor
//
if event_data[?"event_type"] == "sprite event"
{
	switch(event_data[? "message"])
	{
		case("hitbox_Cloak_Base1"):
			create_enemy_hitbox_noknockback(self,1,15,sNostro1CloakCombo1Hitbox);
		break;	
		case("hitbox_Cloak_Base2"):
			create_enemy_hitbox_noknockback(self,1,15,sNostro1CloakCombo2Hitbox);
		break;		
		case("hitbox_Cloak_Base3"):
			create_enemy_hitbox_noknockback(self,1,30,sNostro1CloakCombo3Hitbox);
			CameraShake(2,4);
		break;		
	}
}