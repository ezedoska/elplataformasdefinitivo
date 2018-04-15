/// @desc floating

if (distance_to_object(oPlayer)>1)
{
	y = Wave(y+1,y-1,1,0);
}
if (global.armedwithshotgun)
{
x = oPlayer.x;
y = oPlayer.y;
}

