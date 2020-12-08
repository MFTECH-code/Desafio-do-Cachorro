// dir -> esquerda = 1; direita = -1
function scr_correndo(dir){
if (timer < tempo)
	{
		draw_sprite_part_ext(spr_dog, 0, 0, 116, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 2)
	{
		draw_sprite_part_ext(spr_dog, 0, 90, 116, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 3)
	{
		draw_sprite_part_ext(spr_dog, 0, 180, 116, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 4)
	{
		draw_sprite_part_ext(spr_dog, 0, 270, 116, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 5)
	{
		draw_sprite_part_ext(spr_dog, 0, 360, 116, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer >= 6)
	{
		timer = 0;
	}
}