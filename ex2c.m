%--Name: Alexandros Kalergis
%--AM:   1066665
%--Year: 4th


clear all
close all
clc


data = importdata ('data_NN.mat');

data_new = data(1:3 , 1:1001);
data_new(1:3,1) = [-1.9, 0, -0.9]'; 



inputs = data_new(1:3, 1:1000);
targets = data_new(1:3, 2:1001);


% Levenberg-Marquardt backpropagation.
trainFcn = 'trainlm';  


% Create a Fitting Network
hiddenLayerSize = [10,10]; %2 hidden layers with 10 values
net = fitnet(hiddenLayerSize,trainFcn);


% Training, Validation, Testing
net.divideParam.trainRatio = 20/100;
net.divideParam.valRatio = 0/100;
net.divideParam.testRatio = 80/100;


% Train the Network
[net,tr] = train(net,inputs,targets);


% Test the Network
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);



% Plots

n1 = outputs(1, 1:1000);
n2 = outputs(2, 1:1000);
n3 = outputs(3, 1:1000);

figure
p1 = plot3(n1,n2,n3,'r'); %red is the nn outputs

hold on 

x1 = data_new(1, 1:1001);
x2 = data_new(2, 1:1001);
x3 = data_new(3, 1:1001);
p2 = plot3(x1,x2,x3,'b'); %blue is the func targets

title("Aproximation Difference")
xlabel("x1")
ylabel("x2")
zlabel("x3")

hold off

legend([p1(1),p2(1)],'Function Targets','Neural Network Outputs');

filename = 'data_VAL.mat';

save(filename, 'outputs')