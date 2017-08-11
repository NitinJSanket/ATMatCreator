OrgTagSize = 0.2159; % m
SpaceBetweenTagsPx = floor(DPI*SpaceBetweenTags./OrgTagSize*8.5); % Pixels
TagSizePx = floor(DPI*TagSize./OrgTagSize*8.5); % Pixels


% Load Background Image
IBg = imread(BgFileName);
CropSize = floor(CropRatio*min(size(IBg,1), size(IBg,2)));
IBg = IBg(CropSize:size(IBg,1)-CropSize, CropSize:size(IBg,2)-CropSize, :);
IBg = imresize(IBg, BgResizeFactor, 'bicubic');

% Tag No indexing starts from 0
StartTagNo = 0;
NumTags = GridSize(1)*GridSize(2);
EndTagNo = StartTagNo + NumTags - 1;

IOut = IBg;
% Need a min of 300DPI for good print
MinDPI = 300;
if(TagSize>OrgTagSize*DPI/MinDPI)
    error('Reduce TagSize');
end

[RowIdx,ColIdx] = ind2sub(GridSize, 1:NumTags);

for count = 1:EndTagNo+1
    I = imread([SavePath,'AT-',sprintf('%03d',count),'.png']);
    I = imresize(I, TagSize/OrgTagSize, 'bicubic');
    RowStart = (TagSizePx+SpaceBetweenTagsPx).*(RowIdx(count)-1) + StartIdx(1);
    ColStart = (TagSizePx+SpaceBetweenTagsPx).*(ColIdx(count)-1) + StartIdx(2);
    RowEnd = RowStart + TagSizePx; % Tag is Square
    ColEnd = ColStart + TagSizePx;
    IOut(RowStart:RowEnd, ColStart:ColEnd, :) = I;
end

disp(['Best fit is ', num2str(floor((size(IBg,1)-StartIdx(1))/(TagSizePx+SpaceBetweenTagsPx))),...
     ' x ', num2str(floor((size(IBg,2)-StartIdx(2))/(TagSizePx+SpaceBetweenTagsPx)))]);

figure,
imshow(IOut);
disp(['Print Size will be ', num2str([size(IBg,1)/DPI]), ' x ', num2str(size(IBg,2)/DPI), ' inches']);

imwrite(IOut, WritePath);