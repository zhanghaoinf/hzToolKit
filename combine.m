function d = combine(a,b)
	temp = sort([a,b],'descend');
	d = [temp(4), temp(1)];
end
