global.invinc--;

if global.invinc < 0
	{
	global.invinc = 0;
	}


//Player input
if (hascontrol=true)
{
	key_left  = keyboard_check(vk_left)  or (keyboard_check(ord("A")));
	key_right = keyboard_check(vk_right) or (keyboard_check(ord("D")));
	key_jump  = keyboard_check_pressed(vk_space) 
	key_up  = keyboard_check_pressed(vk_up) or (keyboard_check(ord("W")));
	key_down  = keyboard_check_pressed(vk_down) or (keyboard_check(ord("S")));
	if (key_left) or (key_jump) or (key_right) or (key_up) or (key_down)
	{
		controller= 0;
	}

	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value (0,gp_axislh),0));
		key_right = max(gamepad_axis_value(0,gp_axislh),0);
		controller = 1;
	}
	if (gamepad_button_check_pressed(0,gp_shoulderl))
	{
		controller = 1;
		key_jump = 1;
	}
}
else
	{
		key_right =0;
		key_left=0;
		key_jump=0;
	}

//Calculate movement
var move  = key_right - key_left;

hsp       = move * walkspd;
vsp = vsp + grv

if (place_meeting(x,y+1,oWall)) 
{
	
	if (key_jump) vsp = -7;
}

//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	hsp= 0;
}

x         = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall)) 
{
	vsp= 0;
	
}

y         = y + vsp;


//Animation
if (!place_meeting(x,y+1,oWall)) 
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0)	image_index = 1; else image_index= 0;
	
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
	sprite_index = sPlayer
	}
	else
	{
	sprite_index= sPlayerR
	} 
}



if (hsp != 0) image_xscale = sign(hsp);

if (hp==0)
{
game_restart()
}