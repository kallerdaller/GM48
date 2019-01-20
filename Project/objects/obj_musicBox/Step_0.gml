if (room = rm_menu && playMusic and !obj_pausing.paused) audio_play_sound(mainMenu, 2, true);
else if (room = room0 && playMusic and !obj_pausing.paused) audio_play_sound(mainMenu, 2, true);
else if (room = rm_death and !soundPlayed) 
{
	audio_stop_sound(mainMenu);
	audio_play_sound(death, 1, false);
	soundPlayed = true;
}
else audio_stop_sound(mainMenu);