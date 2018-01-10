function x = morse_encode (c)
	%transformarea caracterului in majuscula
	c = toupper(c);
	%generare cod morse
	Cmorse = morse();
	%apelare functie de cautare
	x = cautare('', Cmorse, '', c);
	%verificare gasire
	if strcmp(x, '')
		x = '*';
	endif
endfunction
