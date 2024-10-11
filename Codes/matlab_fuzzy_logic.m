clear; clc;

fis = newfis('Irrigation_System');

fis = addvar(fis, 'input', 'soil_moisture', [0 100]);
fis = addmf(fis, 'input', 1, 'low', 'trimf', [-40 0 40]);
fis = addmf(fis, 'input', 1, 'medium', 'trimf', [20 50 80]);
fis = addmf(fis, 'input', 1, 'high', 'trimf', [60 100 140]);

fis = addvar(fis, 'input', 'soil_temperature', [-20 50]);
fis = addmf(fis, 'input', 2, 'very_low', 'trapmf', [-40 -20 -10 -5]);
fis = addmf(fis, 'input', 2, 'low', 'trimf', [-20 0 15]);
fis = addmf(fis, 'input', 2, 'medium', 'trimf', [-2 15 30]);
fis = addmf(fis, 'input', 2, 'high', 'trimf', [15 30 50]);
fis = addmf(fis, 'input', 2, 'very_high', 'trapmf', [35 40 50 50]);

fis = addvar(fis, 'output', 'motor_time', [0 10]);
fis = addmf(fis, 'output', 1, 'very_short', 'trimf', [0 0 2.5]);
fis = addmf(fis, 'output', 1, 'short', 'trimf', [0 3.333 5.333]);
fis = addmf(fis, 'output', 1, 'medium', 'trimf', [3 5 7]);
fis = addmf(fis, 'output', 1, 'long', 'trimf', [5 7.5 10]);
fis = addmf(fis, 'output', 1, 'very_long', 'trimf', [7.5 10 16.67]);

fis = addvar(fis, 'output', 'motor_speed', [0 250]);
fis = addmf(fis, 'output', 2, 'slow', 'trapmf', [0 0 65 115]);
fis = addmf(fis, 'output', 2, 'medium', 'trimf', [82 135 180]);
fis = addmf(fis, 'output', 2, 'fast', 'trimf', [145 195 245]);
fis = addmf(fis, 'output', 2, 'very_fast', 'trapmf', [215 240 250 280]);

rule_list = [
    1 1 1 1 1 1;
    2 1 2 2 1 1;
    3 1 3 2 1 1;
    1 2 2 2 1 1;
    2 2 2 2 1 1;
    3 2 3 4 1 1;
    1 3 3 2 1 1;
    2 3 3 2 1 1;
    3 3 3 4 1 1;
    1 4 3 2 1 1;
    2 4 4 4 1 1;
    3 4 4 3 1 1;
    1 5 4 3 1 1;
    2 5 5 4 1 1;
    3 5 5 4 1 1
];

fis = addrule(fis, rule_list);
writefis(fis, 'Irrigation_System.fis');
