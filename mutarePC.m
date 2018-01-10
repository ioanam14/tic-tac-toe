%algoritm pentru mutarea calculatorului
function A = mutarePC (T, chrPC, chrplayer)
	A = T;

	%verifica daca poate muta astfel incat sa castige
	copy = T;
	for i = 1:9
		if strcmp(copy(i), ' ')
			copy(i) = chrPC;
			if isWon(copy, chrPC)
				A(i) = chrPC;
				return;
			endif
		endif
		copy = T;
	endfor
	%verifica daca poate castiga playerul si il blocheaza

	copy = T;
	for i = 1:9
		if strcmp(copy(i), ' ')
			copy(i) = chrplayer;
			if isWon(copy, chrplayer)
				A(i) = chrPC;
				return;
			endif
		endif
		copy = T;
	endfor

	%verifica daca sunt libere colturile si pune pe unul in caz afirmativ
	moves = [];
	for i = [1 3 7 9]
		if strcmp(T(i), ' ')
			moves = [moves i];
		endif
	endfor

	n = length(moves);
	if (n != 0)
		A(moves(randi(n))) = chrPC;
		return;
	endif

	%verifica daca este liber centrul si pune pe el in caz afirmativ
	if strcmp(T(5), ' ')
		A(5) = chrPC;
		return;
	endif

	%verifica daca sunt libere laturile si pune pe unul in caz afirmativ
	moves = [];
	for i = [2 4 6 8]
		if strcmp(T(i), ' ')
			moves = [moves i];
		endif
	endfor

	n = length(moves);
	if (n != 0)
		A(moves(randi(n))) = chrPC;
		return;
	endif

endfunction
