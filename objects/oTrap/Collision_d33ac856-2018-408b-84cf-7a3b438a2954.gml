/// @description Insert description here
// You can write your code in this editor
timerOn=true

if timer=0
{
	global.enemymovement=true
	with (oPlayer)	hascontrol=false
	with (oCamera)		follow=inst_6495D787
	
}

if timer=90
{
	with (oCamera) follow=inst_320EA794
	
}

if timer=180
{
	with (oCamera) follow=oPlayer
	with (oPlayer)	hascontrol=true	
}