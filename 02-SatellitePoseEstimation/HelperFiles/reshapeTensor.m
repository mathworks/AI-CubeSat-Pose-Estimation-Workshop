function out = reshapeTensor(in)
% Helper function to reshape tensor by stride 2
% - in:  [H, W, C, B]
% - out: [H/2, W/2, 4C, B]
s = 2; % stride
H = size(in, 1); W = size(in, 2); C = size(in, 3); B = size(in, 4);
out = reshape(in, H/s, s, W/s, s, C, B);
out = permute(out, [1, 3, 2, 4, 5, 6]);
out = reshape(out, H/s, W/s, s*s*C, B);
end