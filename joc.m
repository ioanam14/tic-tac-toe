function [] = joc ()
	clc;
	disp ('X si 0');

	%initializare scor jucator si calculator
	scorPlayer = 0;
	scorPC = 0;

	while 1
		%jucatorul alege cu ce vrea sa joace
		button = questdlg ("Cu ce vrei sa joci?", "X sau 0", "0", "X", "X");
		chrplayer = button;

		%atribuire caracter PC
		if strcmp(chrplayer, 'X')
			chrPC = '0';
		else
			chrPC = 'X';
		endif

		%instructiunile jocului
		printf("Ai ales sa joci cu %c.", chrplayer);
		printf("\nPentru a muta trebuie sa introduci numarul din casuta respectiva. (1-9)\n");
		printf("Succes!\n");

		%initializare matrice 'tabla' de joc si afisare
		T = ['1' '2' '3' '4' '5' '6' '7' '8' '9'];
		afisare(T);
		T = [' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '];

		%cat timp mai sunt locuri libere pe tabla de joc
		while freespace(T)
			%verificare pentru inceperea jocului
			if strcmp(chrplayer, 'X')
				T = mutarePlayer(T, chrplayer);
				if isWon(T, chrplayer)
					disp('Felicitari! Ai castigat!');
					scorPlayer++;
					break;
				endif
				if freespace(T)
					T = mutarePC(T, chrPC, chrplayer);
					if isWon(T, chrPC)
						afisare(T);
						disp('Din pacate calculatorul a castigat');
						scorPC++;
						break;
					endif
				endif
				afisare(T);
			else
				T = mutarePC(T, chrPC, chrplayer);
				afisare(T);
				if isWon(T, chrPC)
					disp('Din pacate calculatorul a castigat');
					scorPC++;
					break;
				endif
				if freespace(T)
					T = mutarePlayer(T, chrplayer);
					afisare(T);
					if isWon(T, chrplayer)
						disp('Felicitari! Ai castigat!');
						scorPlayer++;
						break;
					endif
				endif
			endif
		endwhile

		%verifica egalitate
		if freespace(T) == 0
			disp('Egalitate!');
			scorPlayer++;
			scorPC++;
		endif

		%se afiseaza scorul dintre player si calculator
		printf ("Scorul tau %d\nScorul calculatorului %d\n\n", scorPlayer, scorPC);

		%se verifica daca jucatorul mai doreste o noua runda
		button = questdlg ("Vrei sa mai joci?", "Continui?", "Nu", "Da", "Da");
		%in caz contrar programul se opreste
		if strcmp(button, "Nu")
			break;
		endif
	endwhile
endfunction
