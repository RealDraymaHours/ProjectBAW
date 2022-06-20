if !other.active
{
	instance_destroy();
		repeat(5)
		{
			light = instance_create(x,y,oEffectRandom);	
			light.sprite_index = sNostroLightBullet;
		}
	play_enemy_damage();
}