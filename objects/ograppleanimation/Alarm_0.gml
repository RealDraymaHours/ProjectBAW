instance_destroy();

Caster.visible = true;

Caster.state = "IDLE";

switch(TheSequence)
{
	case(seqNostro1Grapple):
		Caster.x = x -20;
		instance_create(x+10,y + 33, oPlayer);
		instance_create(x,y, oCane);
		Caster.Stagger = 0;
		Caster.alarm[11] = 1;

	break;
	case(seqNostro2Grapple):
		Caster.x = x -20;
		Caster.y = y + 29;
		Caster.Track = false;
		instance_create(x+10,y + 63, oPlayer);
		instance_create(x,y, oCane);
		Caster.state = "NOWINGS";
		Caster.alarm[4] = 900;

	break;
}


CameraReset(10);

layer_sequence_destroy(ToDestroy);
instance_destroy();