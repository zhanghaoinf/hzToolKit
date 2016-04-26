function ap = AP_N(gt,sc)
%ground_truth = [1,1,1,1,1,0,0,-1,-1,-1]';
%score        = [0.3,0.4...........]';

ground_truth = gt';
score        = sc';
[val,ind] = sort(score,'descend');

pos_neg_list = zeros(1,length(ind));
cnt = 0;
for idx = ind
	cnt = cnt + 1;
	pos_neg_list(cnt) = ground_truth(idx);
end
	pos_list = pos_neg_list > 0;
pos_num = sum(pos_list);
pos_cnt = 0;
AP_raw = 0;
for	cnt_1 = 1:length(pos_neg_list)
	if pos_neg_list(cnt_1) == 1
		pos_cnt = pos_cnt + 1;
		AP_raw = AP_raw + (1.0*pos_cnt) / (1.0* sum(abs(pos_neg_list(1:cnt_1))));		
	end
end
ap = AP_raw / pos_num;
end
