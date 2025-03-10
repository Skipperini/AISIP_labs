clear, close all
%1
figure;
img1 = imread('pout.tif');
imshow(img1);
title('Pout');
figure;
img2 = imread('coins.png');
imshow(img2);
title('Coins');

%2
figure;
img3 = imread('/MATLAB Drive/images/car.jpg');
imshow(img3);
title('Cat');

%3
whos img1;
whos img2;
whos img3;

%4
imwrite(img1, '/MATLAB Drive/images/pout.tif');
imwrite(img2, '/MATLAB Drive/images/coins.png');

%5
figure;
imhist(img1);
title('Histogram 1');
figure;
imhist(img2);
title('Histogram 2');
figure;
imhist(img3);
title('Histogram 3');

%6, 7
figure;
imshow(imadjust(img1));
title('Contrast 1');

figure;
imshow(imadjust(img2));
title('Contrast 2');

figure;
imshow(imadjust(img3, [0.5 0.5 0.5; 1.0 1.0 1.0], []));
title('Contrast 3');


%8
I_negative = imadjust(img1, [0 1], [1 0]);
figure;
imshow(I_negative);
title('Negative');