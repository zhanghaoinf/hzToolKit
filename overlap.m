function c = overlap(a,b)
	c = [0, 0];
	temp = sort([a,b],'descend');
	if a(1) == min(temp) && a(2) == max(temp)
		c = b;
	else 
	     if b(1) == min(temp) && b(2) == max(temp)
		c = a;	
	     else 
		if (a(2) > b(1) && a(1) < b(1)) || (b(2) > a(1) && b(1) < a(1))
		c = [temp(3),temp(2)];
	        end
	     end

	end
end

