ax = input("X decay rate: ");
ay = input("Y decay rate: ");
dt = 1/10
im = zeros(100,100,3);
im(:,:,1)=255/255;
im(:,:,2)=177/255;
im(:,:,3)=66/255;
figure;
image(im);

check = 1
Px = 1-exp(-ax*dt);
Py = 1-exp(-ay*dt);
r = 0;

while check == 1
    for i = 1:100
        for j = 1:100
            r = rand();
            if im(i,j,1) == 1 && r<Px
                im(i,j,1) = 183/255;
                im(i,j,2) = 255/255;
                im(i,j,3) = 125/255;
            elseif im(i,j,2) == 1 && r<Py
                im(i,j,2) = 162/255;
                im(i,j,3) = 255/255;
            end
        end
    end
    pause(dt);
    image(im);
end