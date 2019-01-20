if(room = room0) paused = !paused;

if (paused) 
{
	audio_pause_all();
	instance_deactivate_all(1);
}
else 
{
	audio_resume_all();
	instance_activate_all()
}