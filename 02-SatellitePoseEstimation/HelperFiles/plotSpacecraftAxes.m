function [plotAxis] = plotSpacecraftAxes(img,points_camera_plane)
% This function plots the selected image and it's spacecraft's 
% corresponding x axis (red), y axis (green), z axis (blue).

%  Author(s): Reece Teramoto, Kautilya Vemulapalli
%  Copyright 2024 The MathWorks, Inc.

x = points_camera_plane(1:4);
y = points_camera_plane(5:8);
imshow(img)
hold on
quiver(x(1),y(1),x(2)-x(1),y(2)-y(1),"r","LineWidth",4)
quiver(x(1),y(1),x(3)-x(1),y(3)-y(1),"g","LineWidth",4)
quiver(x(1),y(1),x(4)-x(1),y(4)-y(1),"b","LineWidth",4)
hold off

plotAxisTemp = getframe;
plotAxis = plotAxisTemp.cdata;