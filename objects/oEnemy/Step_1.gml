if (hp = 0)
{
	with(instance_create_layer(x,y,layer,oDead))
	{
	direction = other.hitfrom;
	effect_create_above(ef_firework,other.x,other.y,0,$FF000066)
	hsp = lengthdir_x(3,direction);
	vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp)!=0) 
		{
		image_xscale = sign(hsp) * other.size;
		image_yscale=other.size;
		}
	}
	instance_destroy();
	
}