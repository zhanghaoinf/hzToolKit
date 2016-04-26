function [st,ed] = sbatch(batch, total_batch, total_num)
	dvd = int32(total_num / total_batch);
	st = (batch -1) * dvd + 1;
	ed = batch * dvd;
	if batch == total_batch
		ed = total_num;
	end
end
