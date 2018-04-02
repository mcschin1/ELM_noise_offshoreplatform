%% Basic ELM Classification -training & testing
% http://www.ntu.edu.sg/home/egbhuang/elm_codes.html
% [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy] = elm(TrainingData_File, TestingData_File, Elm_Type, NumberofHiddenNeurons, ActivationFunction)
clc
close all

addpath 'C:\Genetics_Algorithms\All_GA_Fuzzy_neutral network_ROV\CHIN_NN_NOISE\extreme_learning_machine'
addpath 'C:\Genetics_Algorithms\All_GA_Fuzzy_neutral network_ROV\CHIN_NN_NOISE\extreme_learning_machine\ELM'
cd('C:\Genetics_Algorithms\All_GA_Fuzzy_neutral network_ROV\CHIN_NN_NOISE\extreme_learning_machine')



% change these
neuron=20
activation= 'sin'


disp('Basic ELM')
disp('--------------125hz')
[TrainingTime125,TrainingAccuracy125,Y125_tr] = elm_train('tr125hz.txt',  0, neuron, activation);
[TestingTime125, TestingAccuracy125,e125,Y125_test] = elm_predict('t125hz.txt')

disp('--------------250hz')
[TrainingTime250,TrainingAccuracy250,Y250_tr] = elm_train('tr250hz.txt',  0,neuron, activation);
[TestingTime250, TestingAccuracy250,e250,Y250_test] = elm_predict('t250hz.txt')


disp('--------------500hz')
[TrainingTime500,TrainingAccuracy500,Y500_tr] = elm_train('tr500hz.txt',  0, neuron, activation);
[TestingTime500, TestingAccuracy500,e500,Y500_test] = elm_predict('t500hz.txt')


disp('--------------1000hz')
[TrainingTime1000,TrainingAccuracy1000,Y1000_tr] = elm_train('tr1000hz.txt',  0,neuron, activation);
[TestingTime1000, TestingAccuracy1000,e1000,Y1000_test] = elm_predict('t1000hz.txt')


disp('--------------2000hz')
[TrainingTime2000,TrainingAccuracy2000,Y2000_tr] = elm_train('tr2000hz.txt',  0, neuron, activation);
[TestingTime2000, TestingAccuracy2000,e2000,Y2000_test] = elm_predict('t2000hz.txt')


disp('--------------4000hz')
[TrainingTime4000,TrainingAccuracy4000,Y4000_tr] = elm_train('tr4000hz.txt',  0,neuron, activation);
[TestingTime4000, TestingAccuracy4000,e4000,Y4000_test] = elm_predict('t4000hz.txt')


disp('--------------8000hz')
[TrainingTime8000,TrainingAccuracy8000,Y8000_tr] = elm_train('tr8000hz.txt',  0, neuron, activation);
[TestingTime8000, TestingAccuracy8000,e8000,Y8000_test] = elm_predict('t8000hz.txt')


%--------------------------------------------------------------------------
% 125Hz
Xdata=y_125;      % raw training data
Xdata_tr=Y125_tr;
Xdatat=X_125t(:,14:17); % raw testing data
Xdata_test=Y125_test;

%training plot
%Spatial SPL	  |  Spatial average SPL (Total)	| structure-borne SPL	 | Airborne SPL
figure()
subplot(4,1,1)
plot(Xdata(1:len,1),'x-')
hold on
plot(Xdata_tr(1,:),'o-')
str = [sprintf('125Hz Training, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdata(1:len,2),'x-')
hold on
plot(Xdata_tr(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdata(1:len,3),'x-')
hold on
plot(Xdata_tr(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdata(1:len,4),'x-')
hold on
plot(Xdata_tr(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%testing plot
figure()
subplot(4,1,1)
plot(Xdatat(:,1),'x-')
hold on
plot(Xdata_test(1,:),'o-')
str = [sprintf('125Hz Testing, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdatat(:,2),'x-')
hold on
plot(Xdata_test(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdatat(:,3),'x-')
hold on
plot(Xdata_test(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdatat(:,4),'x-')
hold on
plot(Xdata_test(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%--------------------------------------------------------------------------
% 250Hz
Xdata=y_250;      % raw training data
Xdata_tr=Y250_tr;
Xdatat=X_250t(:,14:17); % raw testing data
Xdata_test=Y250_test;

%training plot
%Spatial SPL	  |  Spatial average SPL (Total)	| structure-borne SPL	 | Airborne SPL
figure()
subplot(4,1,1)
plot(Xdata(1:len,1),'x-')
hold on
plot(Xdata_tr(1,:),'o-')
str = [sprintf('250Hz Training, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdata(1:len,2),'x-')
hold on
plot(Xdata_tr(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdata(1:len,3),'x-')
hold on
plot(Xdata_tr(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdata(1:len,4),'x-')
hold on
plot(Xdata_tr(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%testing plot
figure()
subplot(4,1,1)
plot(Xdatat(:,1),'x-')
hold on
plot(Xdata_test(1,:),'o-')
str = [sprintf('250Hz Testing, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdatat(:,2),'x-')
hold on
plot(Xdata_test(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdatat(:,3),'x-')
hold on
plot(Xdata_test(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdatat(:,4),'x-')
hold on
plot(Xdata_test(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%--------------------------------------------------------------------------
% 500Hz
Xdata=y_500;      % raw training data
Xdata_tr=Y500_tr;
Xdatat=X_500t(:,14:17); % raw testing data
Xdata_test=Y500_test;

%training plot
%Spatial SPL	  |  Spatial average SPL (Total)	| structure-borne SPL	 | Airborne SPL
figure()
subplot(4,1,1)
plot(Xdata(1:len,1),'x-')
hold on
plot(Xdata_tr(1,:),'o-')
str = [sprintf('500Hz Training, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdata(1:len,2),'x-')
hold on
plot(Xdata_tr(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdata(1:len,3),'x-')
hold on
plot(Xdata_tr(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdata(1:len,4),'x-')
hold on
plot(Xdata_tr(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%testing plot
figure()
subplot(4,1,1)
plot(Xdatat(:,1),'x-')
hold on
plot(Xdata_test(1,:),'o-')
str = [sprintf('500Hz Testing, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdatat(:,2),'x-')
hold on
plot(Xdata_test(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdatat(:,3),'x-')
hold on
plot(Xdata_test(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdatat(:,4),'x-')
hold on
plot(Xdata_test(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%--------------------------------------------------------------------------
% 1000Hz
Xdata=y_1000;      % raw training data
Xdata_tr=Y1000_tr;
Xdatat=X_1000t(:,14:17); % raw testing data
Xdata_test=Y1000_test;

%training plot
%Spatial SPL	  |  Spatial average SPL (Total)	| structure-borne SPL	 | Airborne SPL
figure()
subplot(4,1,1)
plot(Xdata(1:len,1),'x-')
hold on
plot(Xdata_tr(1,:),'o-')
str = [sprintf('1000Hz Training, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdata(1:len,2),'x-')
hold on
plot(Xdata_tr(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdata(1:len,3),'x-')
hold on
plot(Xdata_tr(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdata(1:len,4),'x-')
hold on
plot(Xdata_tr(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%testing plot
figure()
subplot(4,1,1)
plot(Xdatat(:,1),'x-')
hold on
plot(Xdata_test(1,:),'o-')
str = [sprintf('1000Hz Testing, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdatat(:,2),'x-')
hold on
plot(Xdata_test(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdatat(:,3),'x-')
hold on
plot(Xdata_test(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdatat(:,4),'x-')
hold on
plot(Xdata_test(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  


%--------------------------------------------------------------------------
% 2000Hz
Xdata=y_2000;      % raw training data
Xdata_tr=Y2000_tr;
Xdatat=X_2000t(:,14:17); % raw testing data
Xdata_test=Y2000_test;

%training plot
%Spatial SPL	  |  Spatial average SPL (Total)	| structure-borne SPL	 | Airborne SPL
figure()
subplot(4,1,1)
plot(Xdata(1:len,1),'x-')
hold on
plot(Xdata_tr(1,:),'o-')
str = [sprintf('2000Hz Training, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdata(1:len,2),'x-')
hold on
plot(Xdata_tr(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdata(1:len,3),'x-')
hold on
plot(Xdata_tr(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdata(1:len,4),'x-')
hold on
plot(Xdata_tr(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%testing plot
figure()
subplot(4,1,1)
plot(Xdatat(:,1),'x-')
hold on
plot(Xdata_test(1,:),'o-')
str = [sprintf('2000Hz Testing, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdatat(:,2),'x-')
hold on
plot(Xdata_test(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdatat(:,3),'x-')
hold on
plot(Xdata_test(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdatat(:,4),'x-')
hold on
plot(Xdata_test(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  


%--------------------------------------------------------------------------
% 4000Hz
Xdata=y_4000;      % raw training data
Xdata_tr=Y4000_tr;
Xdatat=X_4000t(:,14:17); % raw testing data
Xdata_test=Y4000_test;

%training plot
%Spatial SPL	  |  Spatial average SPL (Total)	| structure-borne SPL	 | Airborne SPL
figure()
subplot(4,1,1)
plot(Xdata(1:len,1),'x-')
hold on
plot(Xdata_tr(1,:),'o-')
str = [sprintf('4000Hz Training, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdata(1:len,2),'x-')
hold on
plot(Xdata_tr(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdata(1:len,3),'x-')
hold on
plot(Xdata_tr(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdata(1:len,4),'x-')
hold on
plot(Xdata_tr(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%testing plot
figure()
subplot(4,1,1)
plot(Xdatat(:,1),'x-')
hold on
plot(Xdata_test(1,:),'o-')
str = [sprintf('4000Hz Testing, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdatat(:,2),'x-')
hold on
plot(Xdata_test(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdatat(:,3),'x-')
hold on
plot(Xdata_test(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdatat(:,4),'x-')
hold on
plot(Xdata_test(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%--------------------------------------------------------------------------
% 8000Hz
Xdata=y_8000;      % raw training data
Xdata_tr=Y8000_tr;
Xdatat=X_8000t(:,14:17); % raw testing data
Xdata_test=Y8000_test;

%training plot
%Spatial SPL	  |  Spatial average SPL (Total)	| structure-borne SPL	 | Airborne SPL
figure()
subplot(4,1,1)
plot(Xdata(1:len,1),'x-')
hold on
plot(Xdata_tr(1,:),'o-')
str = [sprintf('8000Hz Training, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdata(1:len,2),'x-')
hold on
plot(Xdata_tr(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdata(1:len,3),'x-')
hold on
plot(Xdata_tr(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdata(1:len,4),'x-')
hold on
plot(Xdata_tr(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  

%testing plot
figure()
subplot(4,1,1)
plot(Xdatat(:,1),'x-')
hold on
plot(Xdata_test(1,:),'o-')
str = [sprintf('8000Hz Testing, Neuron =%3.0f , Act.Func=' , neuron ),activation];
title(str)
ylabel('Spatial SPL')
xlabel('Sample'),  legend('actual','predicted ', 'Orientation', 'horizontal')
subplot(4,1,2)
plot(Xdatat(:,2),'x-')
hold on
plot(Xdata_test(2,:),'o-')
ylabel('Spatial AVG SPL')
xlabel('Sample')  
subplot(4,1,3)
plot(Xdatat(:,3),'x-')
hold on
plot(Xdata_test(3,:),'o-')
ylabel(' Structure-borne SPL')
xlabel('Sample')  
subplot(4,1,4)
plot(Xdatat(:,4),'x-')
hold on
plot(Xdata_test(4,:),'o-')
ylabel(' Airborne SPL')
xlabel('Sample')  



% Table Results
clc
disp('Basic ELM')
C1=num2cell(zeros(8,5));

C1(1,:)={'Freq', 'TrainingTime','TrainingAccuracy RMSE','TestingTime','TestingAccuracy RMSE'};
C1(2:8,1)={'125z', '250Hz','500Hz','1000Hz','2000Hz','4000Hz','8000Hz'};
C1(2:8,2:5)={TrainingTime125,TrainingAccuracy125,TestingTime125,TestingAccuracy125;...
TrainingTime250,TrainingAccuracy250,TestingTime250,TestingAccuracy250;...
TrainingTime500,TrainingAccuracy500,TestingTime500,TestingAccuracy500;...
TrainingTime1000,TrainingAccuracy1000,TestingTime1000,TestingAccuracy1000;...
TrainingTime2000,TrainingAccuracy2000,TestingTime2000,TestingAccuracy2000;...
TrainingTime4000,TrainingAccuracy4000,TestingTime4000,TestingAccuracy4000;...
TrainingTime8000,TrainingAccuracy8000,TestingTime8000,TestingAccuracy8000}
C1_ELM=cell2mat(C1(2:8,2:5));   % convert Cell data back to matrix 


%%----For Display & copy and paste to WORD document---------------------------------------------------------------

disp('Basic ELM')

disp('TrainingTime| TrainingAccuracy RMSE|TestingTime|TestingAccuracy RMSE');
C1_ELM
%plot trainingtime
figure()
subplot(4,1,1)
bar(C1_ELM(:,1) )
ylabel(' TrainingTime   ')
xlabel('Sample')
str = sprintf('Neuron =%3.0f , Norm RMSE =%3.5f', neuron ,norm(C1_ELM(:,1)) );
title(str);

%plot Training Accuracy RMSE
subplot(4,1,2)
bar(C1_ELM(:,2) )
ylabel('Training RMSE   ')
xlabel('Sample')
str = sprintf('Neuron =%3.0f , Norm RMSE =%3.5f', neuron ,norm(C1_ELM(:,2)) );
title(str);

%plot TestingTime
subplot(4,1,3)
bar(C1_ELM(:,3) )
ylabel('Testing Time  ')
xlabel('Sample')
str = sprintf('Neuron =%3.0f , Norm RMSE =%3.5f', neuron ,norm(C1_ELM(:,3)) );
title(str);

%plot Testing Accuracy RMSE
subplot(4,1,4)
bar(C1_ELM(:,4) )
ylabel('Testing RMSE ')
xlabel('Sample')
str = sprintf('Neuron =%3.0f , Norm RMSE =%3.5f', neuron ,norm(C1_ELM(:,4)) );
title(str);


% for each cell
cell01=[C1_ELM(1,:)    ];
cell02=[C1_ELM(2,:)     ];
cell03=[C1_ELM(3,:)    ];
cell04=[C1_ELM(4,:)   ];
cell05=[C1_ELM(5,:)     ];
cell06=[C1_ELM(6,:)   ];
cell07=[C1_ELM(7,:)    ];

% training RMSE
trainingrmse=[cell01(:,2) cell02(:,2) cell03(:,2) cell04(:,2)  cell05(:,2) cell06(:,2) cell07(:,2)  ]
testingrmse=[cell01(:,4) cell02(:,4) cell03(:,4) cell04(:,4)  cell05(:,4) cell06(:,4) cell07(:,4)  ]

trainingtime=[cell01(:,1) cell02(:,1) cell03(:,1) cell04(:,1) cell05(:,1) cell06(:,1) cell07(:,1) ]
testingtime=[cell01(:,3) cell02(:,3) cell03(:,3) cell04(:,3)  cell05(:,3) cell06(:,3) cell07(:,3)]

e125
e250
e500
e1000
e2000
e4000
e8000

