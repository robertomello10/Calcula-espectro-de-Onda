function [E] = calculaEspectro(f,fp);
  
alfa=0.008;
gama=3.3;
g=9.8;
f1=0.03093;
c=1.1;
% fp=1/2; %1/Tp
theta_v=0

%%
delta=0;% vou definilo como sendo zero e depois comparo
% ef e fp para decidir se delta vale 0.05 ou 0.09
Theta_i=[1:36]*10;
 %i=1:69;
 
linha = 1;
saida = [];

##for fp=[2 8 16]

E=[];

    for i=1:length(f)
        fi= f(i);
        
        if(fi<=fp)
            delta=0.07;
        else
            delta=0.09;

        end
      
        parte3=gama^exp(-0.5*((fi-fp)/(delta*fp))^2);
        parte2=exp((-5/4)*(fi/fp)^-4);
        parte1=alfa*g^2*(2*pi)^-4*fi^-5;
        
        E=[E ,parte1.*parte2.*parte3];

 end
  
end
        