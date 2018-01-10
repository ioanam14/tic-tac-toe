function x = multiple_decode(sir)
	%separ sirul dupa spatii si ii calculez lungimea
	split = strsplit(sir, ' ');
	n = length(split);
	%initializez sirul rezultat
	x = '';
	%decodific fiecare componenta a vectorului rezultat si adaug rezultatul in x
	for i = 1:n
		aux = morse_decode(split{i});
		x = [x aux];
	endfor
endfunction
