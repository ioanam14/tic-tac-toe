%functie care verfica daca cineva castigat
function winner = isWon (A, chr)
	winner = 0;

	%prima linie
	if strcmp(A(1), chr) && strcmp(A(2), chr) && strcmp(A(3), chr)
		winner = 1;
		return;
	%a doua linie
	elseif strcmp(A(4), chr) && strcmp(A(5), chr) && strcmp(A(6), chr)
		winner = 1;
		return;
	%a treia linie
	elseif strcmp(A(7), chr) && strcmp(A(8), chr) && strcmp(A(9), chr)
		winner = 1;
		return;
	%prima coloana
	elseif strcmp(A(1), chr) && strcmp(A(4), chr) && strcmp(A(7), chr)
		winner = 1;
		return;
	%a doua coloana
	elseif strcmp(A(2), chr) && strcmp(A(5), chr) && strcmp(A(8), chr)
		winner = 1;
		return;
	%a treia coloana
	elseif strcmp(A(3), chr) && strcmp(A(6), chr) && strcmp(A(9), chr)
		winner = 1;
		return;
	%diagonala principala
	elseif strcmp(A(1), chr) && strcmp(A(5), chr) && strcmp(A(9), chr)
		winner = 1;
		return;
	%diagonala secundara
	elseif strcmp(A(3), chr) && strcmp(A(5), chr) && strcmp(A(7), chr)
		winner = 1;
		return;
	endif
endfunction
