img = imread('p13.jpg');
img1 = imread('p3.jpg');
img = im2double(img);
img1 = im2double(img1);
new = img1 - img;
iter = 40;
new = new./iter
for i = 1:iter
    img = img+new;
    [im,map]=rgb2ing(img,256);
    if i == 1
        imwrite(im,map,'Animated.gif', 'DelayTime',0.01,'LoopCount', 1);
    else
        imwrite(im, map, 'animated.gif', 'DelayTime', 0.01, 'WriteMode', 'Append');
    end
end
