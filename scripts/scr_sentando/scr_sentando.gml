// dir -> esquerda = 1; direita = -1
function scr_sentando(dir){
if (timer < tempo)
	{
		draw_sprite_part_ext(spr_dog, 0, 0, 232, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 2)
	{
		draw_sprite_part_ext(spr_dog, 0, 90, 232, 90, 58, x, y, dir, 1, c_white, 1);
	}
	else if (timer < tempo * 3)
	{
		draw_sprite_part_ext(spr_dog, 0, 180, 232, 90, 58, x, y, dir, 1, c_white, 1);
	}
	
	else if (timer >= 4)
	{
		timer = 0;
	}
}