%functie ce realizeaza inmultirea dintre un numar mare si un scalar
function y = inmultire (x, scalar)
	%initializare vector y in care se va pastra rezultatul
	y = x;
	%setare transport la 0
	trans = 0;

	%se realizeaza inmultirea
	for i = 2:y(1)
		y(i) = y(i) * scalar + trans;
		trans = fix(y(i) / 10);
		y(i) = mod(y(i), 10);
	endfor

	%se adauga transportul ramas cat timp acesta exista
	while trans > 0
		y(1)++;
		y(y(1)) = mod (trans, 10);
		trans = fix(trans / 10);
	endwhile
endfunction
