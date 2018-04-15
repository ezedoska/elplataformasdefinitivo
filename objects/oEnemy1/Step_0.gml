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
var d = distance_to_object(oPlayer);
if d < 128
{
    if path_index != -1
    {
         pathpos = path_position;
         path_end();
    }
    move_towards_point(oPlayer.x, oPlayer.y, 2);
}
else
{
    if d > 144 && path_index == -1
    {
        var targx = path_get_x(path2, pathpos);
        var targy = path_get_y(path2, pathpos);
        if point_distance(x, y, targx, targy) > 2
            move_towards_point(targx, targy, 2);
        else
        {
            path_start(path2, 2, path_action_restart, true);
            path_position = pathpos;
        }
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