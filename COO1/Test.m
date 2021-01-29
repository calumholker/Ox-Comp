%Imports image, scales it down and applys the function wavy_image
%Image needs to be jpg
MyImage = imread('Image.jpg');
MyImage = double(MyImage)/255;
image(wavy_image(MyImage));
axis image;