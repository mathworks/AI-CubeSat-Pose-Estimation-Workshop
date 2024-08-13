function [keypoints] = computeKeypointCoordinates(camera,json,vertices)
%  This function projects the wireframe spacecraft 3D world points to the target image

%  Author(s): Reece Teramoto, Kautilya Vemulapalli
%  Copyright 2024 The MathWorks, Inc.
q = json.q_vbs2tango_true;
t = json.r_Vo2To_vbs_true; 

keypoints = projectPoints(vertices, q, t, camera); % [2 x 11]