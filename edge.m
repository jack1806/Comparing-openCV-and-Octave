pkg load image
im = imread("1.png");
s = size(im)
H = int32(s(1));
W = int32(s(2));
im = im(H./3:2*H./3,W./3:2*W./3,:);
h = fspecial("gaussian",[3 3],4)
smooth = imfilter(im,h);
figure,imshow(im),title("Original");
figure,imshow(smooth),title("Smooth");
imedge = edge(rgb2gray(smooth),"sobel");
figure,imshow(imedge),title("Edged");
figure,imshow(dct2(imedge)),title("Frequency Domain");
