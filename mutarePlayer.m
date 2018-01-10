%functie pentru mutarea facuta de catre player
function T = mutarePlayer (A, chrplayer)
	%initializare rezultat
	T = A;
	
	%introducerea mutarii
	mutare = input ('Introdu mutarea ta: ');

	%pozitionare mutare in functie de input
	if (mutare > 0 && mutare < 10)
		if (strcmp(T(mutare), ' ') == 0)
			printf ("Caracter neacceptat\n");
			T = mutarePlayer(T, chrplayer);
		else
			T(mutare) = chrplayer;
		endif
	else
		printf ("Caracter neacceptat\n");
		T = mutarePlayer(T, chrplayer);
	endif
endfunction
