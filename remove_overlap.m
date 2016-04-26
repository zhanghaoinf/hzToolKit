function boxes = remove_overlap(boxes, threshold)
cnt = 1;
temp_size = size(boxes);
boxNum    = temp_size(1);
boxMat    = zeros(1, boxNum);
while(cnt < boxNum)
	temp_box_1 = boxes(cnt,:);
	temp_x_1 = [temp_box_1(1), temp_box_1(3)];
	temp_y_1 = [temp_box_1(2), temp_box_1(4)];
	for cnt_2 = cnt+1:boxNum
		temp_box_2 = boxes(cnt_2,:);
		temp_x_2 = [temp_box_2(1), temp_box_2(3)];
		temp_y_2 = [temp_box_2(2), temp_box_2(4)];
		over_lap_x =  overlap(temp_x_1,temp_x_2);
		over_lap_y =  overlap(temp_y_1,temp_y_2);
		combine_x =   combine(temp_x_1,temp_x_2);
		combine_y = combine(temp_y_1,temp_y_2);
		area_over_lap = (over_lap_x(2) - over_lap_x(1)) * (over_lap_y(2) - over_lap_y(1));
		area_combine_two = (combine_x(2) - combine_x(1)) *(combine_y(2) - combine_y(1));
		boxMat(cnt_2) = area_over_lap / area_combine_two;
	end
		%boxMat
		threshMat = boxMat > threshold;
		delete_box = find(threshMat == 1);
		boxes(delete_box,:) = [];
		cnt = cnt + 1;
		temp_size = size(boxes);
		boxNum    = temp_size(1);
		boxMat    = zeros(1, boxNum);
end
end

