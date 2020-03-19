% looking at data formats

clear all
close all
clc

%% load in Intan data
cd('G:\My Drive\lab-private\lab-teaching\2020_techniques\lecture_2');

fid = fopen('amplifier_analogin_auxiliary_int16.dat', 'rb');
raw_data = int16(fread(fid, Inf, 'int16')); % the reason I have to put int16 there is because matlab automatically converts to doubles
fclose(fid);

% reshape into matrix reflecting the number of channels
nChan = 7; % 7 channels
reshaped_data = reshape(raw_data, nChan, length(raw_data)/nChan)';


%% convert to double - we need to do this if we're going to do any math
reshaped_data_double = double(reshaped_data);


%% plotting
Fs = 20000; % 20 kHz sampling
timevec = 1/Fs:1/Fs:size(reshaped_data_double, 1)/Fs;

p1 = plot(timevec, reshaped_data_double);
x1 = xlabel('Time (seconds)');