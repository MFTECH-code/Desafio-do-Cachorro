// dir -> esquerda = 1; direita = -1
function scr_latindo(dir){
	if (timer < tempo)
	{
		draw_sprite_part_ext(spr_dog, 0, 0, 0, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 2)
	{
		draw_sprite_part_ext(spr_dog, 0, 90, 0, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 3)
	{
		draw_sprite_part_ext(spr_dog, 0, 180, 0, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 4)
	{
		draw_sprite_part_ext(spr_dog, 0, 270, 0, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer >= 4)
	{
		timer = 0;
	}
}