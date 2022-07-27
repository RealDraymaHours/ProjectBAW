if event_data[?"event_type"] == "sprite event"
{
	switch(event_data[? "message"])
	{
		case("NostroPhaseChangeUp"):
				Knockback = true;	
				KnockbackDirection = 90;
				KnockbackStrenght = 15;
				alarm[5] = 3;
				Health = 150;
				DeathXoffset = 128;
				DeathYoffset = -112;
				
				
				
				global.Boss = self;
				
				CameraZoom(10,10);
		break;	
		case("NostroUp"):

				Knockback = true;	
				KnockbackDirection = 90;
				KnockbackStrenght = 15;
				alarm[0] = 3;
				DeathXoffset = 128;
				DeathYoffset = -112;
				
				CameraZoom(10,10);
		break;
		case("hitbox_Angle_Base1"):
			moving = false;
			create_enemy_hitbox_noknockback(self,1,6,10,sNostro2AngleCombo1Hitbox,false);
		break;
		case("hitbox_Angle_Base2"):
			create_enemy_hitbox_noknockback(self,1,6,10,sNostro2AngleCombo2Hitbox,false);
			moving = false;
		break;
		case("hitbox_Angle_Base3"):
			create_enemy_hitbox_noknockback(self,2,10,20,sNostro2AngleCombo3Hitbox,false);
			moving = false;
		break;
		case("NostroStop"):
			hspeed = 0;
			vspeed = 0;
			speed = 0;
		break;
		
		case("hitbox_Cloak_Base1"):
			create_enemy_hitbox_noknockback(self,1,0,image_xscale,sNostro1CloakCombo1Hitbox, false);
		break;	
		case("hitbox_Cloak_Base2"):
			create_enemy_hitbox_noknockback(self,1,0,image_xscale,sNostro1CloakCombo2Hitbox, false);
		break;		
		case("hitbox_Cloak_Base3"):
			create_enemy_hitbox_noknockback(self,1,0,image_xscale,sNostro1CloakCombo3Hitbox, false);
			CameraShake(2,4);
		break;	
		case("hitbox_Nostro_Kick1"):
			create_enemy_hitbox_noknockback(self,1,0,0,sNostro1CloakKick1Hitbox, true);
		break;
		case("hitbox_Nostro_Kick2"):
			create_enemy_hitbox_noknockback(self,1,0,image_xscale,sNostro1CloakKick2Hitbox, false);
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

function PickState()
{
		
}