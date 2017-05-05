clear all; close all; clc

a = 9.81; %acceleration(m/s^2)
r=.0635; %radius of wheel (m) 
y=.001016;%.04 inches bump (m)
%y = r - sqrt(r^2-(gap/2)^2);
dt2=0.0000001; %time step
trackLength = 500; %meters
gap = 0.00635;



%Function dt lists the times that the pod will reach 12ft intervals
dt = @(x) sqrt(2.*x./a);

%calculates the 12ft intervals from 0m-100m
times = dt(0:3.6576:trackLength); %3.6576m = 12ft


A(1,:)=[0,(r-y),0];
for j=2:length(times)
    y1=y*rand(1,1);
    A = [A;times(j)-dt2,r-y1,0];
    %A = [A;verticalHeightD(a,r,y,times(j),dt2)];
    A = [A;verticalHeight(a,r,y1,times(j),dt2)];
    %A = [A;times(j)+A(end,3),r-y,0];
end

%plot(A(:,1),A(:,2))

A1 = [A(:,1),A(:,2)-(r-y)]
% clear A1
% A1 = [[0:10]',zeros(1,11)']
%Writes A1 to a spreadsheet
filename = 'RoadCondition.xlsx';
delete('RoadCondition.xlsx')
xlswrite(filename,A1,'RoadCondition');
% save A1 'A1.mat'




% %Calculates the velocty of the pod at the 12ft intervals
% v0 = a.*times;
% 
% %assigns a matrix of zeros that is the same length as times
% X=zeros(length(times),2);
% 
% %Finds the vertical veloctity and time interval of the wheel over bumps
% for j=1:length(times)
%     if j==1
%         X(j,:)=0;
%     else
%         X(j,:)=averageVerticalV(v0(j),r,y);
%     end
% end

%X1 = verticalHeight(a,r,y,10,dt2)



