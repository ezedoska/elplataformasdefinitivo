if (global.enemymovement=true)
{
	image_alpha=1
vsp = vsp + grv

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
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0)	image_index = 1; else image_index= 0;
}
else
{
	image_speed = 1;
	if (follow == 0)
	{
	sprite_index = sEnemy
	}
	else
	{
	sprite_index= sEnemyR
	} 
}
if (hsp != 0) 
{
	image_xscale = sign(hsp)*size;
	image_yscale = size;
}

//follow
if (instance_exists(oPlayer)) 
{
	if(distance_to_object(oPlayer) < followdistance) 
	{	
		follow = 1;
	    move_towards_point(oPlayer.x, y, walkspd);

		if(direction>89 && direction<271)	{image_xscale=-1;}
		else								{image_xscale= 1;}
	}
	else 
	{
		hsp = 0;
		move_towards_point(x, y, 0);
		follow=0;
	}

}


if (follow == 1) and (firingdelay < 0) and (distance_to_object(oPlayer) < 250) 
{		
firingdelay = 47+ random_range(1,3);

	with (instance_create_layer(x,y,"BulletsE",oBulletE))
	{
		speed = 5;
		direction = point_direction(x,y,oPlayer.x,oPlayer.y) + random_range(-3,3);
		
	}
}

firingdelay--;

if (distance_to_object(oBullet) < 100) and (place_meeting(x,y+1,oWall)) 
	{
		vsp = -7
	}
}

else
image_alpha=0