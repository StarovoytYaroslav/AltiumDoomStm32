clc; clearvars;
L = 10 * 10^-6; %?
Vout = 25.6;
Vin = 3.3;
Vf = 0.38;
Fs = 1.2 * 10^6;
Ilim = 1.2;
Ip = (L * Fs *((Vout + Vf - Vin)^-1 + (Vin)^-1))^-1;
Efficiency = .829;
Iout_max = Vin * (Ilim - Ip/2)*Efficiency / Vout;
Iin_dc = Vout * Iout_max/Vin/Efficiency;