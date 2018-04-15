/// @description Insert description here
// You can write your code in this editor
depth=-999
if (surface_exists(light_surf))
{	

	surface_set_target(light_surf); //set the siuirface to draw on
	draw_clear(c_black); //draw clear background
	with (obj_lightsource) //take control of lightsource object
	{

		gpu_set_blendmode(bm_subtract); //blenmdmode to substract
		draw_sprite_ext(sprite,0,x,y,x_radious,y_radious,rot,c_black,1); //punch trought bg with gradient
		if (color=true)
		{
		gpu_set_blendmode(bm_zero) //blendmode to 0(for colored effect)
		draw_sprite_ext(sprite,0,x,y,x_radious,y_radious,rot,colorc,0.7) //colour
		}
		gpu_set_blendmode(bm_normal);//blendmode back to normal
	}
	surface_reset_target();
	draw_surface_ext(light_surf,0,0,1,1,0,c_white,0.8) //draw the surface
}
else {light_surf=surface_create(room_width,room_height)}