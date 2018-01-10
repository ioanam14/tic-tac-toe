function x = multiple_encode (str)
	%initializare rezultat x
	x = '';
	%aflare lungime sir primit ca parametru
	n = length(str);
	%codarea fiecarui caracter si adaugarea in x
	for i = 1:n
		aux = morse_encode(str(i));
		if strcmp(x, '') == 0
			x = [x ' ' aux];
		else
			x = aux;
		endif
	endfor
endfunction
