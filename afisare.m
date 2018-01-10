%afiseaza o matrice sub format de tabla de joc
function [] = afisare (A)
	printf('    |   |   \n');
	printf('  %c | %c | %c \n', A(1), A(2), A(3));
	printf('    |   |   \n');
	printf(' ---+---+---\n');
	printf('    |   |   \n');
	printf('  %c | %c | %c \n', A(4), A(5), A(6));
	printf('    |   |   \n');
	printf(' ---+---+---\n');
	printf('    |   |   \n');
	printf('  %c | %c | %c \n', A(7), A(8), A(9));
	printf('    |   |   \n\n\n');
endfunction
