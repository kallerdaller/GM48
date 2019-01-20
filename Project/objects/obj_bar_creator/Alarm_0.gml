/// @changing game speed after 1 min

if (gameSpeed < 2)
{
	gameSpeed += 0.5;
	obj_background.backgroundSpeed += 0.5;
	alarm[0] = 60 * room_speed;
}