function  [cameraParamMatlab,intrinsicsOpenCV] = cameraParameters_Cubesat(cameraParameters)
% This function uses the provided camera properties to generate the camera parameters in MATLAB and OpenCV format
 
%  Author(s): Kautilya Vemulapalli
%  Copyright 2024 The MathWorks, Inc.

intrinsicsOpenCV = cameraParameters.cameraMatrix;
distortionCoeff = cameraParameters.distCoeffs;
imageSize = [cameraParameters.Nu cameraParameters.Nv];
cameraParamMatlab = cameraIntrinsicsFromOpenCV (intrinsicsOpenCV,distortionCoeff,imageSize);