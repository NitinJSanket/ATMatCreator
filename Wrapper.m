clc
clear all
close all
warning off


%% Install Dependencies
% InstallDeps;

%% Connvert ps to pdf
PSFileName = '../ATMatCreatorData/alltags.ps';
PDFFileName = '../ATMatCreatorData/alltags.pdf';
% PS2PDF(PSFileName, PDFFileName);

%% Extract PNGs from PDF
ExtractPNGsFlag = 0; % Set to 0 if already done once
FileName = '../ATMatCreatorData/alltags.pdf';
SavePath = '../ATMatCreatorData/36h11png/';
OutPrefix = 'AT'; % Output FileName prefix
StartTagNo = 0; % Note tag numbers start from 0
EndTagNo = 586;
DPI = 300;% Default is 150, Pixels per inch 300DPI tag Size is 8.5in or 0.2159m
ExtractPNGs;

%% Place Tags on background image
TagSize = 0.2; % m
OrgTagSize = 0.2159; % m
SpaceBetweenTags = 0.2; % m
GridSize = [6, 6]; % Number of rows, columns
BgFileName = '../ATMatCreatorData/AA-1.png';
BgResizeFactor = 2; % Set to 1 if you don't want to resize
CropRatio = 0.06; % Ratio of the image you want to crop on all sides, set to 0 to not crop
StartIdx = [400, 400]; % Location of left top corner of first tag
WritePath = ['../ATMatCreatorData/',num2str(GridSize(1)),'x',num2str(GridSize(2)),'.png'];

ATMatCreator;
