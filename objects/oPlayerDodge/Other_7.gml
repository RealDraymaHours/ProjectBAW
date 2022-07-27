player = instance_create(x,y,oPlayer);
player.facing = image_xscale;

if image_xscale = 1
{
	player.h = 9.0 * 0.4;
}
else
{
	player.h = -9.0 * 0.4;
}

instance_destroy();
