/// @description spawn bars

bar1 = instance_create_layer(96, -16, "yaboi", obj_bar);
bar2 = instance_create_layer(192, -16, "yaboi", obj_bar);
bar3 = instance_create_layer(288, -16, "yaboi", obj_bar);

rnd1 = irandom(array_length_1d(colors)-1);
rnd2 = irandom(array_length_1d(colors)-1);
rnd3 = irandom(array_length_1d(colors)-1);

while(rnd1 == rnd2 || rnd1 == rnd3 || rnd2 == rnd3)
{
	if(rnd1 == rnd2)
	{
		rnd1 = irandom(array_length_1d(colors)-1);
	}
	if(rnd1 == rnd3)
	{
		rnd3 = irandom(array_length_1d(colors)-1);
	}
	if(rnd2 == rnd3)
	{
		rnd2 = irandom(array_length_1d(colors)-1);
	}
}

bar1.currentColor = colors[rnd1];
bar2.currentColor = colors[rnd2];
bar3.currentColor = colors[rnd3];


with(bar1)
{
	event_user(0);
}
with(bar2)
{
	event_user(0);
}
with(bar3)
{
	event_user(0);
}
