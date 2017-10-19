clear; close all; clc;

load('histResults.mat');
numR = size(sResults,1);
numC = size(sResults,2);
Row = [1:1:numR];
[col,row] = meshgrid(Row); %only use x
%myCol='byr'; %'MarkerFaceColor',myCol(1),

figure;
for i=1: numR
   for j=1 : numC
       h = scatter(col(i,j), row(i,j), 's',...
           'MarkerEdgeColor',[0 0 1],...
           'MarkerFaceColor',[0 0 1],...
       'linewidth', sResults{i,j}*10);
       hold on;
   end
end
%trying to change 
 xticks(Row);xtickangle(45);
 xticklabels({1:1:75});
 yticks(Row);
 yticklabels({1:1:75});
 set(gca, 'XAxisLocation','top','YAxisLocation','left','ydir','reverse');


%{
%% example obtained from web
M1=[1    1    1    1    1   
.5    .5    .5    .5    .5
.8    .8    .8    .8    .8
.10    .10    .10    .10    .10];

M2=[-0.1    -0.93    0.4    0.65    0   
.25    .71    .83    -.59    -0.7
.23    -.14    -.55    .49    .53
74.   .71    -.19    .58    -.76];

R1=[1 2 3 4 5];
C1=[1 2 3 4 5];

[ii,jj]=meshgrid(R1,C1);
cl=sign(M2)+2;
col='byr';
for k=1:numel(M1)
  h=scatter(ii(k),jj(k),'MarkerFaceColor',col(1),'linewidth',M1(k));
  hold on;
end
%}