%functie ce verifica daca mai este un spatiu libere
function x = freespace (T)
	x = 0;
	for i = 1:9
		if strcmp(T(i), ' ') 
			x = 1;
			break;
		endif
	endfor
endfunction
