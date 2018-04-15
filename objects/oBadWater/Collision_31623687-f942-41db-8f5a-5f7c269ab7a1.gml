if (global.invinc = 0)
{
	with(oPlayer) 
	{ 
	global.invinc = 30;
	hsp= lengthdir_x(5,direction);
	vsp= lengthdir_y(3,direction)-6;
	hp--;
	flash=3;
	vectorcolor=shRed
	}
}