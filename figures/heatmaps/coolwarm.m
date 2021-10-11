function c = coolwarm(m)
%COOLWARM    Blue to white to red divergent color map
%   COOLWARM(M), is an M-by-3 matrix that defines a colormap.
%   The colors begin with dark blue, range through shades of
%   blue to white, and then through shades of red to dark red.
%   As seen in "Diverging Color Maps for Scientific Visualization"
%   by Kenneth Moreland of Sandia National Laboratories.
%
%   COOLWARM, by itself, is the same length as the current figure's
%   colormap. If no figure exists, MATLAB creates one.
%
%   For example, to reset the colormap of the current figure:
%
%             colormap(coolwarm)
%
%   See also HSV, GRAY, HOT, BONE, COPPER, PINK, FLAG, COLORMAP, RGBPLOT.
%
%   Created by:   Sam Borgeson 
%   Email:        sborgeson@berkeley.edu 
%   Last update:  1/30/2012
%

if nargin < 1, m = size(get(gcf,'colormap'),1); end

%   Seed color values from "Diverging Color Maps for Scientific
%   Visualization" by Kenneth Moreland of Sandia National Laboratories
a = [   59 76 192;...
        68 90 204;...
        77 104 215;...
        87 117 225;...
        98 130 234;...
        108 142 241;...
        119 154 247;...
        130 165 251;...
        141 176 254;...
        152 185 255;...
        163 194 255;...
        174 201 253;...
        184 208 249;...
        194 213 244;...
        204 217 238;...
        213 219 230;...
        221 221 221;...
        229 216 209;...
        236 211 197;...
        241 204 185;...
        245 196 173;...
        247 187 160;...
        247 177 148;...
        247 166 135;...
        244 154 123;...
        241 141 111;...
        236 127 99;...
        229 112 88;...
        222 96 77;...
        213 80 66;...
        203 62 56;...
        192 40 47;...
        180 4 38] / 255;

% get the number of color entries (= rows of a)
n = size(a,1);
% interpolate the originals to have m values as requested
% note that there are n-1 steps between 1 and n
c = interp1(1:n,a,1:(n-1)/(m-1):n);