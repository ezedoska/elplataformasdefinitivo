draw_self();


if (flash > 0) 

{
	flash--;
	shader_set(vectorcolor);
	draw_self();
	shader_reset();
}

