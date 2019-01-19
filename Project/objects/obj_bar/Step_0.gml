y += 1;

if (place_meeting(x, y, obj_yaboi))
{
	if(currentColor != obj_yaboi.color) game_restart();
}