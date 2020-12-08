timer++;

// Vamos gerenciar as animações pelo draw

switch(estado)
{
	case "parado":
		if (face == 1)
		{
			scr_parado(1);
		}
		else if (face == 2)
		{
			scr_parado(-1);
		}
		break;
	case "sentado":
		if (face == 1)
		{
			scr_sentado(1);
		}
		else if (face == 2)
		{
			scr_sentado(-1);
		}
		break;
	case "andando":
		if (face == 2)
		{
			scr_andando(-1);
		}
		else if (face == 1)
		{
			scr_andando(1);
		}
		break;
	case "persegue":
		if (face == 1)
		{
			scr_correndo(1);	
		}
		else if (face == 2)
		{
			scr_correndo(-1);
		}
		break;
	case "pega":
		if (face == 1)
		{
			scr_correndo(1);	
		}
		else if (face == 2)
		{
			scr_correndo(-1);
		}
		break;
}


//scr_latindo(-1);
//scr_andando(1);
//scr_correndo(1);
//scr_sentado(1);
//scr_sentando(1);
//scr_levantando(1);
//scr_parado(1);