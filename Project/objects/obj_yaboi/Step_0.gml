//change colour of sprite
var inst = instance_place(x, y, obj_background);
switch(inst.sprite_index)
{
	case(spr_red): color = "red"; break;
	case(spr_blue): color = "blue"; break;
	case(spr_green): color = "green"; break;
}

if (!rainbowState)
{
	switch(color)
	{
		case("red"):  sprite_index = spr_yaboi_red; break;
		case("blue"):  sprite_index = spr_yaboi_blue; break;
		case("green"):  sprite_index = spr_yaboi_green; break;
	}
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
	else 
	{
		instance_create_layer(obj_yaboi.x, obj_yaboi.y, "yaboi", obj_inkCloud);
		x += 96 * pMoveDir;
	}
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

if (rainbowState and !alarm[0]) 
{
	alarm[0] = 1 * room_speed;
	sprite_index = spr_rainbowState;
}

if (hp > 100) hp = 100;
if (hp <= 0) room = rm_death;