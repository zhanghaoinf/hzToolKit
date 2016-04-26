function normMat = myl2norm(Mat)
% Mat is n-by-Dim mat
% Every column is a feature
Mat = Mat'; 
[Dim, Num] = size(Mat);
fprintf('Calculat L2 norm vect...');
if Num ~= 1
	l2Vect = sqrt(sum(Mat.^2, 1));
else
	l2Vect = sqrt(sum(Mat.^2));
end
fprintf('Done\n');
l2Mat  = repmat(l2Vect, [Dim, 1]);
normMat = Mat ./ l2Mat;
normMat(isnan(normMat))=0;
normMat = normMat';
fprintf('L2 norm finished\n');
end
