event_inherited();
///Properties
ideal_width=0; 
ideal_height=258;
zoom=1;

max_zoom=1;
use_sub_pixels=false;
 
//Aspect ratio
aspect_ratio = display_get_width()/display_get_height();
 
//Calculate new ideal width.
ideal_width=round(ideal_height*aspect_ratio);

//Pixel Perfect Scaling
if(display_get_width() mod ideal_width != 0)
{
	var d = round(display_get_width()/ideal_width);
	ideal_width=display_get_width()/d;
}

if(display_get_height() mod ideal_height !=0)
{
	var d = round(display_get_height()/ideal_height);
	ideal_height = display_get_height () / d;
}
//ideal_height=round(ideal_width/aspect_ratio);
 
ideal_width=round(ideal_width);
ideal_height=round(ideal_height);
 
//Check to make sure our ideal width and height isn't an odd number
 
 
if(ideal_width & 1)
  ideal_width++;
     
if(ideal_height & 1)
  ideal_height++;
 
 
   
max_zoom = floor(display_get_width()/ideal_width);
 
//Setup all the view ports so I don't have to.
globalvar Main_Camera;
Main_Camera = camera_create_view(0,0,ideal_width,ideal_height,0,noone,0,0,0,0);
camera_set_view_size(Main_Camera,ideal_width,ideal_height);


for(var i=1; i<= room_last; i++)
{
  if(room_exists(i))
  {    
        room_set_view_enabled(i,true);
      	room_set_viewport(i,0,true,0,0,ideal_width,ideal_height);
        room_set_camera(i,0,Main_Camera);
  }
}
 

 
surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width*zoom,ideal_height*zoom);
 
alarm[0]=1; //Center Window
alarm[2]=1; //Change Zoom

room_goto(1);