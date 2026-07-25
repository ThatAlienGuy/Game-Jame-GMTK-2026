if place_meeting(x,y,O_player) touching = true else touching = false

with (O_rotating_door)
{
	if other.touching and index = other.index and keyboard_check_pressed(vk_control) and other.uses > 0
	{
		image_angle += rot
		other.uses--
	}
	
}