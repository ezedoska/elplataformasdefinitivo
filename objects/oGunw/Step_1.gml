if global.enemymovement=true
{
firingdelay = firingdelay - 1 ;

if (firingdelay < 0) and (distance_to_object(oPlayer) < 200)
{		
firingdelay = 1

	with (instance_create_layer(x,y,"BulletsW",oBulletW))
	{
		speed = 10;
		direction = point_direction(x,y,oPlayer.x,oPlayer.y) + random_range(-5,5);
		
	}
}
}