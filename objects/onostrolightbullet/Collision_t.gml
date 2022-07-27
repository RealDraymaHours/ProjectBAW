if other.active
{
	move_towards_point(spawnX, spawnY, 8);
	active = false;
	global.Mana += 50;
	global.Health += 0.1;
	play_parry();
}