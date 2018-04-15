/// @description Insert description here
// You can write your code in this editor


with(oPlayer)
	{
	direction = other.hitfrom;
	x += lengthdir_x(-15,direction);
	y += lengthdir_y(15,direction);
	if (sign(hsp)!=0) image_xscale = sign(hsp);
	}