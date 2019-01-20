/// @changing game speed after 1 min

if (gameSpeed < 2)
{
	gameSpeed += 0.25;
	alarm[0] = 60 * room_speed;
}