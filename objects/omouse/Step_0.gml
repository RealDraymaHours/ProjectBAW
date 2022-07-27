image_angle += 1;

x = mouse_x;
y = mouse_y;

if ((place_meeting(x,y,e) || (place_meeting(x,y,p))))
{
	image_alpha = 0.3;
}
else
{
 image_alpha = 1;	
}