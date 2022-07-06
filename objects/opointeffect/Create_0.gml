// Maximum number of line points
trail_steps = 30;

// Initialize lists for mouse positions (x, y)
trail_x = ds_list_create();
trail_y = ds_list_create();

direction = random(360);
speed = random_range(2, 4);

moveToPlayer = false;

alarm[10] = random_range(5,30);