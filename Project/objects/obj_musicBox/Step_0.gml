if (room = rm_menu && playMusic and !obj_pausing.paused) audio_play_sound(mainMenu, 1, true);
else if (room = room0 && playMusic and !obj_pausing.paused) audio_play_sound(mainMenu, 1, true);
else audio_stop_all();