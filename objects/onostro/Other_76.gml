/// @description Insert description here
// You can write your code in this editor
//
if event_data[?"event_type"] == "sprite event"
{
	switch(event_data[? "message"])
	{
		case("hitbox_Cloak_Base1"):
			create_enemy_hitbox_noknockback(self,1,8,image_xscale,sNostro1CloakCombo1Hitbox, false);
		break;	
		case("hitbox_Cloak_Base2"):
			create_enemy_hitbox_noknockback(self,1,8,image_xscale,sNostro1CloakCombo2Hitbox, false);
		break;		
		case("hitbox_Cloak_Base3"):
			create_enemy_hitbox_noknockback(self,1,12,image_xscale,sNostro1CloakCombo3Hitbox, false);
			CameraShake(2,4);
		break;	
		case("hitbox_Nostro_Kick1"):
			create_enemy_hitbox_noknockback(self,1,0,0,sNostro1CloakKick1Hitbox, true);
		break;
		case("hitbox_Nostro_Kick2"):
			create_enemy_hitbox_noknockback(self,1,10,image_xscale,sNostro1CloakKick2Hitbox, false);
			CameraShake(2,4);
		break;
		case("NostroParryOn"):
			Parry = true;
		break;
		case("NostroParryOff"):
			Parry = false;
		break;
	}
}
