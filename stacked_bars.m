
clear all

stat_file = "SampleStat.csv";
Plot_Title = "Richest People";

%pick RGB color from internet then divide by 255
color_palette = [0.43 0.74 0.93; ...
                 0.92 0.84 0.20];


% find number of columns in file
f_delim = ',';
f_snif = fopen(stat_file,'rt');
tLines = fgets(f_snif);
f_cols = numel(strfind(tLines,f_delim)) + 1;
fclose(f_snif);
num_cols = f_cols - 1;

% resolve the file
stat_file_id = fopen(stat_file);
stat_data=textscan(stat_file_id, [ '%s', repmat(' %d', [1,num_cols]) ], 'delimiter' , ',', 'headerlines', 1);
fclose(stat_file_id);

Page  = stat_data{1};

stat_num = zeros(rows(stat_data{1}), 1);
for j = 1:num_cols
    stat_num = [stat_num  ( stat_data{1+j}-stat_num(:,j) ) ];
end
stat_num(:,1) = [];
NumericalCols = stat_num;


stat_bar = bar(NumericalCols, 'stacked');  
for k = 1: columns(NumericalCols)
    set (stat_bar(k), "facecolor", color_palette(k,:));
end


grid on;
title(Plot_Title)

set(gca, 'XTick',1:size(Page))
set(gca,  'YMinorTick', 'on', 'YMinorGrid','on')
xticklabels(Page);

% The following lines are based on source:
% https://lists.gnu.org/archive/html/help-octave/2009-07/msg00273.html

% get position of current xtick labels
xtick = 1:size(Page);
h = get(gca,'xlabel');
xlabelstring = get(h,'string');
xlabelposition = get(h,'position');

% construct position of new xtick labels
yposition = xlabelposition(2);
yposition = repmat(yposition+120,length(xtick),1); %120 to control where to put the text

% disable current xtick labels
set(gca,'xtick',[]);

% set up new xtick labels and rotate
hnew = text(xtick, yposition, Page);
set(hnew,'rotation',90,'horizontalalignment','left', 'FontSize',14);


printf("\n done successfully\n")
