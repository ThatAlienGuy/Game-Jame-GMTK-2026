if place_meeting(x,y,O_player) touching = true else touching = false

with (O_sliding_door)
{
	if other.touching and index = other.index and opened = true and keyboard_check_pressed(vk_control) and other.uses > 0
	{
		opened = false
		
	}
	else if other.touching and index = other.index and opened = false and keyboard_check_pressed(vk_control) and other.uses > 0
	{
		opened = true
	}
}

if place_meeting(x,y,O_player) and keyboard_check_pressed(vk_control) and uses > 0
{
	uses--
	if image_index = 0 
	{
		image_index = 1
	}
	else image_index = 0
}