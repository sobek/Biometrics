function [sm] = skinmap(hs_image)
%UNTITLED Summary of this function goes here
%   Input: hue and saturation of an HSV color space image
%   I have it set so Hue is the 2nd level(hs_image(:,:,2) of the stack and 
%   saturation is the 3rd (hs_image(:,:,3))
%   Return: skin map

hs0 = 0.1073;
ss0 = 0.3515;
hsmax = 0.1892;
hsmin = 0.0122;
ssmax = 0.6250;
ssmin = 0.0558;


sm = 1 - sqrt((hs_image(:,:,2) - hs0).^2 + ((hsmax-hsmin)/(ssmax-ssmin))^2 + (hs_image(:,:,3) - ss0) .^ 2);


end

