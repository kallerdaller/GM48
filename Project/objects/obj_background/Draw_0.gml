y_offset += 1

if y_offset > sprite_height
{
    y_offset = -sprite_height
}

draw_sprite_part(sprite_index, image_index, 0, y_offset, sprite_width, sprite_height, x, y)