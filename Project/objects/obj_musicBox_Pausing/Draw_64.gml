draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (paused)
{
    draw_text(room_width * 0.5, room_height * 0.5, "Paused");
	draw_text(room_width * 0.5, (room_height * 0.5) + 15, "Press \"Escape\" again to resume.");
	draw_text(room_width * 0.5, (room_height * 0.5) + 30, "Press \"Q\" to quit to menu.");
}

if (dead) 
{
	draw_text(room_width * 0.5, room_height * 0.5, "Starved");
	draw_text(room_width * 0.5, (room_height * 0.5) + 15, "You lasted " + time + ".");
	draw_text(room_width * 0.5, (room_height * 0.5) + 30, "Press \"Q\" to quit to menu.");
}
	