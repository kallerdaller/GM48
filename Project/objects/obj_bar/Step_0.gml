y += obj_bar_creator.gameSpeed;

if (place_meeting(x, y, obj_yaboi))
{
	if(currentColor != obj_yaboi.color and !obj_yaboi.rainbowState) 
	{
		obj_yaboi.hp -= 25;
		obj_yaboi.rainbowState = true;
	}
}