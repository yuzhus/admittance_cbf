clear all;
clc;
sim('Safety_filter_taskspace_run_FxTISMC.slx');
%% Animate parameters
dt=0.01;
L1=0.3;
L2=0.3;
m1=1.5;
m2=1;

%% Xr with Workspace
x(:,1)=ans.q.signals.values(1,1,:);
x(:,2)=ans.q.signals.values(2,1,:);
x(:,3)=ans.fe.signals(1).values(:,1);
x(:,4)=ans.fe.signals(1).values(:,2);
animate_4(x,dt,L1,L2,m1,m2,1);
title_name = sprintf("Xr with Workspace");
save(title_name);

%% Workspace constraints
% figure(1);
% hold on;
% plot(ans.XYdata.signals(1).values(:,1), ans.XYdata.signals(1).values(:,2),'LineWidth',3);
% plot(ans.XYdata.signals(3).values(:,1), ans.XYdata.signals(3).values(:,2),'LineWidth',3,'LineStyle','-.');
% rectangle('Position',[-0.13,-0.13,0.26,0.26],'Linewidth',3,'LineStyle',':','EdgeColor','r');
% legend('Desired Traj with fe','Original Traj');
% xlabel('X Position (m)','FontSize',18,'FontWeight','bold');
% ylabel('Y Position (m)','FontSize',18,'FontWeight','bold');
% axis([-0.2 0.2 -0.2 0.2]);
% grid on; box on;
% hold off;
% % exportgraphics(gcf,'Workspace_with_fe.png','Resolution',600);
% %% XY data
% figure(2);
% hold on;
% plot(ans.XYdata.time, ans.XYdata.signals(1).values(:,1),'LineWidth',2);
% plot(ans.XYdata.time, ans.XYdata.signals(1).values(:,2),'LineWidth',2);
% plot(ans.XYdata.time, ans.XYdata.signals(3).values(:,1),'LineWidth',1.5,'LineStyle','-.');
% plot(ans.XYdata.time, ans.XYdata.signals(3).values(:,2),'LineWidth',1.5,'LineStyle','-.');
% plot(ans.XYdata.time, ans.XYdata.signals(2).values(1,:),'LineWidth',1.5,'LineStyle','-.');
% plot(ans.XYdata.time, ans.XYdata.signals(2).values(2,:),'LineWidth',1.5,'LineStyle','-.');
% xlabel('Time','FontSize',22,'FontWeight','bold')
% ylabel('Trajectory','FontSize',22,'FontWeight','bold');
% set(gcf,'Units','centimeters','Position',[1.4 10 20 10]) 
% h = legend('Safe Traj X','Safe Traj Y','Original Traj X','Original Traj Y','Workspace boundary X','Workspace boundary Y');
% axis([0 25 -0.25 0.25]);
% grid on; box on;
% hold off;
% % exportgraphics(gcf,'Workspace_XY_with_fe.png','Resolution',600);
% %% Optimal Fe
% figure(3);
% hold on;
% plot(ans.fe.time, ans.fe.signals(1).values(:,1),'LineWidth',2);
% plot(ans.fe.time, ans.fe.signals(1).values(:,2),'LineWidth',2);
% xlabel('Time','FontSize',22,'FontWeight','bold')
% ylabel('Optimal Forces','FontSize',22,'FontWeight','bold');
% set(gcf,'Units','centimeters','Position',[1.4 10 20 10]) 
% h = legend('Optimal fe X','Optimal fe Y');
% axis([0 25 -8 8]);
% grid on; box on;
% hold off;
% % exportgraphics(gcf,'Workspace_Optimal_fe.png','Resolution',600);
% %% Original Fe
% figure(4);
% hold on;
% plot(ans.fe.time, ans.fe.signals(2).values(:,1),'LineWidth',2);
% plot(ans.fe.time, ans.fe.signals(2).values(:,2),'LineWidth',2);
% xlabel('Time','FontSize',22,'FontWeight','bold')
% ylabel('Original External Forces','FontSize',22,'FontWeight','bold');
% set(gcf,'Units','centimeters','Position',[1.4 10 20 10]) 
% h = legend('Original fe X','Original fe Y');
% axis([0 25 -1 5]);
% grid on; box on;
% hold off;
% % exportgraphics(gcf,'Workspace_Original_fe.png','Resolution',600);