function Z = zigzag(n)
	%initializare matrice cu 0
	Z = zeros(n, n);
	i = 2;
	j = 2;
	%parcurgere numere de la 0 la n^2 - 1
	for elem = 0 : n * n - 1
		Z(i - 1, j - 1) = elem;
		%diagonalele pare
		if (mod (i + j, 2) == 0)
			%daca nu am ajuns la marginea metricei avansam
			if j <= n
				j++;
			%daca am ajuns la finalul diagonalei trecem la urmatoarea diagonala
			else
				i = i + 2;
			endif
			%ne deplasam pe diagonala daca nu suntem la margine
			if i > 2
				i--;
			endif
		%diagonalele impare
		else
			%daca nu am ajuns la marginea metricei avansam
			if i <= n
				i++;
			%daca am ajuns la finalul diagonalei trecem la urmatoarea diagonala
			else
				j = j + 2;
			endif
			%ne deplasam pe diagonala daca nu suntem la margine
			if j > 2
				j--;
			endif
		endif
	endfor
endfunction
