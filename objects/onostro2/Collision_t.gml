if ((other.active) && (active))
{
	active = false;
	subState =	"FALL";
	
	Stagger += 20;
	alarm[11] = 480;
	
	image_index = 0
	sprite_index = sNostro2AngleLaunchFalling;
	
	play_parry();
	global.Health += 0.5;
}