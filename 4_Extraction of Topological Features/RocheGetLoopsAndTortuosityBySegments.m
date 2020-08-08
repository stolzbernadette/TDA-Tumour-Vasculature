%% Roche data get number of loops and Betti1 curves

% Bernadette Stolz
% 22.8.2019

initial_path = '/Users/user/Desktop/Vasculature Project/Roche Output/';

load([initial_path 'Roche_tumour_data.mat'])

number_of_divisions = 500;

controls_number_of_loops_d1 = Roche_tumour_data.Controls.LoopsTotal(Roche_tumour_data.Controls.Day==1)./cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==1));
controls_number_of_loops_d3 = Roche_tumour_data.Controls.LoopsTotal(Roche_tumour_data.Controls.Day==3)./cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==3));
controls_number_of_loops_d7 = Roche_tumour_data.Controls.LoopsTotal(Roche_tumour_data.Controls.Day==7)./cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==7));
controls_number_of_loops_d14 = Roche_tumour_data.Controls.LoopsTotal(Roche_tumour_data.Controls.Day==14)./cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==14));

controls_number_of_loopsCore_d1 = Roche_tumour_data.Controls.LoopsCore(Roche_tumour_data.Controls.Day==1)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==1));
controls_number_of_loopsCore_d3 = Roche_tumour_data.Controls.LoopsCore(Roche_tumour_data.Controls.Day==3)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==3));
controls_number_of_loopsCore_d7 = Roche_tumour_data.Controls.LoopsCore(Roche_tumour_data.Controls.Day==7)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==7));
controls_number_of_loopsCore_d14 = Roche_tumour_data.Controls.LoopsCore(Roche_tumour_data.Controls.Day==14)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==14));

controls_number_of_loopsPeriphery_d1 = Roche_tumour_data.Controls.LoopsPeriphery(Roche_tumour_data.Controls.Day==1)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==1));
controls_number_of_loopsPeriphery_d3 = Roche_tumour_data.Controls.LoopsPeriphery(Roche_tumour_data.Controls.Day==3)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==3));
controls_number_of_loopsPeriphery_d7 = Roche_tumour_data.Controls.LoopsPeriphery(Roche_tumour_data.Controls.Day==7)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==7));
controls_number_of_loopsPeriphery_d14 = Roche_tumour_data.Controls.LoopsPeriphery(Roche_tumour_data.Controls.Day==14)./cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==14));

treated_number_of_loops_d1 = Roche_tumour_data.Treated.LoopsTotal(Roche_tumour_data.Treated.Day==1)./cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==1));
treated_number_of_loops_d3 = Roche_tumour_data.Treated.LoopsTotal(Roche_tumour_data.Treated.Day==3)./cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==3));
treated_number_of_loops_d7 = Roche_tumour_data.Treated.LoopsTotal(Roche_tumour_data.Treated.Day==7)./cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==7));
treated_number_of_loops_d14 = Roche_tumour_data.Treated.LoopsTotal(Roche_tumour_data.Treated.Day==14)./cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==14));

treated_number_of_loopsCore_d1 = Roche_tumour_data.Treated.LoopsCore(Roche_tumour_data.Treated.Day==1)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==1));
treated_number_of_loopsCore_d3 = Roche_tumour_data.Treated.LoopsCore(Roche_tumour_data.Treated.Day==3)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==3));
treated_number_of_loopsCore_d7 = Roche_tumour_data.Treated.LoopsCore(Roche_tumour_data.Treated.Day==7)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==7));
treated_number_of_loopsCore_d14 = Roche_tumour_data.Treated.LoopsCore(Roche_tumour_data.Treated.Day==14)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==14));

treated_number_of_loopsPeriphery_d1 = Roche_tumour_data.Treated.LoopsPeriphery(Roche_tumour_data.Treated.Day==1)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==1));
treated_number_of_loopsPeriphery_d3 = Roche_tumour_data.Treated.LoopsPeriphery(Roche_tumour_data.Treated.Day==3)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==3));
treated_number_of_loopsPeriphery_d7 = Roche_tumour_data.Treated.LoopsPeriphery(Roche_tumour_data.Treated.Day==7)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==7));
treated_number_of_loopsPeriphery_d14 = Roche_tumour_data.Treated.LoopsPeriphery(Roche_tumour_data.Treated.Day==14)./cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==14));



average_number_of_loops_controls = [mean(controls_number_of_loops_d1(controls_number_of_loops_d1>0)),...
    mean(controls_number_of_loops_d3(controls_number_of_loops_d3>0)),...
    mean(controls_number_of_loops_d7(controls_number_of_loops_d7>0)),...
    mean(controls_number_of_loops_d14(controls_number_of_loops_d14>0))];

std_number_of_loops_controls = [std(controls_number_of_loops_d1(controls_number_of_loops_d1>0)),...
    std(controls_number_of_loops_d3(controls_number_of_loops_d3>0)),...
    std(controls_number_of_loops_d7(controls_number_of_loops_d7>0)),...
    std(controls_number_of_loops_d14(controls_number_of_loops_d14>0))];

SEM_number_of_loops_controls = [std(controls_number_of_loops_d1(controls_number_of_loops_d1>0))/sqrt(length(controls_number_of_loops_d1(controls_number_of_loops_d1>0))),...
    std(controls_number_of_loops_d3(controls_number_of_loops_d3>0))/sqrt(length(controls_number_of_loops_d3(controls_number_of_loops_d3>0))),...
    std(controls_number_of_loops_d7(controls_number_of_loops_d7>0))/sqrt(length(controls_number_of_loops_d7(controls_number_of_loops_d7>0))),...
    std(controls_number_of_loops_d14(controls_number_of_loops_d14>0))/sqrt(length(controls_number_of_loops_d14(controls_number_of_loops_d14>0)))];

average_number_of_loopsCore_controls = [mean(controls_number_of_loopsCore_d1(controls_number_of_loopsCore_d1>0)),...
    mean(controls_number_of_loopsCore_d3(controls_number_of_loopsCore_d3>0)),...
    mean(controls_number_of_loopsCore_d7(controls_number_of_loopsCore_d7>0)),...
    mean(controls_number_of_loopsCore_d14(controls_number_of_loopsCore_d14>0))];

std_number_of_loopsCore_controls = [std(controls_number_of_loopsCore_d1(controls_number_of_loopsCore_d1>0)),...
    std(controls_number_of_loopsCore_d3(controls_number_of_loopsCore_d3>0)),...
    std(controls_number_of_loopsCore_d7(controls_number_of_loopsCore_d7>0)),...
    std(controls_number_of_loopsCore_d14(controls_number_of_loopsCore_d14>0))];

SEM_number_of_loopsCore_controls = [std(controls_number_of_loopsCore_d1(controls_number_of_loopsCore_d1>0))/sqrt(length(controls_number_of_loopsCore_d1(controls_number_of_loopsCore_d1>0))),...
    std(controls_number_of_loopsCore_d3(controls_number_of_loopsCore_d3>0))/sqrt(length(controls_number_of_loopsCore_d3(controls_number_of_loopsCore_d3>0))),...
    std(controls_number_of_loopsCore_d7(controls_number_of_loopsCore_d7>0))/sqrt(length(controls_number_of_loopsCore_d7(controls_number_of_loopsCore_d7>0))),...
    std(controls_number_of_loopsCore_d14(controls_number_of_loopsCore_d14>0))/sqrt(length(controls_number_of_loopsCore_d14(controls_number_of_loopsCore_d14>0)))];

average_number_of_loopsPeriphery_controls = [mean(controls_number_of_loopsPeriphery_d1(controls_number_of_loopsPeriphery_d1>0)),...
    mean(controls_number_of_loopsPeriphery_d3(controls_number_of_loopsPeriphery_d3>0)),...
    mean(controls_number_of_loopsPeriphery_d7(controls_number_of_loopsPeriphery_d7>0)),...
    mean(controls_number_of_loopsPeriphery_d14(controls_number_of_loopsPeriphery_d14>0))];

std_number_of_loopsPeriphery_controls = [std(controls_number_of_loopsPeriphery_d1(controls_number_of_loopsPeriphery_d1>0)),...
    std(controls_number_of_loopsPeriphery_d3(controls_number_of_loopsPeriphery_d3>0)),...
    std(controls_number_of_loopsPeriphery_d7(controls_number_of_loopsPeriphery_d7>0)),...
    std(controls_number_of_loopsPeriphery_d14(controls_number_of_loopsPeriphery_d14>0))];

SEM_number_of_loopsPeriphery_controls = [std(controls_number_of_loopsPeriphery_d1(controls_number_of_loopsPeriphery_d1>0))/sqrt(length(controls_number_of_loopsPeriphery_d1(controls_number_of_loopsPeriphery_d1>0))),...
    std(controls_number_of_loopsPeriphery_d3(controls_number_of_loopsPeriphery_d3>0))/sqrt(length(controls_number_of_loopsPeriphery_d3(controls_number_of_loopsPeriphery_d3>0))),...
    std(controls_number_of_loopsPeriphery_d7(controls_number_of_loopsPeriphery_d7>0))/sqrt(length(controls_number_of_loopsPeriphery_d7(controls_number_of_loopsPeriphery_d7>0))),...
    std(controls_number_of_loopsPeriphery_d14(controls_number_of_loopsPeriphery_d14>0))/sqrt(length(controls_number_of_loopsPeriphery_d14(controls_number_of_loopsPeriphery_d14>0)))];


average_number_of_loops_treated = [mean(treated_number_of_loops_d1(treated_number_of_loops_d1>0)),...
    mean(treated_number_of_loops_d3(treated_number_of_loops_d3>0)),...
    mean(treated_number_of_loops_d7(treated_number_of_loops_d7>0)),...
    mean(treated_number_of_loops_d14(treated_number_of_loops_d14>0))];

std_number_of_loops_treated = [std(treated_number_of_loops_d1(treated_number_of_loops_d1>0)),...
    std(treated_number_of_loops_d3(treated_number_of_loops_d3>0)),...
    std(treated_number_of_loops_d7(treated_number_of_loops_d7>0)),...
    std(treated_number_of_loops_d14(treated_number_of_loops_d14>0))];

SEM_number_of_loops_treated = [std(treated_number_of_loops_d1(treated_number_of_loops_d1>0))/sqrt(length(treated_number_of_loops_d1(treated_number_of_loops_d1>0))),...
    std(treated_number_of_loops_d3(treated_number_of_loops_d3>0))/sqrt(length(treated_number_of_loops_d3(treated_number_of_loops_d3>0))),...
    std(treated_number_of_loops_d7(treated_number_of_loops_d7>0))/sqrt(length(treated_number_of_loops_d7(treated_number_of_loops_d7>0))),...
    std(treated_number_of_loops_d14(treated_number_of_loops_d14>0))/sqrt(length(treated_number_of_loops_d14(treated_number_of_loops_d14>0)))];

average_number_of_loopsCore_treated = [mean(treated_number_of_loopsCore_d1(treated_number_of_loopsCore_d1>0)),...
    mean(treated_number_of_loopsCore_d3(treated_number_of_loopsCore_d3>0)),...
    mean(treated_number_of_loopsCore_d7(treated_number_of_loopsCore_d7>0)),...
    mean(treated_number_of_loopsCore_d14(treated_number_of_loopsCore_d14>0))];

std_number_of_loopsCore_treated = [std(treated_number_of_loopsCore_d1(treated_number_of_loopsCore_d1>0)),...
    std(treated_number_of_loopsCore_d3(treated_number_of_loopsCore_d3>0)),...
    std(treated_number_of_loopsCore_d7(treated_number_of_loopsCore_d7>0)),...
    std(treated_number_of_loopsCore_d14(treated_number_of_loopsCore_d14>0))];

SEM_number_of_loopsCore_treated = [std(treated_number_of_loopsCore_d1(treated_number_of_loopsCore_d1>0))/sqrt(length(treated_number_of_loopsCore_d1(treated_number_of_loopsCore_d1>0))),...
    std(treated_number_of_loopsCore_d3(treated_number_of_loopsCore_d3>0))/sqrt(length(treated_number_of_loopsCore_d3(treated_number_of_loopsCore_d3>0))),...
    std(treated_number_of_loopsCore_d7(treated_number_of_loopsCore_d7>0))/sqrt(length(treated_number_of_loopsCore_d7(treated_number_of_loopsCore_d7>0))),...
    std(treated_number_of_loopsCore_d14(treated_number_of_loopsCore_d14>0))/sqrt(length(treated_number_of_loopsCore_d14(treated_number_of_loopsCore_d14>0)))];

average_number_of_loopsPeriphery_treated = [mean(treated_number_of_loopsPeriphery_d1(treated_number_of_loopsPeriphery_d1>0)),...
    mean(treated_number_of_loopsPeriphery_d3(treated_number_of_loopsPeriphery_d3>0)),...
    mean(treated_number_of_loopsPeriphery_d7(treated_number_of_loopsPeriphery_d7>0)),...
    mean(treated_number_of_loopsPeriphery_d14(treated_number_of_loopsPeriphery_d14>0))];

std_number_of_loopsPeriphery_treated = [std(treated_number_of_loopsPeriphery_d1(treated_number_of_loopsPeriphery_d1>0)),...
    std(treated_number_of_loopsPeriphery_d3(treated_number_of_loopsPeriphery_d3>0)),...
    std(treated_number_of_loopsPeriphery_d7(treated_number_of_loopsPeriphery_d7>0)),...
    std(treated_number_of_loopsPeriphery_d14(treated_number_of_loopsPeriphery_d14>0))];

SEM_number_of_loopsPeriphery_treated = [std(treated_number_of_loopsPeriphery_d1(treated_number_of_loopsPeriphery_d1>0))/sqrt(length(treated_number_of_loopsPeriphery_d1(treated_number_of_loopsPeriphery_d1>0))),...
    std(treated_number_of_loopsPeriphery_d3(treated_number_of_loopsPeriphery_d3>0))/sqrt(length(treated_number_of_loopsPeriphery_d3(treated_number_of_loopsPeriphery_d3>0))),...
    std(treated_number_of_loopsPeriphery_d7(treated_number_of_loopsPeriphery_d7>0))/sqrt(length(treated_number_of_loopsPeriphery_d7(treated_number_of_loopsPeriphery_d7>0))),...
    std(treated_number_of_loopsPeriphery_d14(treated_number_of_loopsPeriphery_d14>0))/sqrt(length(treated_number_of_loopsPeriphery_d14(treated_number_of_loopsPeriphery_d14>0)))];

%% Medians

median_number_of_loops_controls = [median(controls_number_of_loops_d1(controls_number_of_loops_d1>0)),...
    median(controls_number_of_loops_d3(controls_number_of_loops_d3>0)),...
    median(controls_number_of_loops_d7(controls_number_of_loops_d7>0)),...
    median(controls_number_of_loops_d14(controls_number_of_loops_d14>0))];

q1_number_of_loops_controls = [quantile(controls_number_of_loops_d1(controls_number_of_loops_d1>0),0.25),...
    quantile(controls_number_of_loops_d3(controls_number_of_loops_d3>0),0.25),...
    quantile(controls_number_of_loops_d7(controls_number_of_loops_d7>0),0.25),...
    quantile(controls_number_of_loops_d14(controls_number_of_loops_d14>0),0.25)];

q2_number_of_loops_controls = [quantile(controls_number_of_loops_d1(controls_number_of_loops_d1>0),0.75),...
    quantile(controls_number_of_loops_d3(controls_number_of_loops_d3>0),0.75),...
    quantile(controls_number_of_loops_d7(controls_number_of_loops_d7>0),0.75),...
    quantile(controls_number_of_loops_d14(controls_number_of_loops_d14>0),0.75)];


median_number_of_loopsCore_controls = [median(controls_number_of_loopsCore_d1(controls_number_of_loopsCore_d1>0)),...
    median(controls_number_of_loopsCore_d3(controls_number_of_loopsCore_d3>0)),...
    median(controls_number_of_loopsCore_d7(controls_number_of_loopsCore_d7>0)),...
    median(controls_number_of_loopsCore_d14(controls_number_of_loopsCore_d14>0))];

q1_number_of_loopsCore_controls = [quantile(controls_number_of_loopsCore_d1(controls_number_of_loopsCore_d1>0),0.25),...
    quantile(controls_number_of_loopsCore_d3(controls_number_of_loopsCore_d3>0),0.25),...
    quantile(controls_number_of_loopsCore_d7(controls_number_of_loopsCore_d7>0),0.25),...
    quantile(controls_number_of_loopsCore_d14(controls_number_of_loopsCore_d14>0),0.25)];

q2_number_of_loopsCore_controls = [quantile(controls_number_of_loopsCore_d1(controls_number_of_loopsCore_d1>0),0.75),...
    quantile(controls_number_of_loopsCore_d3(controls_number_of_loopsCore_d3>0),0.75),...
    quantile(controls_number_of_loopsCore_d7(controls_number_of_loopsCore_d7>0),0.75),...
    quantile(controls_number_of_loopsCore_d14(controls_number_of_loopsCore_d14>0),0.75)];

median_number_of_loopsPeriphery_controls = [median(controls_number_of_loopsPeriphery_d1(controls_number_of_loopsPeriphery_d1>0)),...
    median(controls_number_of_loopsPeriphery_d3(controls_number_of_loopsPeriphery_d3>0)),...
    median(controls_number_of_loopsPeriphery_d7(controls_number_of_loopsPeriphery_d7>0)),...
    median(controls_number_of_loopsPeriphery_d14(controls_number_of_loopsPeriphery_d14>0))];

q1_number_of_loopsPeriphery_controls = [quantile(controls_number_of_loopsPeriphery_d1(controls_number_of_loopsPeriphery_d1>0),0.25),...
    quantile(controls_number_of_loopsPeriphery_d3(controls_number_of_loopsPeriphery_d3>0),0.25),...
    quantile(controls_number_of_loopsPeriphery_d7(controls_number_of_loopsPeriphery_d7>0),0.25),...
    quantile(controls_number_of_loopsPeriphery_d14(controls_number_of_loopsPeriphery_d14>0),0.25)];

q2_number_of_loopsPeriphery_controls = [quantile(controls_number_of_loopsPeriphery_d1(controls_number_of_loopsPeriphery_d1>0),0.75),...
    quantile(controls_number_of_loopsPeriphery_d3(controls_number_of_loopsPeriphery_d3>0),0.75),...
    quantile(controls_number_of_loopsPeriphery_d7(controls_number_of_loopsPeriphery_d7>0),0.75),...
    quantile(controls_number_of_loopsPeriphery_d14(controls_number_of_loopsPeriphery_d14>0),0.75)];

median_number_of_loops_treated = [median(treated_number_of_loops_d1(treated_number_of_loops_d1>0)),...
    median(treated_number_of_loops_d3(treated_number_of_loops_d3>0)),...
    median(treated_number_of_loops_d7(treated_number_of_loops_d7>0)),...
    median(treated_number_of_loops_d14(treated_number_of_loops_d14>0))];

q1_number_of_loops_treated = [quantile(treated_number_of_loops_d1(treated_number_of_loops_d1>0),0.25),...
    quantile(treated_number_of_loops_d3(treated_number_of_loops_d3>0),0.25),...
    quantile(treated_number_of_loops_d7(treated_number_of_loops_d7>0),0.25),...
    quantile(treated_number_of_loops_d14(treated_number_of_loops_d14>0),0.25)];

q2_number_of_loops_treated = [quantile(treated_number_of_loops_d1(treated_number_of_loops_d1>0),0.75),...
    quantile(treated_number_of_loops_d3(treated_number_of_loops_d3>0),0.75),...
    quantile(treated_number_of_loops_d7(treated_number_of_loops_d7>0),0.75),...
    quantile(treated_number_of_loops_d14(treated_number_of_loops_d14>0),0.75)];

median_number_of_loopsCore_treated = [median(treated_number_of_loopsCore_d1(treated_number_of_loopsCore_d1>0)),...
    median(treated_number_of_loopsCore_d3(treated_number_of_loopsCore_d3>0)),...
    median(treated_number_of_loopsCore_d7(treated_number_of_loopsCore_d7>0)),...
    median(treated_number_of_loopsCore_d14(treated_number_of_loopsCore_d14>0))];

q1_number_of_loopsCore_treated = [quantile(treated_number_of_loopsCore_d1(treated_number_of_loopsCore_d1>0),0.25),...
    quantile(treated_number_of_loopsCore_d3(treated_number_of_loopsCore_d3>0),0.25),...
    quantile(treated_number_of_loopsCore_d7(treated_number_of_loopsCore_d7>0),0.25),...
    quantile(treated_number_of_loopsCore_d14(treated_number_of_loopsCore_d14>0),0.25)];

q2_number_of_loopsCore_treated = [quantile(treated_number_of_loopsCore_d1(treated_number_of_loopsCore_d1>0),0.75),...
    quantile(treated_number_of_loopsCore_d3(treated_number_of_loopsCore_d3>0),0.75),...
    quantile(treated_number_of_loopsCore_d7(treated_number_of_loopsCore_d7>0),0.75),...
    quantile(treated_number_of_loopsCore_d14(treated_number_of_loopsCore_d14>0),0.75)];

median_number_of_loopsPeriphery_treated = [median(treated_number_of_loopsPeriphery_d1(treated_number_of_loopsPeriphery_d1>0)),...
    median(treated_number_of_loopsPeriphery_d3(treated_number_of_loopsPeriphery_d3>0)),...
    median(treated_number_of_loopsPeriphery_d7(treated_number_of_loopsPeriphery_d7>0)),...
    median(treated_number_of_loopsPeriphery_d14(treated_number_of_loopsPeriphery_d14>0))];

q1_number_of_loopsPeriphery_treated = [quantile(treated_number_of_loopsPeriphery_d1(treated_number_of_loopsPeriphery_d1>0),0.25),...
    quantile(treated_number_of_loopsPeriphery_d3(treated_number_of_loopsPeriphery_d3>0),0.25),...
    quantile(treated_number_of_loopsPeriphery_d7(treated_number_of_loopsPeriphery_d7>0),0.25),...
    quantile(treated_number_of_loopsPeriphery_d14(treated_number_of_loopsPeriphery_d14>0),0.25)];

q2_number_of_loopsPeriphery_treated = [quantile(treated_number_of_loopsPeriphery_d1(treated_number_of_loopsPeriphery_d1>0),0.75),...
    quantile(treated_number_of_loopsPeriphery_d3(treated_number_of_loopsPeriphery_d3>0),0.75),...
    quantile(treated_number_of_loopsPeriphery_d7(treated_number_of_loopsPeriphery_d7>0),0.75),...
    quantile(treated_number_of_loopsPeriphery_d14(treated_number_of_loopsPeriphery_d14>0),0.75)];






%% Plots

set(0, 'DefaulttextInterpreter', 'none')

x = [1,3,7,14]

% per segment

supertitle = ['Average number of loops with SEM'];

hSEM = figure
y1 = average_number_of_loops_controls;
err1 = SEM_number_of_loops_controls;
e1 = errorbar(x(1:length(y1)),y1,err1,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = average_number_of_loops_treated;
err2 = std_number_of_loops_treated;
e2 = errorbar(x(1:length(y2)),y2,err2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Average number of loops','Fontsize',20)
legend(["Controls", "Treated"],'Fontsize',18)
title(supertitle,'Fontsize',25)


    image_title1 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsSEMPerSegment.fig'];
    image_title2 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsSEMPerSegment.pdf'];

    
    set(hSEM,'Units','Inches');
    pos = get(hSEM,'Position');
    set(hSEM,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(hSEM,image_title2,'-dpdf','-r0')

    saveas(hSEM,image_title1)

% per segment
    
supertitle = ['Average number of loops per segment with SEM'];

hSEM = figure
y1 = average_number_of_loops_controls;
err1 = SEM_number_of_loops_controls;
e1 = errorbar(x(1:length(y1)),y1,err1,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = average_number_of_loops_treated;
err2 = std_number_of_loops_treated;
e2 = errorbar(x(1:length(y2)),y2,err2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Average number of loops','Fontsize',20)
legend(["Controls", "Treated"],'Fontsize',18)
title(supertitle,'Fontsize',25)


    image_title1 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsSEMPerSegment.fig'];
    image_title2 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsSEMPerSegment.pdf'];

    
    set(hSEM,'Units','Inches');
    pos = get(hSEM,'Position');
    set(hSEM,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(hSEM,image_title2,'-dpdf','-r0')

    saveas(hSEM,image_title1)

    
 
% per segment

supertitle = ['Median number of loops'];

h1 = figure
y1 = median_number_of_loops_controls;
err1_1 = median_number_of_loops_controls-q1_number_of_loops_controls;
err1_2 = q2_number_of_loops_controls-median_number_of_loops_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_loops_treated;
err2_1 = median_number_of_loops_treated-q1_number_of_loops_treated;
err2_2 = q2_number_of_loops_treated-median_number_of_loops_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of loops per segment','Fontsize',20)
legend(["Controls", "Treated"],'Fontsize',18)
title(supertitle,'Fontsize',25)


    image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNumberOfLoopsPerSegment.fig'];
    image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNumberOfLoopsPerSegment.pdf'];

    
    set(h1,'Units','Inches');
    pos = get(h1,'Position');
    set(h1,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(h1,image_title2,'-dpdf','-r0')

    saveas(h1,image_title1)
    
    
    
supertitle = ['Average number of loops'];

h2 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = average_number_of_loopsCore_controls;
err1 = std_number_of_loopsCore_controls;
e1 = errorbar(x(1:length(y1)),y1,err1,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = average_number_of_loopsCore_treated;
err2 = std_number_of_loopsCore_treated;
e2 = errorbar(x(1:length(y2)),y2,err2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,0.7])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of loops per segment','Fontsize',20)
title('Filtration steps 1-250','Fontsize',25)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = average_number_of_loopsPeriphery_controls;
err1 = std_number_of_loopsPeriphery_controls;
e1 = errorbar(x(1:length(y1)),y1,err1,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = average_number_of_loopsPeriphery_treated;
err2 = std_number_of_loopsPeriphery_treated;
e2 = errorbar(x(1:length(y2)),y2,err2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,0.7])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Filtration steps 251-500','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)



    image_title1 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsIntervalsPerSegment.fig'];
    image_title2 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsIntervalsPerSegment.pdf'];

    
    set(h2,'Units','Inches');
    pos = get(h2,'Position');
    set(h2,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(h2,image_title2,'-dpdf','-r0')

    saveas(h2,image_title1)
    
    
supertitle = ['Average number of loops and SEM'];

h2SEM = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = average_number_of_loopsCore_controls;
err1 = SEM_number_of_loopsCore_controls;
e1 = errorbar(x(1:length(y1)),y1,err1,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = average_number_of_loopsCore_treated;
err2 = SEM_number_of_loopsCore_treated;
e2 = errorbar(x(1:length(y2)),y2,err2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,0.7])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of loops per segment','Fontsize',20)
title('Filtration steps 1-250','Fontsize',25)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = average_number_of_loopsPeriphery_controls;
err1 = SEM_number_of_loopsPeriphery_controls;
e1 = errorbar(x(1:length(y1)),y1,err1,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = average_number_of_loopsPeriphery_treated;
err2 = SEM_number_of_loopsPeriphery_treated;
e2 = errorbar(x(1:length(y2)),y2,err2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,0.7])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Filtration steps 251-500','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)


    image_title1 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsIntervalsSEMPerSegment.fig'];
    image_title2 = [char(initial_path) '/Betti_Figures/RocheAverageNumberOfLoopsIntervalsSEMPerSegment.pdf'];

    
    set(h2SEM,'Units','Inches');
    pos = get(h2SEM,'Position');
    set(h2SEM,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(h2SEM,image_title2,'-dpdf','-r0')

    saveas(h2SEM,image_title1)
    
    
%% Median

supertitle = ['Median number of loops'];

h22 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_loopsCore_controls;
err1_1 = median_number_of_loopsCore_controls-q1_number_of_loopsCore_controls;
err1_2 = q2_number_of_loopsCore_controls-median_number_of_loopsCore_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_loopsCore_treated;
err2_1 = median_number_of_loopsCore_treated-q1_number_of_loopsCore_treated;
err2_2 = q2_number_of_loopsCore_treated-median_number_of_loopsCore_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,0.7])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Filtration steps 1-250','Fontsize',25)
ylabel('Number of loops per segment','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = median_number_of_loopsPeriphery_controls;
err1_1 = median_number_of_loopsPeriphery_controls-q1_number_of_loopsPeriphery_controls;
err1_2 = q2_number_of_loopsPeriphery_controls-median_number_of_loopsPeriphery_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_loopsPeriphery_treated;
err2_1 = median_number_of_loopsPeriphery_treated-q1_number_of_loopsPeriphery_treated;
err2_2 = q2_number_of_loopsPeriphery_treated-median_number_of_loopsPeriphery_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,0.7])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Filtration steps 251-500','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)



    image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNumberOfLoopsIntervalsPerSegment.fig'];
    image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNumberOfLoopsIntervalsPerSegment.pdf'];

    
    set(h22,'Units','Inches');
    pos = get(h22,'Position');
    set(h22,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(h22,image_title2,'-dpdf','-r0')

    saveas(h22,image_title1)
    
hold off    
    
    
%% Dimension 0



PersistenceVectors_Controls = getRochePersistenceVectors(Roche_tumour_data.Controls, number_of_divisions);
PersistenceVectors_Treated = getRochePersistenceVectors(Roche_tumour_data.Treated, number_of_divisions);

number_of_segments_controls = cell2mat(Roche_tumour_data.Controls.NumberOfSegments);
number_of_segments_treated = cell2mat(Roche_tumour_data.Treated.NumberOfSegments);

[median_integral_Controls, q1_integral_Controls, q2_integral_Controls] = ...
    getRocheIntegralOfLengthNumberCurvePerSegmentMedian(PersistenceVectors_Controls,Roche_tumour_data.Controls.Day,number_of_segments_controls);


[median_integral_Treated, q1_integral_Treated, q2_integral_Treated] = ...
    getRocheIntegralOfLengthNumberCurvePerSegmentMedian(PersistenceVectors_Treated,Roche_tumour_data.Treated.Day,number_of_segments_treated);

[mean_integral_Controls, SEM_integral_Controls] = ...
    getRocheIntegralOfLengthNumberCurvePerSegmentAverageSEM(PersistenceVectors_Controls,Roche_tumour_data.Controls.Day,number_of_segments_controls);


[mean_integral_Treated, SEM_integral_Treated] = ...
    getRocheIntegralOfLengthNumberCurvePerSegmentAverageSEM(PersistenceVectors_Treated,Roche_tumour_data.Treated.Day,number_of_segments_treated);








x = [1,3,7,14];

supertitle = ['Median number of short bars dimension 0'];

h6 = figure
y1 = median_integral_Controls;
err1_1 = median_integral_Controls-q1_integral_Controls;
err1_2 = q2_integral_Controls-median_integral_Controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_integral_Treated;
err2_1 = median_integral_Treated-q1_integral_Treated;
err2_2 = q2_integral_Treated-median_integral_Treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,15])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of short bars','Fontsize',20)
legend(["Controls","Treated"],'Fontsize',18)
title(supertitle,'Fontsize',25)

 image_title9 = [char(initial_path) '/Betti_Figures/RocheMedianIntegralDim0PerSegment.fig'];
    image_title10 = [char(initial_path) '/Betti_Figures/RocheMedianIntegralDim0PerSegment.pdf'];

    
    set(h6,'Units','Inches');
    pos = get(h6,'Position');
    set(h6,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(h6,image_title10,'-dpdf','-r0')

    saveas(h6,image_title9)

    
    x = [1,3,7,14];

supertitle = ['Average number of short bars dimension 0'];

h6 = figure
y1 = mean_integral_Controls;
err1 = SEM_integral_Controls;
e1 = errorbar(x(1:length(y1)),y1,err1,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = mean_integral_Treated;
err2 = SEM_integral_Treated;
e2 = errorbar(x(1:length(y2)),y2,err2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,15])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of short bars','Fontsize',20)
legend(["Controls","Treated"],'Fontsize',18)
title(supertitle,'Fontsize',25)

 image_title9 = [char(initial_path) '/Betti_Figures/RocheAvgSEMIntegralDim0PerSegment.fig'];
    image_title10 = [char(initial_path) '/Betti_Figures/RocheAvgSEMIntegralDim0PerSegment.pdf'];

    
    set(h6,'Units','Inches');
    pos = get(h6,'Position');
    set(h6,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(h6,image_title10,'-dpdf','-r0')

    saveas(h6,image_title9)
