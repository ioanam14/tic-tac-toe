%functie recursiva pentru cautarea unui caracter in arbore
%si returnarea codului corespunzator acestuia
function result = cautare(gen, next, c, caracter)
	%formez codul respunzator caracterlui la care sunt cu parcurgerea
	gen = [gen c];
	result = '';
	%daca am gasit caracterul cautat salvez codul lui in rezultat
	if strcmp(next{1}, caracter)
		result = gen;
	%daca nu l-am gasit continui parcurgerea
	else
		%daca exista fiu in stanga apelez pentru parcurgerea lui
		%si adaug '.' in sir
		if iscellstr(next{2}) == 0
			result = [result cautare(gen, next{2}, '.', caracter)];
		endif
		%daca exista fiu in dreapta apelez pentru parcurgerea lui
		%si adaug '-' in sir
		if iscellstr(next{3}) == 0
			result = [result cautare(gen, next{3}, '-', caracter)];
		endif
	endif
endfunction
