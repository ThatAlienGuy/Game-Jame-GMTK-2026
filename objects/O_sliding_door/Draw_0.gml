// Remove draw_self() if you don't want the default sprite drawing underneath
// draw_self();

var segment_width = 64;

// Single segment fallback (optional, if gate can be only 1 block wide)
if (image_xscale <= 1) 
{
    draw_sprite(S_gate_end, 0, x, y);
    exit;
}

// Multi-segment gate
for (var i = 0; i < image_xscale; i++)
{
    var draw_x = x + (i * segment_width);

    if (i == 0)
    {
        // Left end piece
        draw_sprite(S_gate_end, 0, draw_x, y);
    }
    else if (i == image_xscale - 1)
    {
        // Right end piece (flipped horizontally)
        // Add segment_width to compensate for the top-left origin flip
        draw_sprite_ext(S_gate_end, 0, draw_x + segment_width, y, -1, 1, 0, c_white, 1);
    }
    else
    {
        // Middle piece(s)
        draw_sprite(S_gate_middle, 0, draw_x, y);
    }
}