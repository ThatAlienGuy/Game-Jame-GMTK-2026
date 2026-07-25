if (reversible) 
{
    var _angle_ratio = image_angle / 90;
    
    if (_angle_ratio >= rotmax && rot > 0) 
    {
        rot = -rot;
    } 
    else if (_angle_ratio <= rotmin && rot < 0) 
    {
        rot = -rot;
    }
}