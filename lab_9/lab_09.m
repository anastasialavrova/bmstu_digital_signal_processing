function lab_09()
    I=double(imread('bimage2.bmp')) / 255;

    figure;
    imshow(I); 
    title('Source image');

    % PSF=fspecial('motion', 50, 30);
    PSF=fspecial('motion', 55, 205);
    [J1,~]=deconvblind(I, PSF);
    figure;
    imshow(J1);
    title('Recovered image'); 
end