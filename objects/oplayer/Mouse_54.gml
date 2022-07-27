if !instance_exists(oGrabNoGhost)
{
	grab = instance_create(x,y,oGrabNoGhost);	
	grab.facing = facing;
}