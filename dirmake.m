function state = dirmake(folder_path)
	state = 0;
	if ~exist(folder_path)
		state = mkdir(folder_path);
	end
end
