%% Generate transparent images of the Medusa vehicle
%  Author: Nguyen Tuan Hung - IST Lisbon
close all;
clear all;
Col_VTblack= [128,128,128]/255;           % gray
Col_VTyellow= [255,255,153]/255;           % gray
Col_VTred= [255,102,0]/255;           % gray
col = [Col_VTblack;
       Col_VTyellow;
       Col_VTred];

p=[0 0] ;
yaw=-90;

for i=1:3
figure
set(figure(i), 'Units', 'normalized', 'Position', [0,0,1,1]);
   plot(p(1,2),p(1,1),'.-','LineWidth',0.5,'Color',[10,10,0]/255);
   hold on;
   Scale=.01;
   GTF_Simulink_PlotAUV([p(1,2),p(1,1),0], [0,0,yaw], Scale, 0,col(i,:),1);  
axis([-1 1 -1 1]);
   
set(gca,'xtick',[])
set(gca,'xticklabel',[])

set(gca,'ytick',[])
set(gca,'yticklabel',[])

set(gca,'visible','off')
set(gcf, 'Color', 'None');
if (i==1)
    export_fig VTmblack.png  -transparent;
elseif (i==2)
    export_fig VTmyellow.png  -transparent;
else
    export_fig VTmred.png  -transparent;
end
close all;
end


% close all;

% saveas(figure(1),'VTmblack.png')
% saveas(figure(2),'VTmyellow.png')
% saveas(figure(3),'VTmred.png')
% export_fig -png  -transparent;
%   