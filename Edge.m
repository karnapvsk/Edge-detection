RGB = imread('motobike.jpg');
I = rgb2gray(RGB);

%Prewitt edge detection 
E1 = edge(I,'Prewitt');
%Sobel edge detection 
E2 = edge(I,'Sobel');
%Canny edge detection 
E3 = edge(I,'Canny');

%Show picture
subplot(2,2,1)
imshow(I)
title('Original image')
subplot(2,2,2)
imshow(E1)
title('Image using Prewitt method')
subplot(2,2,3)
imshow(E2)
title('Image using Sobel method')
subplot(2,2,4)
imshow(E3)
title('Image using Canny method')
figure

%Edge sharpening 
%Radius is standard deviation of the Gaussian lowpass filter
%Amount is strength of the sharpening factor
Es = imsharpen(I,'Radius',2,'Amount',1);
subplot(1,2,1)
imshow(I)
title('Original image')
subplot(1,2,2)
imshow(Es)
title('Sharpened image')