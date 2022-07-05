function [DLConvolution] = myDLConv(img,patron)
    img=dlarray(img);
    patron=dlarray(patron);
    DLConvolution=dlconv(img,patron,0,"Padding","same",DataFormat="SSCB");
end