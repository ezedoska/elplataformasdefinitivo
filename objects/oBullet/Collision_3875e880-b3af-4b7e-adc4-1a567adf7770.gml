if global.enemymovement=true
{
	with (other)
{
	hp--;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();

effect_create_above(ef_smoke,x,y,0,$FF000066)
}