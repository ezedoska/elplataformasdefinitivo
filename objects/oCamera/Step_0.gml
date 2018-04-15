/// @description Update Camera

//update destination
if (instance_exists(follow))
{
	xTo= follow.x;
	yTo= follow.y;
	
	if ((follow).object_index == oPdead)
	{
	x = xTo;
	y = yTo;
	}
}

//Update Object Position
x += (xTo - x) / 10;
y += (yTo - y) / 10;

//keep camera inside the room
x=clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y=clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//screen shake
//x+= random_range(-shake_remain,shake_remain)
//y+= random_range(-shake_remain,shake_remain)
//shake_remain = max(0,shake_remain-((1/shake_lenght)*shake_magnitude));

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


/// background parallax
if (layer_exists("ParallaxBACK"))
{
	layer_x("ParallaxBACK",x/2)
}

if (layer_exists("ParallaxFRONT"))
{
	layer_x("ParallaxFRONT",x/4)
}