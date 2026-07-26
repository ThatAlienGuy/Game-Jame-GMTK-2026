
//Inputs

key_left = keyboard_check (vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check (vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check (vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check (vk_down) or keyboard_check(ord("S"));



//Movment

hmove = key_right - key_left;
vmove = key_down - key_up;

var acspd = walksp

if hmove !=  0 and vmove != vmove
{
	acspd = 0.7071 * walksp
}
else
{
	acspd = walksp
}


if (hmove != 0)
{
	hsp = hmove * acspd
}
hsp = 0.7 * hsp;

if (vmove != 0)
{
	vsp = vmove * acspd
}
vsp = 0.7 * vsp;

//collisions

if (place_meeting(x+hsp,y,O_solid))
{
 while (!place_meeting(x+sign(hsp),y,O_solid))
 {
	  	  x = x + sign(hsp);
 }
 hsp = 0;
}

x = x + hsp;


if (place_meeting(x,y+vsp,O_solid))
{
 while (!place_meeting(x,y+sign(vsp),O_solid))
 {
	  	  y = y + sign(vsp);
 }
 vsp = 0;
}

y = y + vsp;

//Animation

if (hmove == 0 && vmove == 0)
{
    image_speed = 0;
    image_index = 1; // Idle frame
}
else
{
    image_speed = 3;
    
    if (hmove == -1)      sprite_index = S_player_left;
    else if (hmove == 1)  sprite_index = S_player_right;
    else if (vmove == -1) sprite_index = S_player_up;
    else if (vmove == 1)  sprite_index = S_player_down;
}