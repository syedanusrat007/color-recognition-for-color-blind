function centroids = computeCentroids(X, idx, K)

[m n] = size(X);

centroids = zeros(K, n);
for i=1:K
  xi = X(idx==i,:);
  ck = size(xi,1);
  if(ck!=0)
  centroids(i, :) = (1/ck) * sum(xi);
end

end

