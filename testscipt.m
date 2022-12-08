a = imread("verif_out.ppm");


%b = imread("test-vectors/vec_271_01_sv_short_ref.ppm");
b = imread("test-vectors/vec_271_00_sv_ref.ppm");
alt_diff = a- b
diff = abs(a - b)
figure
imshow(a)
figure
imshow(b)



figure
c = find(diff)
x = find(alt_diff)
imshow(diff*255)