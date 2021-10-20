img = imread('p15.jpg');
FD = vision.CascadeObjectDetector('MergeThreshold', 10);
border = step(FD, img);
for i=1:size(border,1)
    subplot(1, size(border,1),i), imshow(imcrop(img,border(i,:)));
end
