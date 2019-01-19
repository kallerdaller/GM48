if(room = room0) paused = !paused;

if (paused) instance_deactivate_all(1);
else instance_activate_all()