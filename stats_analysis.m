fprintf("Graficacion y estadisticas de los 8 experimentos en linea recta \n\n")
% Set the Carmaker path
cmenv;
% we declare the path for the signals resulting from our tests
vL0 = ([pwd,'\','line\','Variation 0','.erg']);
vL1 = ([pwd,'\','line\','Variation 1','.erg']);
vL2 = ([pwd,'\','line\','Variation 2','.erg']);
vL3 = ([pwd,'\','line\','Variation 3','.erg']);
vL4 = ([pwd,'\','line\','Variation 4','.erg']);
vL5 = ([pwd,'\','line\','Variation 5','.erg']);
vL6 = ([pwd,'\','line\','Variation 6','.erg']);
vL7 = ([pwd,'\','line\','Variation 7','.erg']);
% Load CarMaker database from file
CM0 = cmread(vL0);
CM1 = cmread(vL1);
CM2 = cmread(vL2);
CM3 = cmread(vL3);
CM4 = cmread(vL4);
CM5 = cmread(vL5);
CM6 = cmread(vL6);
CM7 = cmread(vL7);
% We get the t and f(t) data for every test 
Time_s0 = CM0.Time.data'; TrailerAngle_deg0 = CM0.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg0 = CM0.Driver_Control_trailerAngleReq.data';
Time_s1 = CM1.Time.data'; TrailerAngle_deg1 = CM1.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg1 = CM1.Driver_Control_trailerAngleReq.data';
Time_s2 = CM2.Time.data'; TrailerAngle_deg2 = CM2.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg2 = CM2.Driver_Control_trailerAngleReq.data';
Time_s3 = CM3.Time.data'; TrailerAngle_deg3 = CM3.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg3 = CM3.Driver_Control_trailerAngleReq.data';
Time_s4 = CM4.Time.data'; TrailerAngle_deg4 = CM4.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg4 = CM4.Driver_Control_trailerAngleReq.data';
Time_s5 = CM5.Time.data'; TrailerAngle_deg5 = CM5.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg5 = CM5.Driver_Control_trailerAngleReq.data';
Time_s6 = CM6.Time.data'; TrailerAngle_deg6 = CM6.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg6 = CM6.Driver_Control_trailerAngleReq.data';
Time_s7 = CM7.Time.data'; TrailerAngle_deg7 = CM7.Tr_Hitch_dr_0_z.data'; DesiredAngle_deg7 = CM7.Driver_Control_trailerAngleReq.data';
%radians to degrees
TrailerAngle_deg0 = TrailerAngle_deg0*(180/pi);
TrailerAngle_deg1 = TrailerAngle_deg1*(180/pi);
TrailerAngle_deg2 = TrailerAngle_deg2*(180/pi);
TrailerAngle_deg3 = TrailerAngle_deg3*(180/pi);
TrailerAngle_deg4 = TrailerAngle_deg4*(180/pi);
TrailerAngle_deg5 = TrailerAngle_deg5*(180/pi);
TrailerAngle_deg6 = TrailerAngle_deg6*(180/pi);
TrailerAngle_deg7 = TrailerAngle_deg7*(180/pi);

subplot(3,3,1); plot(Time_s0,TrailerAngle_deg0); legend("Line 0");
subplot(3,3,2); plot(Time_s1,TrailerAngle_deg1); legend("Line 1");
subplot(3,3,3); plot(Time_s2,TrailerAngle_deg2); legend("Line 2");
subplot(3,3,4); plot(Time_s3,TrailerAngle_deg3); legend("Line 3");
subplot(3,3,5); plot(Time_s4,TrailerAngle_deg4); legend("Line 4");
subplot(3,3,6); plot(Time_s5,TrailerAngle_deg5); legend("Line 5");
subplot(3,3,7); plot(Time_s6,TrailerAngle_deg6); legend("Line 6");
subplot(3,3,8); plot(Time_s7,TrailerAngle_deg7); legend("Line 7");
grid on

subplot(3,3,9)
hold on
plot(Time_s0,TrailerAngle_deg0);
plot(Time_s1,TrailerAngle_deg1);
plot(Time_s2,TrailerAngle_deg2);
plot(Time_s3,TrailerAngle_deg3);
plot(Time_s4,TrailerAngle_deg4);
plot(Time_s5,TrailerAngle_deg5);
plot(Time_s6,TrailerAngle_deg6);
plot(Time_s7,TrailerAngle_deg7);
hold off
xlabel('Time [s]');
ylabel('Trailer Angle [deg]');
grid on


%% calculando valores estadisticos para la prueba 0
fprintf("Prueba 0 \n\n");
error0 = TrailerAngle_deg0 - DesiredAngle_deg0;
absoluto0 = abs(error0);
error0 = error0.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error0));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error0));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error0))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto0));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto0));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto0))

%% calculando valores estadisticos para la prueba 1
fprintf("Prueba 1 \n\n");
error1 = TrailerAngle_deg1 - DesiredAngle_deg1;
absoluto1 = abs(error1);
error1 = error1.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error1));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error1));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error1))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto1));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto1));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto1))

%% calculando valores estadisticos para la prueba 2
fprintf("Prueba 2 \n\n");
error2 = TrailerAngle_deg2 - DesiredAngle_deg2;
absoluto2 = abs(error2);
error2 = error2.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error2));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error2));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error2))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto2));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto2));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto2))

%% calculando valores estadisticos para la prueba 3
fprintf("Prueba 3 \n\n");
error3 = TrailerAngle_deg3 - DesiredAngle_deg3;
absoluto3 = abs(error3);
error3 = error3.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error3));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error3));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error3))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto3));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto3));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto3))

%% calculando valores estadisticos para la prueba 4
fprintf("Prueba 4 \n\n");
error4 = TrailerAngle_deg4 - DesiredAngle_deg4;
absoluto4 = abs(error4);
error4 = error4.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error4));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error4));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error4))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto4));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto4));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto4))

%% calculando valores estadisticos para la prueba 5
fprintf("Prueba 5 \n\n");
error5 = TrailerAngle_deg5 - DesiredAngle_deg5;
absoluto5 = abs(error5);
error5 = error5.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error5));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error5));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error5))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto5));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto5));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto5))

%% calculando valores estadisticos para la prueba 6
fprintf("Prueba 6 \n\n");
error6 = TrailerAngle_deg6 - DesiredAngle_deg6;
absoluto6 = abs(error6);
error6 = error6.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error6));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error6));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error6))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto6));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto6));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto6))

%% calculando valores estadisticos para la prueba 7
fprintf("Prueba 7 \n\n");
error7 = TrailerAngle_deg7 - DesiredAngle_deg7;
absoluto7 = abs(error7);
error7 = error7.^2;
fprintf("El error cuadratico integral es de %E \n\n", sum(error7));
fprintf("El error cuadratico promedio es de %E \n\n", mean(error7));
fprintf("La desviacion estandar del error cuadratico es de %E  \n\n", std(error7))
fprintf("El error absoluto integral es de %E \n\n", sum(absoluto7));
fprintf("El error absoluto promedio es de %E \n\n", mean(absoluto7));
fprintf("La desviacion estandar del error absoluto es de %E  \n\n", std(absoluto7))

%% Calculando valores estadisticos generales del las pruebas en linea recta

fprintf("Valores estadisticos generales \n\n")

fprintf("El error cuadratico integral promedio de las 8 pruebas es %E \n\n",mean([sum(error0),sum(error1),sum(error2),sum(error3),sum(error4),sum(error5),sum(error6),sum(error7)]))
fprintf("El error cuadratico promedio de las 8 pruebas es %E \n\n",mean([mean(error0),mean(error1),mean(error2),mean(error3),mean(error4),mean(error5),mean(error6),mean(error7)]))
fprintf("El promedio (De las 8 pruebas) de la desviacion estandar del error cuadratico es %E \n\n",mean([std(error0),std(error1),std(error2),std(error3),std(error4),std(error5),std(error6),std(error7)]))

fprintf("El error absoluto integral promedio de las 8 pruebas es %E \n\n",mean([sum(absoluto0),sum(absoluto1),sum(absoluto2),sum(absoluto3),sum(absoluto4),sum(absoluto5),sum(absoluto6),sum(absoluto7)]))
fprintf("El error absoluto promedio de las 8 pruebas es %E \n\n",mean([mean(absoluto0),mean(absoluto1),mean(absoluto2),mean(absoluto3),mean(absoluto4),mean(absoluto5),mean(absoluto6),mean(absoluto7)]))
fprintf("El promedio (De las 8 pruebas) de la desviacion estandar del error absoluto es %E \n\n",mean([std(absoluto0),std(absoluto1),std(absoluto2),std(absoluto3),std(absoluto4),std(absoluto5),std(absoluto6),std(absoluto7)]))
