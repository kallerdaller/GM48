if (room = rm_death) dead = true;

if ((paused or dead) and keyboard_check_pressed(ord("Q")))
{
	room = rm_menu; 
	paused = false;
	dead = false;
	audio_stop_all();
}