function [plotPoints] = plotSpacecraftWireframe(points)
% This function plots a wireframe model of the spacecraft

%  Author(s): Reece Teramoto, Kautilya Vemulapalli
%  Copyright 2024 The MathWorks, Inc.

plot3(points([1, 2, 4, 3, 1],1), points([1, 2, 4, 3, 1],2), points([1, 2, 4, 3, 1],3))
plot3(points([5, 6, 8, 7, 5],1), points([5, 6, 8, 7, 5],2), points([5, 6, 8, 7, 5],3))
plotPointsTemp = getframe;
plotPoints = plotPointsTemp.cdata;