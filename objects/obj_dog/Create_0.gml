timer = 0;
tempo = room_speed / 4;

// Gerenciar estados
/*
	parado -> fica em pé abanando o rabo
	sentado -> fica sentado
	andando -> anda aleatóriamente
	persegue -> persegue onde o usuario clickou
	pega -> pega o osso
*/

estado = "parado";
velv = 0;
velh = 0;
timer_estado = room_speed * 3;
patrulha_volta = false;
dir = -1;
vel = .5;

face = 1;
/*
	1 -> esquerda
	2 -> direita
*/