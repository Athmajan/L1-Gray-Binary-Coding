

% Open the existing figure
hFig = openfig('plots/64qam.fig');

% Plot new data on top of the existing plot
hold on

EbNo_dB_range = 0:1:12;
ser_List_8PSK = zeros(size(EbNo_dB_range));

for i = 1:length(EbNo_dB_range)
    EbNo = EbNo_dB_range(i);
    [ber, ser] = berawgn(EbNo, 'qam', 64,'coherent');
    ser_List_8PSK(i) = ser;
end

plot(EbNo_dB_range, ser_List_8PSK, 'LineWidth', 1, 'DisplayName', 'Theo SER','Color', 'red');


