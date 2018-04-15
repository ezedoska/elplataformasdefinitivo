global.armedwithshotgun=true

if (global.armedwithshotgun)
{
x = oPlayer.x;
y = oPlayer.y;



firingdelay = firingdelay - 1 ;

if (oPlayer.controller == 0)

{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else
{
	var controllerh = gamepad_axis_value(0,gp_axisrh);
	var controllerv = gamepad_axis_value(0,gp_axisrv);
	if (abs(controllerh) > 0.2) or (abs(controllerv) > 0.2)
	{
		controllerangle = point_direction(0,0,controllerh,controllerv)
	}
	image_angle = controllerangle; 
	
}


recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)or gamepad_button_check(0,gp_shoulderr)) and (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 20;
	Screenshake(2,10);
	

	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if(image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
	
}
else
{
	image_yscale = 1;
}

}