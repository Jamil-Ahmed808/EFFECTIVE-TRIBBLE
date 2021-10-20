img = imread('p10.jpg')
one3rd=round(size(rgb2gray(img),2)/3);
one2nd=one3rd*2;
gray=rgb2gray(img);
bw=im2bw(img);
for x=1:3
    img(:, one3rd+1:one2nd,x)=gray(:,one3rd+1:one2nd);
end
for x=1:size(gray,1)
    for y=one2nd+1:size(gray,2)
        for z=1:3
            if bw(x,y)==0
                img(x,y,z)=0;
            else
                img(x,y,z)=255;
            end
        end
    end
end
imshow(img)
