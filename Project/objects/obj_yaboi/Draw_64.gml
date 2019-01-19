draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_text(10, 10, "HP " + string(hp) + " %");

draw_set_halign(fa_right);
draw_text(470, 10, obj_musicBox_Pausing.time);

//for testing purposes safe to delete
//draw_text(10, 10, alarm[1]);