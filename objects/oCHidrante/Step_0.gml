/// @description Insert description here
// You can write your code in this editor
if (image_index=1) and (timer>0)
{
	
	effect_create_above(ef_explosion, x+random_range(100,-100), y+random_range(30,-30), 1, c_gray);
	timer--;
}