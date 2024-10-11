clc; clear; close all;
delete(instrfindall);

serial_conn = serial('COM3', 'BaudRate', 9600);
fopen(serial_conn);

fuzzy_system = readfis('D:\Allahin Adami Program File\MathLab\bin\irrigation_system.fis'); % Load the fuzzy logic control system

x = 1;
while x
    data = fscanf(serial_conn, '%s');
    s = strsplit(data, '.');
    temperature = str2double(s(2));  
    temperature = temperature * 5 / 1024; % Scale to 0-5 range
    moisture = str2double(s(1));
    moisture = moisture * 5 / 1024; % Scale to 0-5 range
    temperature(x) = 14 * temperature - 20; % Adjust to (-20, 50) range
    moisture(x) = 20 * moisture; % Adjust to (0, 100) range
    y = evalfis(fuzzy_system, [moisture(x) temperature(x)]); % Evaluate fuzzy logic output
    duration(x) = y(2);
    speed(x) = y(1);
    fprintf('Temperature=%f Moisture=%f Duration=%f Speed=%f\n', temperature(x), moisture(x), y(1), y(2));
    fwrite(serial_conn, [duration(x)], 'float');
    fwrite(serial_conn, [speed(x)], 'float');
    x = x + 1;
end
