y += 1;

if (place_meeting(x-10, y-10, obj_yaboi))
{
	if(currentColor == obj_yaboi.color) 
	{
		score += 3;
		instance_destroy(self);
	}
}