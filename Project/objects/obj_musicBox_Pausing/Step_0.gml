if (room = rm_menu) audio_play_sound(mainMenu, 1, true);
else audio_stop_all();

if (paused and keyboard_check_pressed(ord("Q")))
{
	room = rm_menu; 
	paused = false;
}