directory = dir('C:\Users\Lenovo\Pictures\Saved Pictures\output\*.jpg');
for j = 1 : size(directory,1)
    name = directory(j).name;
    name = strcat('C:\Users\Lenovo\Pictures\Saved Pictures\output\', name);
    img{j}=imread(name);
    img{j}=imresize(img{j}, [200 200]);
    img{j}=im2double(img{j});
end
iter=40;
img1=img{1};
for j = 1:size(img, 2)
    if j<size(img, 2)
        new = img{j+1}-img{j};
    else
        new = img1-img{j};
    end
    new = new./iter;
    for k = 1 : iter
        img{k} = img{k}+new;
        [im, map]=rgb2ind(img{k},256);
        if k==1 && k ==1
            imwrite(im, map, 'Animated1.gif', 'DelayTime', 0.01,'LoopCount', 1);
        else
            imwrite(im, map, 'Animated1.gif', 'DelayTime', 0.01,'WriteMode', 'Append');
        end
    end
end
