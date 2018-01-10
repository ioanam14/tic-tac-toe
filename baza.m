function r = baza (sursa, b1, b2)
	%transform sursa intr-un vector de numere
	%inversez sirul sursa si apoi il pun intr-un vector
	sursa = fliplr(sursa);
	number = toascii(sursa).-48;
	n = length(number);
	if b1 > 10
		for i = 1:n
			if number(i) > 9
				number(i) = number(i) - 39;
			endif
		endfor
	endif

	%initializez vectorul corespunzator numarului mare
	number = [n+1 number];
	%initializez numarul pe care trebuie sa il obtin ca fiind vid
	r = [];

	%transform numarul initial in baza 10 daca nu este deja
	if b1 != 10
		putere = [2 1];
		result = [2 0];
		aux = [];

		for i = 2:number(1)
			%inmultirea puterii cu cifra corespunzatoare
			aux = inmultire(putere, number(i));
			%adunarea produsului la rezultat
			T = 0;
			%completarea cu 0 pana la aceeasi lungime a vectorilor
			if aux(1) > result(1)
				for j = result(1) + 1:aux(1)
					result(j) = 0;
				endfor
				result(1) = aux(1);
			else
				for j = aux(1) + 1:result(1)
					aux(j) = 0;
				endfor
				aux(1) = result(1);
			endif
			%adunarea
			for j = 2:result(1)
				result(j) = result(j) + aux(j) + T;
				T = fix(result(j) / 10);
				result(j) = mod(result(j), 10);
			endfor
			%adunarea transportului
			if T > 0
				result(1)++;
				result(result(1)) = T;
			endif
			%cresterea puterii bazei
			putere = inmultire(putere, b1);
		endfor
		number = result;
	endif

	%transformarea din baza 10 in baza b2
	while (number(1) > 1)
		rest = 0;
		for i = number(1):-1:2
			rest = 10 * rest + number(i);
			number(i) = fix(rest / b2);
			rest = rem(rest, b2);
		endfor
		while (number(number(1)) == 0 && number(1) > 1)
			number(1)--;
		endwhile
		r = [rest r];
	endwhile

	%transformarea noului numar in char
	n = length(r);
	for i = 1:n
		if (r(i) > 9)
			r(i) = r(i) + 87;
		else
			r(i) = r(i) + 48;
		endif
	endfor
	r = (char)(r);
endfunction
