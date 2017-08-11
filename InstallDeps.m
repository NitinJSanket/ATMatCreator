A = system('./InstallDeps');
if(A==0)
    disp('Successfully installed all dependencies');
else
    disp('Cannot install all dependencies');
end