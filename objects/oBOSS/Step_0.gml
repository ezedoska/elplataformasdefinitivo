vsp = vsp + grv

if (hsp != 0) image_xscale = sign(hsp);


//Horizontal collision
if (place_meeting(x+hsp,y,oWall)) 
{
	hsp= 0;
}

x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall)) 
{
	vsp= 0; 
}

y = y + vsp;

//Animation
if (distance_to_object(oWall) < 0)
{
	sprite_index = sBossA;
	image_speed = 0;
	if (sign(vsp) > 0)	image_index = 1; else image_index= 0;
}



if (firingdelay < 0) and (!instance_exists(inst_55B44900)) and (distance_to_object(oPlayer) < 300)
{
		 
firingdelay = 32 + random_range(5 , -5);

	with (instance_create_layer(x,y,"BulletsE",oBulletE))
	{
		image_xscale *=2;
		image_yscale *=2;
		speed = 5;
		direction = point_direction(x,y,oPlayer.x,oPlayer.y) + random_range(-3,3);
	} 
	if(point_direction(x,y,oPlayer.x,oPlayer.y)>89 && point_direction(x,y,oPlayer.x,oPlayer.y)<271)
then
{
image_xscale=-1;
}
else
{
image_xscale=1;
}
}

firingdelay--;

if (place_meeting(x,y+1,oWall)) and (!instance_exists(inst_55B44900))
{
	vsp = -7;
}

if (!instance_exists(inst_55B44900))
	{
		if point_distance(x, y, 3550, y) > 10
		   {
		   move_towards_point(3550, y, 3);
		   }

		else speed = 0;
	}