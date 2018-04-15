//gravity
vsp = vsp + grv


if(direction>89 && direction<271)
then
{
image_xscale=1;
}
else
{
image_xscale=-1;
}


//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	hsp= 0;
}

x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	vsp= 0;
}

y = y + vsp;



