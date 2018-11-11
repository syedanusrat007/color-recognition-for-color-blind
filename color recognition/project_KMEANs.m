clear
clc
he = imread('ColorMacro.jpg');
figure(1);
imshow(he), title('Input image');

lab_he = rgb2lab(he);
ab = lab_he(:,:,2:3);
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);
nColors = 4;

[cluster_idx, cluster_center] = NEW_KMEANS(ab,nColors);
pixel_labels = reshape(cluster_idx,nrows,ncols);


% figure(2);
%imshow(pixel_labels,[]), title('image labeled by cluster index');
segmented_images = cell(1,3);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = he;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end
figure(3);
imshow(segmented_images{1}), title('objects in cluster 1');
figure(4);

imshow(segmented_images{2}), title('objects in cluster 2');
figure(5);

imshow(segmented_images{3}), title('objects in cluster 3'); 