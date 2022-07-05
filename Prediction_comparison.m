function Prediction_comparison(comDSTrain, trainedNet)
reset(comDSTrain)
figure
    while hasdata(comDSTrain)
    
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
    pause(0.1)
    end
end