if (global.invinc = 0)
{
	with(oPlayer) 
	{ 
	flash = 3;
	vectorcolor=shRed
	global.invinc = 30;
	hsp= lengthdir_x(5,direction);
	vsp= lengthdir_y(3,direction)-5;
	hp--;
	effect_create_above(ef_smoke,oPlayer.x,oPlayer.y,0,$FF000066)
	}
}