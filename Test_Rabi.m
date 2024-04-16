%Test zu Rabi Oszillationen
%Wie verändert sich Besetzungswahrscheinlichkeit, wenn ich zu einem festen
%Zeitpunkt t (=Länge CEST Puls tp) schaue für verschiedene Frequenzoffsets
%dw im CEST Experiment?


w1 = 1;
tp=4;
dw=linspace(-100,100,10001);
Rabi = ((w1/2)^2+dw.^2).^(1/2); 


P_1 = (w1/2./Rabi).^(1/2) .* (1-cos(Rabi*tp./2));
P_0 = max(P_1)-P_1;

plot(dw,P_1);
% hold on
% plot(dw,P_0)
xlabel('dw')
ylabel('Probability P_{0,1}')

% --> gedämpfte Schwingung, d.h. Modulationen werden kleiner für größere
% Frequenzoffsets, oszillieren allerdings mit dw!


%%
%Als Funktionsschar:
tp=linspace(0,1000,101);
dw=linspace(1,10,3);
w1 = 1;

figure

for i=1:length(dw)
Rabi = ((w1/2)^2+dw(1,i).^2).^(1/2); 

P_1 = (w1/2./Rabi).^(1/2) .* (1-cos(Rabi.*tp./2));

plot(tp,P_1);
hold on
end

xlabel('t')
ylabel('Probability P_{0,1}')