y += obj_bar_creator.gameSpeed;

if (place_meeting(x, y, obj_yaboi))
{
	if(currentColor != obj_yaboi.color and !obj_yaboi.rainbowState) 
	{
		obj_yaboi.hp -= 25;
		instance_create_layer(obj_yaboi.x - 8, obj_yaboi.y, "inkLayer", obj_inkCloud);
		obj_yaboi.rainbowState = true;
	}
}