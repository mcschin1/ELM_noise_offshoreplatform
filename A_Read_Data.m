% By C S Chin (cheng.chin@ncl.ac.uk)

% Form input col 1 to 13 --> input,  output col 14 to 17 --> output
clear all
close all
clc

%change to your folder
cd('C:\xxxxxxxxxxxxxxxxxxxx') 
load('noisedata.mat')

%training
len=107;
X_125=[X_125(1:len,2:14)   y_125(1:len,:)];save('tr125hz.txt', 'X_125', '-ASCII');   % don't use 'append'
X_250=[X_250(1:len,2:14)   y_250(1:len,:)];save('tr250hz.txt', 'X_250', '-ASCII');
X_500=[X_500(1:len,2:14)   y_500(1:len,:)];save('tr500hz.txt', 'X_500', '-ASCII');
X_1000=[X_1000(1:len,2:14) y_1000(1:len,:)];save('tr1000hz.txt', 'X_1000', '-ASCII');
X_2000=[X_2000(1:len,2:14) y_2000(1:len,:)];save('tr2000hz.txt', 'X_2000', '-ASCII');
X_4000=[X_4000(1:len,2:14) y_4000(1:len,:)];save('tr4000hz.txt', 'X_4000', '-ASCII');
X_8000=[X_8000(1:len,2:14) y_8000(1:len,:)];save('tr8000hz.txt', 'X_8000', '-ASCII');

%testing
clear all
load('noisedata.mat')
len=106;
len2=len*2;

X_125t=[X_125(len:len2,2:14) y_125(len:len2,:)];save('t125hz.txt', 'X_125t', '-ASCII');
X_250t=[X_250(len:len2,2:14) y_250(len:len2,:)];save('t250hz.txt', 'X_250t', '-ASCII');
X_500t=[X_500(len:len2,2:14) y_500(len:len2,:)];save('t500hz.txt', 'X_500t', '-ASCII');
X_1000t=[X_1000(len:len2,2:14) y_1000(len:len2,:) ];save('t1000hz.txt', 'X_1000t', '-ASCII');
X_2000t=[X_2000(len:len2,2:14) y_2000(len:len2,:) ];save('t2000hz.txt', 'X_2000t', '-ASCII');
X_4000t=[X_4000(len:len2,2:14) y_4000(len:len2,:) ];save('t4000hz.txt', 'X_4000t', '-ASCII');
X_8000t=[X_8000(len:len2,2:14) y_8000(len:len2,:) ];save('t8000hz.txt', 'X_8000t', '-ASCII');