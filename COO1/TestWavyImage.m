%image has to be a jpg
MyImage = imread('IMG_0979.jpeg');
MyImage = double(MyImage)/255;
image(wavy_image(MyImage));
axis image;