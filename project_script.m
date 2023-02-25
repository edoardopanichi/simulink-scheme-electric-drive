s=tf('s');
G1= 1/(6.4*10^(-3)*s+24.9);
G2=1/(2.68*10^(-5)*s+8.356*10^(-4));
C1=7000*((1+0.00063*s)/s);
GC1=G1*G2*C1*(1/s);

bode(GC1);


mu=2.09*10^(-4);
tauz=0.025;
C2=mu*((1*tauz*s)/s);

GC=G1*G2*C1*C2;
bode(GC);

I_out_nom=0.772;

plot(out.speed); grid on; ylabel('speed [rpm]');

plot(out.I_out); grid on; legend; ylabel('I_out [A]');

plot(out.I_source); grid on; legend; ylabel('I_source [A]');
hold on;
plot(out.I_source_avg);

plot(out.speed); grid on; legend; ylabel('speed [rpm]')
hold on;
plot(out.speed_ref);
hold off;

plot(out.speed_error); grid on; legend; ylabel('speed error [rpm]')

%sim("Final_Project.slx");

