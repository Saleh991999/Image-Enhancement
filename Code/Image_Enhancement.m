% Loading the our image into the workspace
 Image = imread('pout.tif');

 % For comparison, it is better to have a predefined width
 width = 200;

 % Resizing the image using bicubic interpolation
 dim = size(Image);
 Image = imresize(Image , width * [dim(1) / dim(2) 1] , 'bicubic');

 % Adjusting the contrast using imadjust
 Image_imadjust = imadjust(Image);

 % Adjusting the contrast using histogram equalization
 Image_histeq = histeq(Image);

 % Adjusting the contrast using adaptive histogram equalization
 Image_adapthisteq = adapthisteq(Image);


 subplot(2 , 2 , 1);
 imshow(Image);
 title('Original Image');

 subplot(2 , 2 , 2);
 imshow(Image_imadjust);
 title('Enhanced Image using Imadjust');

 subplot(2 , 2 , 3);
 imshow(Image_histeq);
 title('Enhanced Image using Histeq');

 subplot(2 , 2 , 4);
 imshow(Image_adapthisteq);
 title('Enhanced Image using Adapthisteq');