/// @description HP and Time
hp--;

//GAME TIME
if (s == 59) 
{
	s = 0;
	if (m == 59)
	{
		h++;
		m = 0;
	}
	else m++;
}
else s++;

if (h == 0) hours = "";
else if (h < 10) hours = "0" + string(h) + ":";
else hours = string(h) + ":";

if (m == 0 and h == 0) minutes = "";
else if (m < 10) minutes = "0" + string(m) + ":";
else minutes = string(m) + ":";

if (s < 10) seconds = "0" + string(s);
else seconds = string(s);

obj_musicBox_Pausing.time = hours + minutes + seconds;

if (h == 0 and m == 0) obj_musicBox_Pausing.time += "s";
else if (h == 0) obj_musicBox_Pausing.time += "m";
else obj_musicBox_Pausing.time += "h";

alarm[1] = 1 * room_speed;