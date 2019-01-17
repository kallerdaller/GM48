#macro view view_camera[0]
camera_set_view_size(view, ideal_width, ideal_height);


if(instance_exists(player))
{
	var _x = clamp(player.x-ideal_width/2,0,room_width - ideal_width);
	var _y = clamp(player.y-ideal_height/2,0,room_height - ideal_height);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd =.1;
	
	camera_set_view_pos(view,_x,_y);
	/*for camera delay swap for
						lerp(_cur_x,_x,_spd),
						lerp(_cur_y,_y,_spd));
						*/

}

