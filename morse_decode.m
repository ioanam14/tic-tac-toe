%functie ce decodifica un sir de . si -
function x = morse_decode (sir)
	%aflu lungimea sirului primit ca parametru
	n = length(sir);
	%generez codul morse
	m = morse();
	%initilaizare rezultat
	x = '';
	%parcurg sirul primit ca parametru si decodific
	for i = 1:n
		%daca este . merg in stanga
		if sir(i) == '.'
			%verific daca exista un termen
			if iscellstr(m{2})
				x = '*';
				break;
			else
				m = m{2};
				x = m{1};
			endif
		%daca este - merg in dreapta
		elseif sir(i) == '-'
			%verific daca exista un termen
			if iscellstr(m{3})
				x = '*';
				break;
			else
				m = m{3};
				x = m{1};
			endif
		endif
	endfor
	%daca x a rammas null ii atribui *
	if x == ''
		x = '*';
	endif
endfunction
