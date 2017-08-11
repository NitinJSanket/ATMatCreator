CropRatio = 0.1145; % Default for 36h11 on A4 paper
ImageSize = [11, 8.5].*DPI;
CropDim = [floor(CropRatio.*ImageSize(1)), ImageSize(2)];
if(ExtractPNGsFlag)
    if(~exist(SavePath, 'dir'))
        mkdir(SavePath);
    end
    
    %% If doesn't exist convert pdf to high res png images
    tic
    Command = ['pdftoppm ', FileName,' ', SavePath, OutPrefix, ' -f ',num2str(StartTagNo+1), ' -l ',...
        num2str(EndTagNo+1),         ' -png -r ', num2str(DPI), ' -y ', num2str(CropDim(1)), ' -H ',...
        num2str(CropDim(2))];
    system(Command);
    toc
end