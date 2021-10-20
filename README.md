# BLUR ALL IMAGES OF DIRECTORY IMAGES

directory = dir('C:\Users\Lenovo\Pictures\Saved Pictures\JAMIL AHMED\*.jpg');
for k = 1 : size(directory,1)
    name = directory(i).name;
    name = strcat('C:\Users\Lenovo\Pictures\Saved Pictures\JAMIL AHMED\', name);
    img{i} = imread(name);
    blur = fspecial('disk', 10);
    img{i} = imfilter(img{i}, blur);
end
for k = 1 : size(img, 2)
    subplot(2, round(size(img,2)/2),i), imshow(img{i});
end
