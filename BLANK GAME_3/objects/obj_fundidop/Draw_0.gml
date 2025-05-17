if (fade_alpha > 0)
{
    draw_set_color(fade_color);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}