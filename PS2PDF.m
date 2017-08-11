function PS2PDF(PSFileName, PDFFileName)
A = system(['ps2pdf ', PSFileName, ' ', PDFFileName]);
if(A==0)
    disp('Successfully converted ps to pdf');
else
    disp('Error in converting ps to pdf');
end
end