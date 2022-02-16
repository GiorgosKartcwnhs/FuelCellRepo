%Plot of data points extracted using  Grabit
close all
load data

yyaxis left
ax = gca;
ax.YAxis(1).Color = 'b';
ax.YAxis(2).Color = 'g';

plot(current(: ,1),current( :,2),'b')




xlim([0 700])
ylim([0 300])

xlabel('Current (A)','FontSize',15,'FontWeight','normal','Color','k')
ylabel('Voltage (V)','FontSize',15,'FontWeight','normal','Color','k')



hold on
yyaxis right
plot(power(: ,1),power( :,2),'--g')
xlim([0 700.2])
ylim([0 150])
title('Typical characteristics of voltage, power vs. current.','FontSize',20)
ylabel('Power (kw) (V)','FontSize',15,'FontWeight','normal','Color','k')

%{
fig = openfig('V-I and P-I characteristic curves of Studied Fuel Cell.fig');
fig = findobj(gca,'Type','line');
x=get(fig,'Xdata');
y=get(fig,'Ydata');
%}

%{
delete V-I and P-I characteristic curves of Studied Fuel Cell.fig;
savefig('V-I and P-I characteristic curves of Studied Fuel Cell.fig');
open('V-I and P-I characteristic curves of Studied Fuel Cell.fig');
h = gcf; %current figure handle
axesObjs = get(h, 'Children');  %axes handles
dataObjs = get(axesObjs, 'Children'); %handles t
xdata = get(dataObjs, 'XData'); 
ydata = get(dataObjs, 'YData');
%}


















