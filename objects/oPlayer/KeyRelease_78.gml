/// @description Insert description here
// You can write your code in this editor
/// @desc	Move to next room
with(oPlayer)
{
	if (hascontrol)
	{
		hascontrol=false;
		SlideTransition(TRANS_MODE.NEXT);
	}
 
}