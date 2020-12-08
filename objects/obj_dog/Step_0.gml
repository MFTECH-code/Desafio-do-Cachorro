// Vamos gerenciar os estados pelo step
var click = mouse_check_button_pressed(mb_left);
switch(estado)
{
	case "parado":
		timer_estado--;
		velv = 0;
		velh = 0;
		
		
		if (timer_estado <= 0)
		{
			estado = choose("sentado", "andando", "pega");
			timer_estado = room_speed * 3;
		}
		
		if (click)
		{
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_ponto);
			estado = "persegue";
		}
		
		break;
		
	case "sentado":
		timer_estado--;
		velv = 0;
		velh = 0;
		
		if (timer_estado <= 0)
		{
			estado = choose("parado", "andando", "pega");
			timer_estado = room_speed * 3;
		}
		
		if (click)
		{
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_ponto);
			estado = "persegue";
		}
		
		break;
	
	case "andando":
		timer_estado--;
		// Fazendo inimigo andar sozinho
		if ((abs(x - xstart) < 100 // -> Se a diferença entre a posXatual - posXinicial for menor do que 100
		&& abs(y - ystart) < 100) // -> Se a diferença entre a posYatual - posYinicial for menor do que 100
		&& patrulha_volta == false) 
		{
			/*
				Fazendo cálculo da distância
				posiçãoAtual - posiçãoInicial = Distância
				Para evitar números negativos usamos o abs
			*/
			// Se o inimigo não estiver longe da posição inicial ele poderá se mover
			velh = lengthdir_x(vel, dir);
			velv = lengthdir_y(vel, dir);
		}
		else
		{
			// Fazendo o inimigo voltar o ponto inicial
			dir = point_direction(x, y, xstart, ystart);
			velh = lengthdir_x(vel, dir);
			velv = lengthdir_y(vel, dir);
			patrulha_volta = true; // Está voltando
			
		}
		
		if ((abs(x - xstart) < 20
		&& abs(y - ystart) < 20)
		&& patrulha_volta == true)
		{
			// Se o inimigo estiver próximo da posição onde estava e estiver voltando, ele deve alterar a direção dele
			dir = point_direction(xstart, ystart, irandom(room_width), irandom(room_height));
			patrulha_volta = false;
		}
		
		// Gerenciando faces
		if (velh < 0)
		{
			face = 1;
		}
		else if (velh > 0)
		{
			face = 2;
		}
		
		if (timer_estado <= 0)
		{
			estado = choose("parado", "pega");
		}
		
		if (click)
		{
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_ponto);
			estado = "persegue";
		}
		
		break;
	case "persegue":
		var col = instance_place(x, y, obj_ponto);
		
		dir = point_direction(x, y, obj_ponto.x, obj_ponto.y);
		velh = lengthdir_x(2, dir);
		velv = lengthdir_y(2, dir);
		
		if (velh > 0)
		{
			face = 2;
		}
		else if (velh < 0)
		{
			face = 1;
		}
		
		if (col)
		{
			instance_destroy(col);
			estado = "sentado";
		}
		break;
	
	case "pega":
		col = instance_place(x, y, obj_osso);
		
		dir = point_direction(x, y, obj_osso.x, obj_osso.y);
		velh = lengthdir_x(2, dir);
		velv = lengthdir_y(2, dir);
		
		if (velh > 0)
		{
			face = 2;
		}
		else if (velh < 0)
		{
			face = 1;
		}
		
		if (col)
		{
			instance_destroy(col);
			estado = "sentado";
		}
		
		if (click)
		{
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_ponto);
			estado = "persegue";
		}
		
		break;
}

x = clamp(x, 0, room_width - 90);
y = clamp(y, 0, room_width - 58);

x += velh;
y += velv;

