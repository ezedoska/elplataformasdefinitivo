/// @description Insert description here
// You can write your code in this editor


if (hp <= 0)
{	
	global.dead=true
	with (oGun) instance_destroy();
	instance_change(oPdead,true);
	effect_create_above(ef_firework,x,y,0,$FF000066)
	direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_y(4,direction)-2;
	if (sign(hsp)!=0) image_xscale = sign(hsp);

}

	
