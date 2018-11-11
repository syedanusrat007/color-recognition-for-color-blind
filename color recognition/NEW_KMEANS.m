function [cluster_idx, cluster_center]=NEW_KMEANS(X,K)

centroids=[];
max_iterations = 5;
centroids = kMeansInitCentroids(X, K);

for i=1:max_iterations
  indices = findClosestCentroids(X, centroids);
  centroids = computeCentroids(X, indices, K);
end
cluster_center=centroids;
cluster_idx=indices;

end