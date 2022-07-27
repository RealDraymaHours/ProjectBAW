// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sekiro_warning()
{
	audio_play_sound(EquipSomething, 1000, false);
	instance_create_depth(p.x, p.y-40,-999,oWarning);
}