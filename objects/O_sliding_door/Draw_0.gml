var segment_width = 64;

// --- HORIZONTAL GATE ---
if (image_yscale == 1)
{
    // Single-segment gate fallback
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
            // Right end piece (flipped horizontally, shifted for top-left origin)
            draw_sprite_ext(S_gate_end, 0, draw_x + segment_width, y, -1, 1, 0, c_white, 1);
        }
        else
        {
            // Middle piece
            draw_sprite(S_gate_middle, 0, draw_x, y);
        }
    }
}
// --- VERTICAL GATE ---
else
{
    // Single-segment vertical fallback
    if (image_yscale <= 1)
    {
        draw_sprite(S_vgate_end, 0, x, y);
        exit;
    }

    // Multi-segment vertical gate
    for (var i = 0; i < image_yscale; i++)
    {
        var draw_y = y + (i * segment_width);

        if (i == 0)
        {
            // Top end piece
            draw_sprite(S_vgate_end, 0, x, draw_y);
        }
        else if (i == image_yscale - 1)
        {
            // Bottom end piece (flipped vertically, shifted for top-left origin)
            draw_sprite_ext(S_vgate_end, 0, x, draw_y + segment_width, 1, -1, 0, c_white, 1);
        }
        else
        {
            // Middle piece
            draw_sprite(S_vgate_middle, 0, x, draw_y);
        }
    }
}