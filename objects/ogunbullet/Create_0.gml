move_towards_point(mouse_x,mouse_y,12);

// Maximum number of line points
trail_steps = 30;

// Initialize lists for mouse positions (x, y)
trail_x = ds_list_create();
trail_y = ds_list_create();

active = true;