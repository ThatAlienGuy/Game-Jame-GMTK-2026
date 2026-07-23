if opened = true && x != xpos + xoff 
{
	
	x = x + xoff
}
if opened = false && x = xpos + xoff  
{
	x = x - xoff
}

if opened = true && y != ypos + yoff
{
	
	y = y + yoff
}
if opened = false && y = ypos + yoff  
{
	y = y - yoff
}
if opened = true image_index = 1 else if opened = false image_index = 0