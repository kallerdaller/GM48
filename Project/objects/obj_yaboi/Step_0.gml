//change colour of sprite
image_blend = make_colour_rgb(130, 205, 130);

//self explonatory movement
var left = 0;
var right = 0;
if(keyboard_check(ord("A"))) left = -1;
if(keyboard_check(ord("D"))) right = 1;

var moveDir = right + left;

//moving once every button press
if(keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")))
{
	//jumping from lane to lane if there is no bumper in your way
	if(position_meeting(x + 96 * moveDir, y, obj_bumper)) {}
	else x += 96 * moveDir;
}