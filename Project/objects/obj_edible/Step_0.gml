if (!run) y += obj_bar_creator.gameSpeed;
else y -= 2;

if (place_meeting(x, y + 10, obj_yaboi))
{
	if (currentColor == obj_yaboi.color) 
	{
		if (place_meeting(x, y - 10, obj_yaboi))
		{
			obj_yaboi.hp += 10;
			instance_destroy(self);
		}
	}
	else
	{
		image_angle = 90;
		run = true;	
	}
}

if ((y < -250) or (y > 250)) instance_destroy(self);