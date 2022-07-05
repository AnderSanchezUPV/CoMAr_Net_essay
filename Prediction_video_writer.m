function Prediction_video_writer(comDSTrain, trainedNet)
reset(comDSTrain)
v=VideoWriter('Achitecture_test_1.avi');
v.FrameRate=3;
open(v)
f=figure;
    for ii=1:360
    display(ii/360*100)
    label=read(comDSTrain);
%     montage({label{1,1},label{1,2}})
    %% 
    % Realizar prediccion
    
    prediction=predict(trainedNet,label{1,1},label{1,2});
    %%    
    imshow(label{1,1})
    drawrectangle(Position=[label{1,3}(1:2)-40,80,80],Color='r',Label='Label');
    drawrectangle(Position=[prediction(1:2)-40,80,80],Color='b',Label='Prediction');
    drawnow
%     pause(0.1)
    frame=getframe(f);
    writeVideo(v,frame);
    
    end
close(v)
end