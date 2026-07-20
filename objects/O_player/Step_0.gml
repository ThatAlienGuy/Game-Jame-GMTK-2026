key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_restart = keyboard_check_pressed(ord("R"));


if(key_up - key_down = 1 )
{
	y = y - movespeed ;

}
else if(key_up - key_down = -1 )
{
	y = y + movespeed ;

}

if(key_right - key_left = -1 )
{
	x = x - movespeed ;

}
else if(key_right - key_left = 1 )
{
	x = x + movespeed ;

}



if key_restart{
	x = room_width / 2
	y = room_height / 2
}