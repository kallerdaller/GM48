/// @description See if bars below screen

if(instance_nearest(x, y, obj_bar).y >= 256)
{	
	bar = instance_nearest(x, y, obj_bar);
	instance_destroy(bar);
	bar = instance_nearest(x, y, obj_bar);
	instance_destroy(bar);
	bar = instance_nearest(x, y, obj_bar);
	instance_destroy(bar);


	event_user(0);
}
