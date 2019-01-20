y_offset -= obj_bar_creator.gameSpeed;

if y_offset <= 0
{
    y_offset = sprite_height
}
var y_offset_2 = y_offset - sprite_height

draw_sprite_part(sprite_index, image_index, 0, y_offset, sprite_width, sprite_height, x, y)
draw_sprite_part(sprite_index, image_index, 0, y_offset_2, sprite_width, sprite_height, x, y)