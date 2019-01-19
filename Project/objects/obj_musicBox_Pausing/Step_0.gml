if (room = rm_menu && playMusic) audio_play_sound(mainMenu, 1, true);
else audio_stop_all();

if (room = rm_death) dead = true;

if ((paused or dead) and keyboard_check_pressed(ord("Q")))
{
	room = rm_menu; 
	paused = false;
	dead = false;
}