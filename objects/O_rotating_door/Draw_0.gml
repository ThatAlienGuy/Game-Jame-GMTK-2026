var segment_width = 64;

// Normalize angle to 0, 90, 180, 270
var normalized_angle = (round(image_angle) % 360 + 360) % 360;

if (image_xscale <= 1)
{
    var spr = (normalized_angle == 0 || normalized_angle == 180) ? S_gate_end : S_vgate_end;
    draw_sprite(spr, 0, x, y);
    exit;
}

switch (normalized_angle)
{
    case 0: // Right (0 deg)
        for (var i = 0; i < image_xscale; i++)
        {
            var draw_x = x + (i * segment_width);
            if (i == 0) draw_sprite(S_gate_end, 0, draw_x, y);
            else if (i == image_xscale - 1) draw_sprite_ext(S_gate_end, 0, draw_x + segment_width, y, -1, 1, 0, c_white, 1);
            else draw_sprite(S_gate_middle, 0, draw_x, y);
        }
        break;

    case 180: // Left (180 deg)
        for (var i = 0; i < image_xscale; i++)
        {
            var draw_x = x - (i * segment_width);
            if (i == 0) draw_sprite_ext(S_gate_end, 0, draw_x, y, -1, 1, 0, c_white, 1);
            else if (i == image_xscale - 1) draw_sprite(S_gate_end, 0, draw_x - segment_width, y);
            else draw_sprite_ext(S_gate_middle, 0, draw_x, y, -1, 1, 0, c_white, 1);
        }
        break;

    case 90: // Up / -Y (90 deg)
        for (var i = 0; i < image_xscale; i++)
        {
            var draw_y = y - (i * segment_width);
            if (i == 0) draw_sprite_ext(S_vgate_end, 0, x, draw_y,1,-1,0,c_white,1);
            else if (i == image_xscale - 1) draw_sprite_ext(S_vgate_end, 0, x, draw_y + segment_width, 1, 1, 0, c_white, 1);
            else draw_sprite(S_vgate_middle, 0, x, draw_y);
        }
        break;

    case 270: // Down / +Y (270 deg)
        for (var i = 0; i < image_xscale; i++)
        {
            var draw_y = y + (i * segment_width);
            if (i == 0) draw_sprite(S_vgate_end, 0, x, draw_y);
            else if (i == image_xscale - 1) draw_sprite_ext(S_vgate_end, 0, x, draw_y + segment_width, 1, -1, 0, c_white, 1);
            else draw_sprite(S_vgate_middle, 0, x, draw_y);
        }
        break;
}