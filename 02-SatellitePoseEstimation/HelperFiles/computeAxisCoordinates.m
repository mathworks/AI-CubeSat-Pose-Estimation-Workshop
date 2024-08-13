function [points_camera_plane] = computeAxisCoordinates(cameraParamMatlab,q,r)
% This function creates an x, y and z axis for the spacecraft in the world frame and uses the selected image's groundtruth to project it to the camera frame.

%  Author(s): Kautilya Vemulapalli
%  Copyright 2024 The MathWorks, Inc.

points_axis = [0 0 0; 1 0 0; 0 1 0; 0 0 1];
dcm = quat2dcm(q);
points_camera_plane = (worldToImage(cameraParamMatlab,dcm,r,points_axis))';
points_camera_plane = [points_camera_plane(1,:),points_camera_plane(2,:)]';