//change colour of sprite
var inst = instance_place(x, y, obj_background);
switch(inst.sprite_index)
{
	case(spr_red): color = "red"; break;
	case(spr_blue): color = "blue"; break;
	case(spr_green): color = "green"; break;
}

switch(color)
{
	case("red"): image_blend = make_colour_rgb(255, 64, 64); break;
	case("blue"): image_blend = make_colour_rgb(85, 85, 255); break;
	case("green"): image_blend = make_colour_rgb(106, 190, 48); break;
}

//self explonatory player movement
var pLeft = 0;
var pRight = 0;
if(keyboard_check(ord("A"))) pLeft = -1;
if(keyboard_check(ord("D"))) pRight = 1;

var pMoveDir = pRight + pLeft;

//moving once every button press
if(keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")))
{
	//jumping from lane to lane if there is no bumper in your way
	if(position_meeting(x + 96 * pMoveDir, y, obj_bumper)) {}
	else x += 96 * pMoveDir;
}

//background shifting
if(mouse_check_button_pressed(mb_left))
{
	var tmp = obj_left.sprite_index;
	obj_left.sprite_index = obj_right.sprite_index;
	obj_right.sprite_index = obj_middle.sprite_index;
	obj_middle.sprite_index = tmp;
}
else if(mouse_check_button_pressed(mb_right))
{
	tmp = obj_right.sprite_index;
	obj_right.sprite_index = obj_left.sprite_index;
	obj_left.sprite_index = obj_middle.sprite_index;
	obj_middle.sprite_index = tmp;
}