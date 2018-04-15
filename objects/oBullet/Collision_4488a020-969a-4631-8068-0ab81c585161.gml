if (!instance_exists(inst_55B44900))
{
with (other)
{
	hp--;
	flash = 3;
	hitfrom = other.direction;
	effect_create_above(ef_smoke,x,y,0,$FF000066)
}

instance_destroy();
}
