img = imread('JAMIL AHMED.jpg');
FD = vision.CascadeObjectDetector('MergeThreshold', 10);
bbox=step(FD,img);
for k = 1 : size(bbox, 1);
    crop{i} = imcrop(img, bbox(i, :));
end
img = rgb2gray(img);
img = cat(3, img, img, img);
for k = 1 : size(crop,2)
    img(bbox(i,2): bbox(i,2)+bbox(i,4), bbox(i,1): bbox(i,1)+bbox(i,3),:)=crop{i};
end
