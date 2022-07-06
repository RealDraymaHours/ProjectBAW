/// @description  Update surfaces
if (kind == "LEFT" || kind == "RIGHT" || kind == "UP" || kind == "DOWN") 
{
	
	surface_set_target(surf_end);
    draw_clear(c_black);
    draw_enable_alphablend(false);
    draw_set_colour_write_enable(true,true,true,false);
    draw_surface(application_surface,0,0);
    draw_set_colour_write_enable(true,true,true,true);
    draw_enable_alphablend(true);
    surface_reset_target();
	

}


