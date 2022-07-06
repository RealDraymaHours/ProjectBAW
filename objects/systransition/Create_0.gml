/// @description  Initialize Variables
// Transition Variables
next_room = room;
kind = "RIGHT";
step = 0;
time = 60;

if surface_exists(application_surface)
{
	/// Surfaces
	surf_start = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
	surf_end = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));

	surface_set_target(surf_start);
	draw_enable_alphablend(false);
	draw_set_colour_write_enable(true, true, true, false);
	draw_clear(c_black);
	draw_surface(application_surface, 0, 0);
	draw_enable_alphablend(true);
	draw_set_colour_write_enable(true, true, true, true);
	surface_reset_target();
}
