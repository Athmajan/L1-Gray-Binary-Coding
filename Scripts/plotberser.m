
BER_simu_binary_8psk = load('bertoolExports/BER_simu_binary_8psk.mat');
BER_simu_binary_8psk = convertStringToNumericArray(BER_simu_binary_8psk);

BER_simu_binary_16qam = load('bertoolExports/BER_simu_binary_16QAM.mat');
BER_simu_binary_16qam = convertStringToNumericArray(BER_simu_binary_16qam);

BER_simu_binary_64qam = load('bertoolExports/BER_simu_binary_64QAM.mat');
BER_simu_binary_64qam = convertStringToNumericArray(BER_simu_binary_64qam);

BER_simu_gray_8psk = load('bertoolExports/BER_simu_gray_8psk.mat');
BER_simu_gray_8psk = convertStringToNumericArray(BER_simu_gray_8psk);

BER_simu_gray_16qam = load('bertoolExports/BER_simu_gray_16QAM.mat');
BER_simu_gray_16qam = convertStringToNumericArray(BER_simu_gray_16qam);

BER_simu_gray_64qam = load('bertoolExports/BER_simu_gray_64QAM.mat');
BER_simu_gray_64qam = convertStringToNumericArray(BER_simu_gray_64qam);

BER_theo_8psk = load('bertoolExports/BER_theo_8psk.mat');
BER_theo_8psk = convertStringToNumericArray(BER_theo_8psk);

BER_theo_16qam = load('bertoolExports/BER_theo_16qam.mat');
BER_theo_16qam = convertStringToNumericArray(BER_theo_16qam);

BER_theo_64qam = load('bertoolExports/BER_theo_64qam.mat');
BER_theo_64qam = convertStringToNumericArray(BER_theo_64qam);


SER_simu_binary_8psk = load('bertoolExports/SER_simu_Binary_8PSK.mat');
SER_simu_binary_8psk = convertStringToNumericArray(SER_simu_binary_8psk);


SER_simu_binary_16qam = load('bertoolExports/SER_simu_Binary_16QAM.mat');
SER_simu_binary_16qam = convertStringToNumericArray(SER_simu_binary_16qam);


SER_simu_binary_64qam = load('bertoolExports/SER_simu_Binary_64QAM.mat');
SER_simu_binary_64qam = convertStringToNumericArray(SER_simu_binary_64qam);


SER_simu_gray_8psk = load('bertoolExports/SER_simu_Gray_8PSK.mat');
SER_simu_gray_8psk = convertStringToNumericArray(SER_simu_gray_8psk);

SER_simu_gray_16qam = load('bertoolExports/SER_simu_Gray_16QAM.mat');
SER_simu_gray_16qam = convertStringToNumericArray(SER_simu_gray_16qam);

SER_simu_gray_64qam = load('bertoolExports/SER_simu_Gray_64QAM.mat');
SER_simu_gray_64qam = convertStringToNumericArray(SER_simu_gray_64qam);



SER_theo_8psk = load('bertoolExports/SER_theo_8psk.mat');
SER_theo_8psk = SER_theo_8psk.ser_List_8PSK;

SER_theo_16qam = load('bertoolExports/SER_theo_16qam.mat');
SER_theo_16qam = SER_theo_16qam.ser_List_8PSK;

SER_theo_64qam = load('bertoolExports/SER_theo_64qam.mat');
SER_theo_64qam = SER_theo_64qam.ser_List_8PSK;



% Define EbNo_dB_range
EbNo_dB_range = 0:1:12;

% Create figure for 8PSK
figure;

% Plot BER for 8PSK

plot(EbNo_dB_range, BER_simu_binary_8psk);
hold on


plot(EbNo_dB_range, BER_simu_gray_8psk);
hold on


plot(EbNo_dB_range, BER_theo_8psk);

hold on

plot(EbNo_dB_range, SER_simu_binary_8psk);

hold on

plot(EbNo_dB_range, SER_simu_gray_8psk);

hold on

plot(EbNo_dB_range, SER_theo_8psk);
title('8PSK');
% Legend for 8PSK figure
legend('BER Simu Binary', 'BER Simu Gray', 'BER Theo', 'SER Simu Binary', 'SER Simu Gray', 'SER Theo');

hold off

% Create figure for 16QAM
figure;

% Plot BER for 16QAM

plot(EbNo_dB_range, BER_simu_binary_16qam);
hold on


plot(EbNo_dB_range, BER_simu_gray_16qam);
hold on


plot(EbNo_dB_range, BER_theo_16qam);
hold on


plot(EbNo_dB_range, SER_simu_binary_16qam);
hold on


plot(EbNo_dB_range, SER_simu_gray_16qam);
hold on


plot(EbNo_dB_range, SER_theo_16qam);
hold off

% Legend for 16QAM figure
legend('BER Simu Binary', 'BER Simu Gray', 'BER Theo', 'SER Simu Binary', 'SER Simu Gray', 'SER Theo');

title('16QAM');

% Create figure for 64QAM
figure;

% Plot BER for 64QAM

plot(EbNo_dB_range, BER_simu_binary_64qam);
hold on


plot(EbNo_dB_range, BER_simu_gray_64qam);
hold on


plot(EbNo_dB_range, BER_theo_64qam);
hold on


plot(EbNo_dB_range, SER_simu_binary_64qam);
hold on


plot(EbNo_dB_range, SER_simu_gray_64qam);
hold on


plot(EbNo_dB_range, SER_theo_64qam);
hold off

% Legend for 64QAM figure
legend('BER Simu Binary', 'BER Simu Gray', 'BER Theo', 'SER Simu Binary', 'SER Simu Gray', 'SER Theo');

title('64QAM');




function numericArray = convertStringToNumericArray(bertoolOut)
    % Extract the data from BER_simu_binary_8psk
    inputString = bertoolOut.bers0.dataView{4};

    % Split the string into individual elements
    strArray = strsplit(inputString, ', ');

    % Convert the cell array of strings to a numeric array
    numericArray = str2double(strArray);
end

