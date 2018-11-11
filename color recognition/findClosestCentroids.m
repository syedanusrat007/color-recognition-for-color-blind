function idx = findClosestCentroids(X, centroids)

K = size(centroids, 1);

idx = zeros(size(X,1), 1);

m = size(X,1);

for i=1:m
  k = 1;
  min_dist = sum((X(i,:) - centroids(1,:)) .^ 2);
  for j=2:K
      dist = sum((X(i,:) - centroids(j,:)) .^ 2);
      if(dist < min_dist)
        min_dist = dist;
        k = j;
      end
  end
  idx(i) = k;
end

end

