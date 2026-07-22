
//Inputs

key_left = keyboard_check (vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check (vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check (vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check (vk_down) or keyboard_check(ord("S"));



//Movment

var hmove = key_right - key_left;
var vmove = key_down - key_up;


if (hmove != 0)
{
	hsp = hmove * walksp
}
hsp = 0.7 * hsp;

if (vmove != 0)
{
	vsp = vmove * walksp
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