%% Roche reproduce Dobosz stats
% Bernadette Stolz
% 3.11.2019



% Number of segments Controls

controls_number_of_segments_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==1));
controls_number_of_segments_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==3));
controls_number_of_segments_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==7));
controls_number_of_segments_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegments(Roche_tumour_data.Controls.Day==14));

controls_true_number_of_segments_d1 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegments(Roche_tumour_data.Controls.Day==1));
controls_true_number_of_segments_d3 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegments(Roche_tumour_data.Controls.Day==3));
controls_true_number_of_segments_d7 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegments(Roche_tumour_data.Controls.Day==7));
controls_true_number_of_segments_d14 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegments(Roche_tumour_data.Controls.Day==14));


controls_number_of_segmentsCoreD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_segmentsCoreD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_segmentsCoreD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_segmentsCoreD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_segmentsPeripheryD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_segmentsPeripheryD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_segmentsPeripheryD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_segmentsPeripheryD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_segmentsCore_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==1));
controls_number_of_segmentsCore_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==3));
controls_number_of_segmentsCore_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==7));
controls_number_of_segmentsCore_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsCore(Roche_tumour_data.Controls.Day==14));

controls_number_of_segmentsPeriphery_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==1));
controls_number_of_segmentsPeriphery_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==3));
controls_number_of_segmentsPeriphery_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==7));
controls_number_of_segmentsPeriphery_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsPeriphery(Roche_tumour_data.Controls.Day==14));

% Number of segments treated

treated_number_of_segments_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==1));
treated_number_of_segments_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==3));
treated_number_of_segments_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==7));
treated_number_of_segments_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegments(Roche_tumour_data.Treated.Day==14));

treated_true_number_of_segments_d1 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegments(Roche_tumour_data.Treated.Day==1));
treated_true_number_of_segments_d3 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegments(Roche_tumour_data.Treated.Day==3));
treated_true_number_of_segments_d7 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegments(Roche_tumour_data.Treated.Day==7));
treated_true_number_of_segments_d14 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegments(Roche_tumour_data.Treated.Day==14));


treated_number_of_segmentsCoreD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_segmentsCoreD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_segmentsCoreD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_segmentsCoreD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_segmentsPeripheryD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_segmentsPeripheryD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_segmentsPeripheryD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_segmentsPeripheryD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_segmentsCore_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==1));
treated_number_of_segmentsCore_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==3));
treated_number_of_segmentsCore_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==7));
treated_number_of_segmentsCore_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsCore(Roche_tumour_data.Treated.Day==14));

treated_number_of_segmentsPeriphery_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==1));
treated_number_of_segmentsPeriphery_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==3));
treated_number_of_segmentsPeriphery_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==7));
treated_number_of_segmentsPeriphery_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsPeriphery(Roche_tumour_data.Treated.Day==14));


median_number_of_segments_controls = [median(controls_number_of_segments_d1),median(controls_number_of_segments_d3),median(controls_number_of_segments_d7),median(controls_number_of_segments_d14)];
q1_number_of_segments_controls = [quantile(controls_number_of_segments_d1,0.25),quantile(controls_number_of_segments_d3,0.25),quantile(controls_number_of_segments_d7,0.25),quantile(controls_number_of_segments_d14,0.25)];
q2_number_of_segments_controls = [quantile(controls_number_of_segments_d1,0.75),quantile(controls_number_of_segments_d3,0.75),quantile(controls_number_of_segments_d7,0.75),quantile(controls_number_of_segments_d14,0.75)];

median_number_of_segments_treated = [median(treated_number_of_segments_d1),median(treated_number_of_segments_d3),median(treated_number_of_segments_d7),median(treated_number_of_segments_d14)];
q1_number_of_segments_treated = [quantile(treated_number_of_segments_d1,0.25),quantile(treated_number_of_segments_d3,0.25),quantile(treated_number_of_segments_d7,0.25),quantile(treated_number_of_segments_d14,0.25)];
q2_number_of_segments_treated = [quantile(treated_number_of_segments_d1,0.75),quantile(treated_number_of_segments_d3,0.75),quantile(treated_number_of_segments_d7,0.75),quantile(treated_number_of_segments_d14,0.75)];

median_true_number_of_segments_controls = [median(controls_true_number_of_segments_d1),median(controls_true_number_of_segments_d3),median(controls_true_number_of_segments_d7),median(controls_true_number_of_segments_d14)];
q1_true_number_of_segments_controls = [quantile(controls_true_number_of_segments_d1,0.25),quantile(controls_true_number_of_segments_d3,0.25),quantile(controls_true_number_of_segments_d7,0.25),quantile(controls_true_number_of_segments_d14,0.25)];
q2_true_number_of_segments_controls = [quantile(controls_true_number_of_segments_d1,0.75),quantile(controls_true_number_of_segments_d3,0.75),quantile(controls_true_number_of_segments_d7,0.75),quantile(controls_true_number_of_segments_d14,0.75)];

median_true_number_of_segments_treated = [median(treated_true_number_of_segments_d1),median(treated_true_number_of_segments_d3),median(treated_true_number_of_segments_d7),median(treated_true_number_of_segments_d14)];
q1_true_number_of_segments_treated = [quantile(treated_true_number_of_segments_d1,0.25),quantile(treated_true_number_of_segments_d3,0.25),quantile(treated_true_number_of_segments_d7,0.25),quantile(treated_true_number_of_segments_d14,0.25)];
q2_true_number_of_segments_treated = [quantile(treated_true_number_of_segments_d1,0.75),quantile(treated_true_number_of_segments_d3,0.75),quantile(treated_true_number_of_segments_d7,0.75),quantile(treated_true_number_of_segments_d14,0.75)];


median_number_of_segmentsCoreD_controls = [median(controls_number_of_segmentsCoreD_d1),median(controls_number_of_segmentsCoreD_d3),median(controls_number_of_segmentsCoreD_d7),median(controls_number_of_segmentsCoreD_d14)];
q1_number_of_segmentsCoreD_controls = [quantile(controls_number_of_segmentsCoreD_d1,0.25),quantile(controls_number_of_segmentsCoreD_d3,0.25),quantile(controls_number_of_segmentsCoreD_d7,0.25),quantile(controls_number_of_segmentsCoreD_d14,0.25)];
q2_number_of_segmentsCoreD_controls = [quantile(controls_number_of_segmentsCoreD_d1,0.75),quantile(controls_number_of_segmentsCoreD_d3,0.75),quantile(controls_number_of_segmentsCoreD_d7,0.75),quantile(controls_number_of_segmentsCoreD_d14,0.75)];

median_number_of_segmentsCoreD_treated = [median(treated_number_of_segmentsCoreD_d1),median(treated_number_of_segmentsCoreD_d3),median(treated_number_of_segmentsCoreD_d7),median(treated_number_of_segmentsCoreD_d14)];
q1_number_of_segmentsCoreD_treated = [quantile(treated_number_of_segmentsCoreD_d1,0.25),quantile(treated_number_of_segmentsCoreD_d3,0.25),quantile(treated_number_of_segmentsCoreD_d7,0.25),quantile(treated_number_of_segmentsCoreD_d14,0.25)];
q2_number_of_segmentsCoreD_treated = [quantile(treated_number_of_segmentsCoreD_d1,0.75),quantile(treated_number_of_segmentsCoreD_d3,0.75),quantile(treated_number_of_segmentsCoreD_d7,0.75),quantile(treated_number_of_segmentsCoreD_d14,0.75)];

median_number_of_segmentsPeripheryD_controls = [median(controls_number_of_segmentsPeripheryD_d1),median(controls_number_of_segmentsPeripheryD_d3),median(controls_number_of_segmentsPeripheryD_d7),median(controls_number_of_segmentsPeripheryD_d14)];
q1_number_of_segmentsPeripheryD_controls = [quantile(controls_number_of_segmentsPeripheryD_d1,0.25),quantile(controls_number_of_segmentsPeripheryD_d3,0.25),quantile(controls_number_of_segmentsPeripheryD_d7,0.25),quantile(controls_number_of_segmentsPeripheryD_d14,0.25)];
q2_number_of_segmentsPeripheryD_controls = [quantile(controls_number_of_segmentsPeripheryD_d1,0.75),quantile(controls_number_of_segmentsPeripheryD_d3,0.75),quantile(controls_number_of_segmentsPeripheryD_d7,0.75),quantile(controls_number_of_segmentsPeripheryD_d14,0.75)];

median_number_of_segmentsPeripheryD_treated = [median(treated_number_of_segmentsPeripheryD_d1),median(treated_number_of_segmentsPeripheryD_d3),median(treated_number_of_segmentsPeripheryD_d7),median(treated_number_of_segmentsPeripheryD_d14)];
q1_number_of_segmentsPeripheryD_treated = [quantile(treated_number_of_segmentsPeripheryD_d1,0.25),quantile(treated_number_of_segmentsPeripheryD_d3,0.25),quantile(treated_number_of_segmentsPeripheryD_d7,0.25),quantile(treated_number_of_segmentsPeripheryD_d14,0.25)];
q2_number_of_segmentsPeripheryD_treated = [quantile(treated_number_of_segmentsPeripheryD_d1,0.75),quantile(treated_number_of_segmentsPeripheryD_d3,0.75),quantile(treated_number_of_segmentsPeripheryD_d7,0.75),quantile(treated_number_of_segmentsPeripheryD_d14,0.75)];

median_number_of_segmentsCore_controls = [median(controls_number_of_segmentsCore_d1),median(controls_number_of_segmentsCore_d3),median(controls_number_of_segmentsCore_d7),median(controls_number_of_segmentsCore_d14)];
q1_number_of_segmentsCore_controls = [quantile(controls_number_of_segmentsCore_d1,0.25),quantile(controls_number_of_segmentsCore_d3,0.25),quantile(controls_number_of_segmentsCore_d7,0.25),quantile(controls_number_of_segmentsCore_d14,0.25)];
q2_number_of_segmentsCore_controls = [quantile(controls_number_of_segmentsCore_d1,0.75),quantile(controls_number_of_segmentsCore_d3,0.75),quantile(controls_number_of_segmentsCore_d7,0.75),quantile(controls_number_of_segmentsCore_d14,0.75)];

median_number_of_segmentsCore_treated = [median(treated_number_of_segmentsCore_d1),median(treated_number_of_segmentsCore_d3),median(treated_number_of_segmentsCore_d7),median(treated_number_of_segmentsCore_d14)];
q1_number_of_segmentsCore_treated = [quantile(treated_number_of_segmentsCore_d1,0.25),quantile(treated_number_of_segmentsCore_d3,0.25),quantile(treated_number_of_segmentsCore_d7,0.25),quantile(treated_number_of_segmentsCore_d14,0.25)];
q2_number_of_segmentsCore_treated = [quantile(treated_number_of_segmentsCore_d1,0.75),quantile(treated_number_of_segmentsCore_d3,0.75),quantile(treated_number_of_segmentsCore_d7,0.75),quantile(treated_number_of_segmentsCore_d14,0.75)];

median_number_of_segmentsPeriphery_controls = [median(controls_number_of_segmentsPeriphery_d1),median(controls_number_of_segmentsPeriphery_d3),median(controls_number_of_segmentsPeriphery_d7),median(controls_number_of_segmentsPeriphery_d14)];
q1_number_of_segmentsPeriphery_controls = [quantile(controls_number_of_segmentsPeriphery_d1,0.25),quantile(controls_number_of_segmentsPeriphery_d3,0.25),quantile(controls_number_of_segmentsPeriphery_d7,0.25),quantile(controls_number_of_segmentsPeriphery_d14,0.25)];
q2_number_of_segmentsPeriphery_controls = [quantile(controls_number_of_segmentsPeriphery_d1,0.75),quantile(controls_number_of_segmentsPeriphery_d3,0.75),quantile(controls_number_of_segmentsPeriphery_d7,0.75),quantile(controls_number_of_segmentsPeriphery_d14,0.75)];

median_number_of_segmentsPeriphery_treated = [median(treated_number_of_segmentsPeriphery_d1),median(treated_number_of_segmentsPeriphery_d3),median(treated_number_of_segmentsPeriphery_d7),median(treated_number_of_segmentsPeriphery_d14)];
q1_number_of_segmentsPeriphery_treated = [quantile(treated_number_of_segmentsPeriphery_d1,0.25),quantile(treated_number_of_segmentsPeriphery_d3,0.25),quantile(treated_number_of_segmentsPeriphery_d7,0.25),quantile(treated_number_of_segmentsPeriphery_d14,0.25)];
q2_number_of_segmentsPeriphery_treated = [quantile(treated_number_of_segmentsPeriphery_d1,0.75),quantile(treated_number_of_segmentsPeriphery_d3,0.75),quantile(treated_number_of_segmentsPeriphery_d7,0.75),quantile(treated_number_of_segmentsPeriphery_d14,0.75)];


% Number of segments per volume Controls

controls_number_of_segments_volume_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==1));
controls_number_of_segments_volume_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==3));
controls_number_of_segments_volume_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==7));
controls_number_of_segments_volume_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==14));

controls_true_number_of_segments_volume_d1 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==1));
controls_true_number_of_segments_volume_d3 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==3));
controls_true_number_of_segments_volume_d7 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==7));
controls_true_number_of_segments_volume_d14 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegmentsVolume(Roche_tumour_data.Controls.Day==14));


controls_number_of_segments_volumeCoreD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_segments_volumeCoreD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_segments_volumeCoreD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_segments_volumeCoreD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_segments_volumePeripheryD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_segments_volumePeripheryD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_segments_volumePeripheryD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_segments_volumePeripheryD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_segments_volumeCore_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCore(Roche_tumour_data.Controls.Day==1));
controls_number_of_segments_volumeCore_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCore(Roche_tumour_data.Controls.Day==3));
controls_number_of_segments_volumeCore_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCore(Roche_tumour_data.Controls.Day==7));
controls_number_of_segments_volumeCore_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumeCore(Roche_tumour_data.Controls.Day==14));

controls_number_of_segments_volumePeriphery_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Controls.Day==1));
controls_number_of_segments_volumePeriphery_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Controls.Day==3));
controls_number_of_segments_volumePeriphery_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Controls.Day==7));
controls_number_of_segments_volumePeriphery_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Controls.Day==14));

% Number of segments per volume treated

treated_number_of_segments_volume_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==1));
treated_number_of_segments_volume_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==3));
treated_number_of_segments_volume_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==7));
treated_number_of_segments_volume_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==14));

treated_true_number_of_segments_volume_d1 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==1));
treated_true_number_of_segments_volume_d3 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==3));
treated_true_number_of_segments_volume_d7 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==7));
treated_true_number_of_segments_volume_d14 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfSegmentsVolume(Roche_tumour_data.Treated.Day==14));


treated_number_of_segments_volumeCoreD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_segments_volumeCoreD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_segments_volumeCoreD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_segments_volumeCoreD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_segments_volumePeripheryD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_segments_volumePeripheryD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_segments_volumePeripheryD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_segments_volumePeripheryD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_segments_volumeCore_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCore(Roche_tumour_data.Treated.Day==1));
treated_number_of_segments_volumeCore_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCore(Roche_tumour_data.Treated.Day==3));
treated_number_of_segments_volumeCore_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCore(Roche_tumour_data.Treated.Day==7));
treated_number_of_segments_volumeCore_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumeCore(Roche_tumour_data.Treated.Day==14));

treated_number_of_segments_volumePeriphery_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Treated.Day==1));
treated_number_of_segments_volumePeriphery_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Treated.Day==3));
treated_number_of_segments_volumePeriphery_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Treated.Day==7));
treated_number_of_segments_volumePeriphery_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfSegmentsVolumePeriphery(Roche_tumour_data.Treated.Day==14));


median_number_of_segments_volume_controls = [median(controls_number_of_segments_volume_d1),median(controls_number_of_segments_volume_d3),median(controls_number_of_segments_volume_d7),median(controls_number_of_segments_volume_d14)];
q1_number_of_segments_volume_controls = [quantile(controls_number_of_segments_volume_d1,0.25),quantile(controls_number_of_segments_volume_d3,0.25),quantile(controls_number_of_segments_volume_d7,0.25),quantile(controls_number_of_segments_volume_d14,0.25)];
q2_number_of_segments_volume_controls = [quantile(controls_number_of_segments_volume_d1,0.75),quantile(controls_number_of_segments_volume_d3,0.75),quantile(controls_number_of_segments_volume_d7,0.75),quantile(controls_number_of_segments_volume_d14,0.75)];

median_number_of_segments_volume_treated = [median(treated_number_of_segments_volume_d1),median(treated_number_of_segments_volume_d3),median(treated_number_of_segments_volume_d7),median(treated_number_of_segments_volume_d14)];
q1_number_of_segments_volume_treated = [quantile(treated_number_of_segments_volume_d1,0.25),quantile(treated_number_of_segments_volume_d3,0.25),quantile(treated_number_of_segments_volume_d7,0.25),quantile(treated_number_of_segments_volume_d14,0.25)];
q2_number_of_segments_volume_treated = [quantile(treated_number_of_segments_volume_d1,0.75),quantile(treated_number_of_segments_volume_d3,0.75),quantile(treated_number_of_segments_volume_d7,0.75),quantile(treated_number_of_segments_volume_d14,0.75)];

median_true_number_of_segments_volume_controls = [median(controls_true_number_of_segments_volume_d1),median(controls_true_number_of_segments_volume_d3),median(controls_true_number_of_segments_volume_d7),median(controls_true_number_of_segments_volume_d14)];
q1_true_number_of_segments_volume_controls = [quantile(controls_true_number_of_segments_volume_d1,0.25),quantile(controls_true_number_of_segments_volume_d3,0.25),quantile(controls_true_number_of_segments_volume_d7,0.25),quantile(controls_true_number_of_segments_volume_d14,0.25)];
q2_true_number_of_segments_volume_controls = [quantile(controls_true_number_of_segments_volume_d1,0.75),quantile(controls_true_number_of_segments_volume_d3,0.75),quantile(controls_true_number_of_segments_volume_d7,0.75),quantile(controls_true_number_of_segments_volume_d14,0.75)];

median_true_number_of_segments_volume_treated = [median(treated_true_number_of_segments_volume_d1),median(treated_true_number_of_segments_volume_d3),median(treated_true_number_of_segments_volume_d7),median(treated_true_number_of_segments_volume_d14)];
q1_true_number_of_segments_volume_treated = [quantile(treated_true_number_of_segments_volume_d1,0.25),quantile(treated_true_number_of_segments_volume_d3,0.25),quantile(treated_true_number_of_segments_volume_d7,0.25),quantile(treated_true_number_of_segments_volume_d14,0.25)];
q2_true_number_of_segments_volume_treated = [quantile(treated_true_number_of_segments_volume_d1,0.75),quantile(treated_true_number_of_segments_volume_d3,0.75),quantile(treated_true_number_of_segments_volume_d7,0.75),quantile(treated_true_number_of_segments_volume_d14,0.75)];


median_number_of_segments_volumeCoreD_controls = [median(controls_number_of_segments_volumeCoreD_d1),median(controls_number_of_segments_volumeCoreD_d3),median(controls_number_of_segments_volumeCoreD_d7),median(controls_number_of_segments_volumeCoreD_d14)];
q1_number_of_segments_volumeCoreD_controls = [quantile(controls_number_of_segments_volumeCoreD_d1,0.25),quantile(controls_number_of_segments_volumeCoreD_d3,0.25),quantile(controls_number_of_segments_volumeCoreD_d7,0.25),quantile(controls_number_of_segments_volumeCoreD_d14,0.25)];
q2_number_of_segments_volumeCoreD_controls = [quantile(controls_number_of_segments_volumeCoreD_d1,0.75),quantile(controls_number_of_segments_volumeCoreD_d3,0.75),quantile(controls_number_of_segments_volumeCoreD_d7,0.75),quantile(controls_number_of_segments_volumeCoreD_d14,0.75)];

median_number_of_segments_volumeCoreD_treated = [median(treated_number_of_segments_volumeCoreD_d1),median(treated_number_of_segments_volumeCoreD_d3),median(treated_number_of_segments_volumeCoreD_d7),median(treated_number_of_segments_volumeCoreD_d14)];
q1_number_of_segments_volumeCoreD_treated = [quantile(treated_number_of_segments_volumeCoreD_d1,0.25),quantile(treated_number_of_segments_volumeCoreD_d3,0.25),quantile(treated_number_of_segments_volumeCoreD_d7,0.25),quantile(treated_number_of_segments_volumeCoreD_d14,0.25)];
q2_number_of_segments_volumeCoreD_treated = [quantile(treated_number_of_segments_volumeCoreD_d1,0.75),quantile(treated_number_of_segments_volumeCoreD_d3,0.75),quantile(treated_number_of_segments_volumeCoreD_d7,0.75),quantile(treated_number_of_segments_volumeCoreD_d14,0.75)];

median_number_of_segments_volumePeripheryD_controls = [median(controls_number_of_segments_volumePeripheryD_d1),median(controls_number_of_segments_volumePeripheryD_d3),median(controls_number_of_segments_volumePeripheryD_d7),median(controls_number_of_segments_volumePeripheryD_d14)];
q1_number_of_segments_volumePeripheryD_controls = [quantile(controls_number_of_segments_volumePeripheryD_d1,0.25),quantile(controls_number_of_segments_volumePeripheryD_d3,0.25),quantile(controls_number_of_segments_volumePeripheryD_d7,0.25),quantile(controls_number_of_segments_volumePeripheryD_d14,0.25)];
q2_number_of_segments_volumePeripheryD_controls = [quantile(controls_number_of_segments_volumePeripheryD_d1,0.75),quantile(controls_number_of_segments_volumePeripheryD_d3,0.75),quantile(controls_number_of_segments_volumePeripheryD_d7,0.75),quantile(controls_number_of_segments_volumePeripheryD_d14,0.75)];

median_number_of_segments_volumePeripheryD_treated = [median(treated_number_of_segments_volumePeripheryD_d1),median(treated_number_of_segments_volumePeripheryD_d3),median(treated_number_of_segments_volumePeripheryD_d7),median(treated_number_of_segments_volumePeripheryD_d14)];
q1_number_of_segments_volumePeripheryD_treated = [quantile(treated_number_of_segments_volumePeripheryD_d1,0.25),quantile(treated_number_of_segments_volumePeripheryD_d3,0.25),quantile(treated_number_of_segments_volumePeripheryD_d7,0.25),quantile(treated_number_of_segments_volumePeripheryD_d14,0.25)];
q2_number_of_segments_volumePeripheryD_treated = [quantile(treated_number_of_segments_volumePeripheryD_d1,0.75),quantile(treated_number_of_segments_volumePeripheryD_d3,0.75),quantile(treated_number_of_segments_volumePeripheryD_d7,0.75),quantile(treated_number_of_segments_volumePeripheryD_d14,0.75)];

median_number_of_segments_volumeCore_controls = [median(controls_number_of_segments_volumeCore_d1),median(controls_number_of_segments_volumeCore_d3),median(controls_number_of_segments_volumeCore_d7),median(controls_number_of_segments_volumeCore_d14)];
q1_number_of_segments_volumeCore_controls = [quantile(controls_number_of_segments_volumeCore_d1,0.25),quantile(controls_number_of_segments_volumeCore_d3,0.25),quantile(controls_number_of_segments_volumeCore_d7,0.25),quantile(controls_number_of_segments_volumeCore_d14,0.25)];
q2_number_of_segments_volumeCore_controls = [quantile(controls_number_of_segments_volumeCore_d1,0.75),quantile(controls_number_of_segments_volumeCore_d3,0.75),quantile(controls_number_of_segments_volumeCore_d7,0.75),quantile(controls_number_of_segments_volumeCore_d14,0.75)];

median_number_of_segments_volumeCore_treated = [median(treated_number_of_segments_volumeCore_d1),median(treated_number_of_segments_volumeCore_d3),median(treated_number_of_segments_volumeCore_d7),median(treated_number_of_segments_volumeCore_d14)];
q1_number_of_segments_volumeCore_treated = [quantile(treated_number_of_segments_volumeCore_d1,0.25),quantile(treated_number_of_segments_volumeCore_d3,0.25),quantile(treated_number_of_segments_volumeCore_d7,0.25),quantile(treated_number_of_segments_volumeCore_d14,0.25)];
q2_number_of_segments_volumeCore_treated = [quantile(treated_number_of_segments_volumeCore_d1,0.75),quantile(treated_number_of_segments_volumeCore_d3,0.75),quantile(treated_number_of_segments_volumeCore_d7,0.75),quantile(treated_number_of_segments_volumeCore_d14,0.75)];

median_number_of_segments_volumePeriphery_controls = [median(controls_number_of_segments_volumePeriphery_d1),median(controls_number_of_segments_volumePeriphery_d3),median(controls_number_of_segments_volumePeriphery_d7),median(controls_number_of_segments_volumePeriphery_d14)];
q1_number_of_segments_volumePeriphery_controls = [quantile(controls_number_of_segments_volumePeriphery_d1,0.25),quantile(controls_number_of_segments_volumePeriphery_d3,0.25),quantile(controls_number_of_segments_volumePeriphery_d7,0.25),quantile(controls_number_of_segments_volumePeriphery_d14,0.25)];
q2_number_of_segments_volumePeriphery_controls = [quantile(controls_number_of_segments_volumePeriphery_d1,0.75),quantile(controls_number_of_segments_volumePeriphery_d3,0.75),quantile(controls_number_of_segments_volumePeriphery_d7,0.75),quantile(controls_number_of_segments_volumePeriphery_d14,0.75)];

median_number_of_segments_volumePeriphery_treated = [median(treated_number_of_segments_volumePeriphery_d1),median(treated_number_of_segments_volumePeriphery_d3),median(treated_number_of_segments_volumePeriphery_d7),median(treated_number_of_segments_volumePeriphery_d14)];
q1_number_of_segments_volumePeriphery_treated = [quantile(treated_number_of_segments_volumePeriphery_d1,0.25),quantile(treated_number_of_segments_volumePeriphery_d3,0.25),quantile(treated_number_of_segments_volumePeriphery_d7,0.25),quantile(treated_number_of_segments_volumePeriphery_d14,0.25)];
q2_number_of_segments_volumePeriphery_treated = [quantile(treated_number_of_segments_volumePeriphery_d1,0.75),quantile(treated_number_of_segments_volumePeriphery_d3,0.75),quantile(treated_number_of_segments_volumePeriphery_d7,0.75),quantile(treated_number_of_segments_volumePeriphery_d14,0.75)];





% Number of branch points Controls

controls_number_of_branching_points_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPoints(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_points_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPoints(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_points_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPoints(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_points_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPoints(Roche_tumour_data.Controls.Day==14));

controls_true_number_of_branching_points_d1 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPoints(Roche_tumour_data.Controls.Day==1));
controls_true_number_of_branching_points_d3 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPoints(Roche_tumour_data.Controls.Day==3));
controls_true_number_of_branching_points_d7 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPoints(Roche_tumour_data.Controls.Day==7));
controls_true_number_of_branching_points_d14 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPoints(Roche_tumour_data.Controls.Day==14));


controls_number_of_branching_pointsCoreD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_pointsCoreD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_pointsCoreD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_pointsCoreD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_branching_pointsPeripheryD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_pointsPeripheryD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_pointsPeripheryD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_pointsPeripheryD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_branching_pointsCore_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCore(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_pointsCore_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCore(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_pointsCore_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCore(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_pointsCore_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsCore(Roche_tumour_data.Controls.Day==14));

controls_number_of_branching_pointsPeriphery_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_pointsPeriphery_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_pointsPeriphery_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_pointsPeriphery_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Controls.Day==14));

% Number of branch points treated

treated_number_of_branching_points_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPoints(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_points_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPoints(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_points_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPoints(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_points_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPoints(Roche_tumour_data.Treated.Day==14));


treated_true_number_of_branching_points_d1 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPoints(Roche_tumour_data.Treated.Day==1));
treated_true_number_of_branching_points_d3 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPoints(Roche_tumour_data.Treated.Day==3));
treated_true_number_of_branching_points_d7 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPoints(Roche_tumour_data.Treated.Day==7));
treated_true_number_of_branching_points_d14 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPoints(Roche_tumour_data.Treated.Day==14));


treated_number_of_branching_pointsCoreD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_pointsCoreD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_pointsCoreD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_pointsCoreD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_branching_pointsPeripheryD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_pointsPeripheryD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_pointsPeripheryD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_pointsPeripheryD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_branching_pointsCore_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCore(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_pointsCore_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCore(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_pointsCore_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCore(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_pointsCore_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsCore(Roche_tumour_data.Treated.Day==14));

treated_number_of_branching_pointsPeriphery_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_pointsPeriphery_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_pointsPeriphery_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_pointsPeriphery_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery(Roche_tumour_data.Treated.Day==14));

median_number_of_branching_points_controls = [median(controls_number_of_branching_points_d1),median(controls_number_of_branching_points_d3),median(controls_number_of_branching_points_d7),median(controls_number_of_branching_points_d14)];
q1_number_of_branching_points_controls = [quantile(controls_number_of_branching_points_d1,0.25),quantile(controls_number_of_branching_points_d3,0.25),quantile(controls_number_of_branching_points_d7,0.25),quantile(controls_number_of_branching_points_d14,0.25)];
q2_number_of_branching_points_controls = [quantile(controls_number_of_branching_points_d1,0.75),quantile(controls_number_of_branching_points_d3,0.75),quantile(controls_number_of_branching_points_d7,0.75),quantile(controls_number_of_branching_points_d14,0.75)];

median_number_of_branching_points_treated = [median(treated_number_of_branching_points_d1),median(treated_number_of_branching_points_d3),median(treated_number_of_branching_points_d7),median(treated_number_of_branching_points_d14)];
q1_number_of_branching_points_treated = [quantile(treated_number_of_branching_points_d1,0.25),quantile(treated_number_of_branching_points_d3,0.25),quantile(treated_number_of_branching_points_d7,0.25),quantile(treated_number_of_branching_points_d14,0.25)];
q2_number_of_branching_points_treated = [quantile(treated_number_of_branching_points_d1,0.75),quantile(treated_number_of_branching_points_d3,0.75),quantile(treated_number_of_branching_points_d7,0.75),quantile(treated_number_of_branching_points_d14,0.75)];

median_true_number_of_branching_points_controls = [median(controls_true_number_of_branching_points_d1),median(controls_true_number_of_branching_points_d3),median(controls_true_number_of_branching_points_d7),median(controls_true_number_of_branching_points_d14)];
q1_true_number_of_branching_points_controls = [quantile(controls_true_number_of_branching_points_d1,0.25),quantile(controls_true_number_of_branching_points_d3,0.25),quantile(controls_true_number_of_branching_points_d7,0.25),quantile(controls_true_number_of_branching_points_d14,0.25)];
q2_true_number_of_branching_points_controls = [quantile(controls_true_number_of_branching_points_d1,0.75),quantile(controls_true_number_of_branching_points_d3,0.75),quantile(controls_true_number_of_branching_points_d7,0.75),quantile(controls_true_number_of_branching_points_d14,0.75)];

median_true_number_of_branching_points_treated = [median(treated_true_number_of_branching_points_d1),median(treated_true_number_of_branching_points_d3),median(treated_true_number_of_branching_points_d7),median(treated_true_number_of_branching_points_d14)];
q1_true_number_of_branching_points_treated = [quantile(treated_true_number_of_branching_points_d1,0.25),quantile(treated_true_number_of_branching_points_d3,0.25),quantile(treated_true_number_of_branching_points_d7,0.25),quantile(treated_true_number_of_branching_points_d14,0.25)];
q2_true_number_of_branching_points_treated = [quantile(treated_true_number_of_branching_points_d1,0.75),quantile(treated_true_number_of_branching_points_d3,0.75),quantile(treated_true_number_of_branching_points_d7,0.75),quantile(treated_true_number_of_branching_points_d14,0.75)];


median_number_of_branching_pointsCoreD_controls = [median(controls_number_of_branching_pointsCoreD_d1),median(controls_number_of_branching_pointsCoreD_d3),median(controls_number_of_branching_pointsCoreD_d7),median(controls_number_of_branching_pointsCoreD_d14)];
q1_number_of_branching_pointsCoreD_controls = [quantile(controls_number_of_branching_pointsCoreD_d1,0.25),quantile(controls_number_of_branching_pointsCoreD_d3,0.25),quantile(controls_number_of_branching_pointsCoreD_d7,0.25),quantile(controls_number_of_branching_pointsCoreD_d14,0.25)];
q2_number_of_branching_pointsCoreD_controls = [quantile(controls_number_of_branching_pointsCoreD_d1,0.75),quantile(controls_number_of_branching_pointsCoreD_d3,0.75),quantile(controls_number_of_branching_pointsCoreD_d7,0.75),quantile(controls_number_of_branching_pointsCoreD_d14,0.75)];

median_number_of_branching_pointsCoreD_treated = [median(treated_number_of_branching_pointsCoreD_d1),median(treated_number_of_branching_pointsCoreD_d3),median(treated_number_of_branching_pointsCoreD_d7),median(treated_number_of_branching_pointsCoreD_d14)];
q1_number_of_branching_pointsCoreD_treated = [quantile(treated_number_of_branching_pointsCoreD_d1,0.25),quantile(treated_number_of_branching_pointsCoreD_d3,0.25),quantile(treated_number_of_branching_pointsCoreD_d7,0.25),quantile(treated_number_of_branching_pointsCoreD_d14,0.25)];
q2_number_of_branching_pointsCoreD_treated = [quantile(treated_number_of_branching_pointsCoreD_d1,0.75),quantile(treated_number_of_branching_pointsCoreD_d3,0.75),quantile(treated_number_of_branching_pointsCoreD_d7,0.75),quantile(treated_number_of_branching_pointsCoreD_d14,0.75)];

median_number_of_branching_pointsPeripheryD_controls = [median(controls_number_of_branching_pointsPeripheryD_d1),median(controls_number_of_branching_pointsPeripheryD_d3),median(controls_number_of_branching_pointsPeripheryD_d7),median(controls_number_of_branching_pointsPeripheryD_d14)];
q1_number_of_branching_pointsPeripheryD_controls = [quantile(controls_number_of_branching_pointsPeripheryD_d1,0.25),quantile(controls_number_of_branching_pointsPeripheryD_d3,0.25),quantile(controls_number_of_branching_pointsPeripheryD_d7,0.25),quantile(controls_number_of_branching_pointsPeripheryD_d14,0.25)];
q2_number_of_branching_pointsPeripheryD_controls = [quantile(controls_number_of_branching_pointsPeripheryD_d1,0.75),quantile(controls_number_of_branching_pointsPeripheryD_d3,0.75),quantile(controls_number_of_branching_pointsPeripheryD_d7,0.75),quantile(controls_number_of_branching_pointsPeripheryD_d14,0.75)];

median_number_of_branching_pointsPeripheryD_treated = [median(treated_number_of_branching_pointsPeripheryD_d1),median(treated_number_of_branching_pointsPeripheryD_d3),median(treated_number_of_branching_pointsPeripheryD_d7),median(treated_number_of_branching_pointsPeripheryD_d14)];
q1_number_of_branching_pointsPeripheryD_treated = [quantile(treated_number_of_branching_pointsPeripheryD_d1,0.25),quantile(treated_number_of_branching_pointsPeripheryD_d3,0.25),quantile(treated_number_of_branching_pointsPeripheryD_d7,0.25),quantile(treated_number_of_branching_pointsPeripheryD_d14,0.25)];
q2_number_of_branching_pointsPeripheryD_treated = [quantile(treated_number_of_branching_pointsPeripheryD_d1,0.75),quantile(treated_number_of_branching_pointsPeripheryD_d3,0.75),quantile(treated_number_of_branching_pointsPeripheryD_d7,0.75),quantile(treated_number_of_branching_pointsPeripheryD_d14,0.75)];

median_number_of_branching_pointsCore_controls = [median(controls_number_of_branching_pointsCore_d1),median(controls_number_of_branching_pointsCore_d3),median(controls_number_of_branching_pointsCore_d7),median(controls_number_of_branching_pointsCore_d14)];
q1_number_of_branching_pointsCore_controls = [quantile(controls_number_of_branching_pointsCore_d1,0.25),quantile(controls_number_of_branching_pointsCore_d3,0.25),quantile(controls_number_of_branching_pointsCore_d7,0.25),quantile(controls_number_of_branching_pointsCore_d14,0.25)];
q2_number_of_branching_pointsCore_controls = [quantile(controls_number_of_branching_pointsCore_d1,0.75),quantile(controls_number_of_branching_pointsCore_d3,0.75),quantile(controls_number_of_branching_pointsCore_d7,0.75),quantile(controls_number_of_branching_pointsCore_d14,0.75)];

median_number_of_branching_pointsCore_treated = [median(treated_number_of_branching_pointsCore_d1),median(treated_number_of_branching_pointsCore_d3),median(treated_number_of_branching_pointsCore_d7),median(treated_number_of_branching_pointsCore_d14)];
q1_number_of_branching_pointsCore_treated = [quantile(treated_number_of_branching_pointsCore_d1,0.25),quantile(treated_number_of_branching_pointsCore_d3,0.25),quantile(treated_number_of_branching_pointsCore_d7,0.25),quantile(treated_number_of_branching_pointsCore_d14,0.25)];
q2_number_of_branching_pointsCore_treated = [quantile(treated_number_of_branching_pointsCore_d1,0.75),quantile(treated_number_of_branching_pointsCore_d3,0.75),quantile(treated_number_of_branching_pointsCore_d7,0.75),quantile(treated_number_of_branching_pointsCore_d14,0.75)];

median_number_of_branching_pointsPeriphery_controls = [median(controls_number_of_branching_pointsPeriphery_d1),median(controls_number_of_branching_pointsPeriphery_d3),median(controls_number_of_branching_pointsPeriphery_d7),median(controls_number_of_branching_pointsPeriphery_d14)];
q1_number_of_branching_pointsPeriphery_controls = [quantile(controls_number_of_branching_pointsPeriphery_d1,0.25),quantile(controls_number_of_branching_pointsPeriphery_d3,0.25),quantile(controls_number_of_branching_pointsPeriphery_d7,0.25),quantile(controls_number_of_branching_pointsPeriphery_d14,0.25)];
q2_number_of_branching_pointsPeriphery_controls = [quantile(controls_number_of_branching_pointsPeriphery_d1,0.75),quantile(controls_number_of_branching_pointsPeriphery_d3,0.75),quantile(controls_number_of_branching_pointsPeriphery_d7,0.75),quantile(controls_number_of_branching_pointsPeriphery_d14,0.75)];

median_number_of_branching_pointsPeriphery_treated = [median(treated_number_of_branching_pointsPeriphery_d1),median(treated_number_of_branching_pointsPeriphery_d3),median(treated_number_of_branching_pointsPeriphery_d7),median(treated_number_of_branching_pointsPeriphery_d14)];
q1_number_of_branching_pointsPeriphery_treated = [quantile(treated_number_of_branching_pointsPeriphery_d1,0.25),quantile(treated_number_of_branching_pointsPeriphery_d3,0.25),quantile(treated_number_of_branching_pointsPeriphery_d7,0.25),quantile(treated_number_of_branching_pointsPeriphery_d14,0.25)];
q2_number_of_branching_pointsPeriphery_treated = [quantile(treated_number_of_branching_pointsPeriphery_d1,0.75),quantile(treated_number_of_branching_pointsPeriphery_d3,0.75),quantile(treated_number_of_branching_pointsPeriphery_d7,0.75),quantile(treated_number_of_branching_pointsPeriphery_d14,0.75)];


% Number of branch points per volume Controls

controls_number_of_branching_points_volume_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_points_volume_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_points_volume_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_points_volume_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==14));

controls_true_number_of_branching_points_volume_d1 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==1));
controls_true_number_of_branching_points_volume_d3 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==3));
controls_true_number_of_branching_points_volume_d7 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==7));
controls_true_number_of_branching_points_volume_d14 = cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Controls.Day==14));


controls_number_of_branching_points_volumeCoreD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_points_volumeCoreD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_points_volumeCoreD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_points_volumeCoreD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_branching_points_volumePeripheryD_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_points_volumePeripheryD_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_points_volumePeripheryD_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_points_volumePeripheryD_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Controls.Day==14));

controls_number_of_branching_points_volumeCore_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_points_volumeCore_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_points_volumeCore_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_points_volumeCore_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Controls.Day==14));

controls_number_of_branching_points_volumePeriphery_d1 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Controls.Day==1));
controls_number_of_branching_points_volumePeriphery_d3 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Controls.Day==3));
controls_number_of_branching_points_volumePeriphery_d7 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Controls.Day==7));
controls_number_of_branching_points_volumePeriphery_d14 = cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Controls.Day==14));

% Number of branch points per volume treated
treated_number_of_branching_points_volume_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_points_volume_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_points_volume_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_points_volume_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==14));

treated_true_number_of_branching_points_volume_d1 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==1));
treated_true_number_of_branching_points_volume_d3 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==3));
treated_true_number_of_branching_points_volume_d7 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==7));
treated_true_number_of_branching_points_volume_d14 = cell2mat(Roche_tumour_data.Treated.TrueNumberOfBranchingPointsVolume(Roche_tumour_data.Treated.Day==14));


treated_number_of_branching_points_volumeCoreD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_points_volumeCoreD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_points_volumeCoreD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_points_volumeCoreD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCoreDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_branching_points_volumePeripheryD_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_points_volumePeripheryD_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_points_volumePeripheryD_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_points_volumePeripheryD_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeripheryDobosz(Roche_tumour_data.Treated.Day==14));

treated_number_of_branching_points_volumeCore_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_points_volumeCore_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_points_volumeCore_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_points_volumeCore_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCore(Roche_tumour_data.Treated.Day==14));

treated_number_of_branching_points_volumePeriphery_d1 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Treated.Day==1));
treated_number_of_branching_points_volumePeriphery_d3 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Treated.Day==3));
treated_number_of_branching_points_volumePeriphery_d7 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Treated.Day==7));
treated_number_of_branching_points_volumePeriphery_d14 = cell2mat(Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeriphery(Roche_tumour_data.Treated.Day==14));


median_number_of_branching_points_volume_controls = [median(controls_number_of_branching_points_volume_d1),median(controls_number_of_branching_points_volume_d3),median(controls_number_of_branching_points_volume_d7),median(controls_number_of_branching_points_volume_d14)];
q1_number_of_branching_points_volume_controls = [quantile(controls_number_of_branching_points_volume_d1,0.25),quantile(controls_number_of_branching_points_volume_d3,0.25),quantile(controls_number_of_branching_points_volume_d7,0.25),quantile(controls_number_of_branching_points_volume_d14,0.25)];
q2_number_of_branching_points_volume_controls = [quantile(controls_number_of_branching_points_volume_d1,0.75),quantile(controls_number_of_branching_points_volume_d3,0.75),quantile(controls_number_of_branching_points_volume_d7,0.75),quantile(controls_number_of_branching_points_volume_d14,0.75)];

median_number_of_branching_points_volume_treated = [median(treated_number_of_branching_points_volume_d1),median(treated_number_of_branching_points_volume_d3),median(treated_number_of_branching_points_volume_d7),median(treated_number_of_branching_points_volume_d14)];
q1_number_of_branching_points_volume_treated = [quantile(treated_number_of_branching_points_volume_d1,0.25),quantile(treated_number_of_branching_points_volume_d3,0.25),quantile(treated_number_of_branching_points_volume_d7,0.25),quantile(treated_number_of_branching_points_volume_d14,0.25)];
q2_number_of_branching_points_volume_treated = [quantile(treated_number_of_branching_points_volume_d1,0.75),quantile(treated_number_of_branching_points_volume_d3,0.75),quantile(treated_number_of_branching_points_volume_d7,0.75),quantile(treated_number_of_branching_points_volume_d14,0.75)];

median_true_number_of_branching_points_volume_controls = [median(controls_true_number_of_branching_points_volume_d1),median(controls_true_number_of_branching_points_volume_d3),median(controls_true_number_of_branching_points_volume_d7),median(controls_true_number_of_branching_points_volume_d14)];
q1_true_number_of_branching_points_volume_controls = [quantile(controls_true_number_of_branching_points_volume_d1,0.25),quantile(controls_true_number_of_branching_points_volume_d3,0.25),quantile(controls_true_number_of_branching_points_volume_d7,0.25),quantile(controls_true_number_of_branching_points_volume_d14,0.25)];
q2_true_number_of_branching_points_volume_controls = [quantile(controls_true_number_of_branching_points_volume_d1,0.75),quantile(controls_true_number_of_branching_points_volume_d3,0.75),quantile(controls_true_number_of_branching_points_volume_d7,0.75),quantile(controls_true_number_of_branching_points_volume_d14,0.75)];

median_true_number_of_branching_points_volume_treated = [median(treated_true_number_of_branching_points_volume_d1),median(treated_true_number_of_branching_points_volume_d3),median(treated_true_number_of_branching_points_volume_d7),median(treated_true_number_of_branching_points_volume_d14)];
q1_true_number_of_branching_points_volume_treated = [quantile(treated_true_number_of_branching_points_volume_d1,0.25),quantile(treated_true_number_of_branching_points_volume_d3,0.25),quantile(treated_true_number_of_branching_points_volume_d7,0.25),quantile(treated_true_number_of_branching_points_volume_d14,0.25)];
q2_true_number_of_branching_points_volume_treated = [quantile(treated_true_number_of_branching_points_volume_d1,0.75),quantile(treated_true_number_of_branching_points_volume_d3,0.75),quantile(treated_true_number_of_branching_points_volume_d7,0.75),quantile(treated_true_number_of_branching_points_volume_d14,0.75)];


median_number_of_branching_points_volumeCoreD_controls = [median(controls_number_of_branching_points_volumeCoreD_d1),median(controls_number_of_branching_points_volumeCoreD_d3),median(controls_number_of_branching_points_volumeCoreD_d7),median(controls_number_of_branching_points_volumeCoreD_d14)];
q1_number_of_branching_points_volumeCoreD_controls = [quantile(controls_number_of_branching_points_volumeCoreD_d1,0.25),quantile(controls_number_of_branching_points_volumeCoreD_d3,0.25),quantile(controls_number_of_branching_points_volumeCoreD_d7,0.25),quantile(controls_number_of_branching_points_volumeCoreD_d14,0.25)];
q2_number_of_branching_points_volumeCoreD_controls = [quantile(controls_number_of_branching_points_volumeCoreD_d1,0.75),quantile(controls_number_of_branching_points_volumeCoreD_d3,0.75),quantile(controls_number_of_branching_points_volumeCoreD_d7,0.75),quantile(controls_number_of_branching_points_volumeCoreD_d14,0.75)];

median_number_of_branching_points_volumeCoreD_treated = [median(treated_number_of_branching_points_volumeCoreD_d1),median(treated_number_of_branching_points_volumeCoreD_d3),median(treated_number_of_branching_points_volumeCoreD_d7),median(treated_number_of_branching_points_volumeCoreD_d14)];
q1_number_of_branching_points_volumeCoreD_treated = [quantile(treated_number_of_branching_points_volumeCoreD_d1,0.25),quantile(treated_number_of_branching_points_volumeCoreD_d3,0.25),quantile(treated_number_of_branching_points_volumeCoreD_d7,0.25),quantile(treated_number_of_branching_points_volumeCoreD_d14,0.25)];
q2_number_of_branching_points_volumeCoreD_treated = [quantile(treated_number_of_branching_points_volumeCoreD_d1,0.75),quantile(treated_number_of_branching_points_volumeCoreD_d3,0.75),quantile(treated_number_of_branching_points_volumeCoreD_d7,0.75),quantile(treated_number_of_branching_points_volumeCoreD_d14,0.75)];

median_number_of_branching_points_volumePeripheryD_controls = [median(controls_number_of_branching_points_volumePeripheryD_d1),median(controls_number_of_branching_points_volumePeripheryD_d3),median(controls_number_of_branching_points_volumePeripheryD_d7),median(controls_number_of_branching_points_volumePeripheryD_d14)];
q1_number_of_branching_points_volumePeripheryD_controls = [quantile(controls_number_of_branching_points_volumePeripheryD_d1,0.25),quantile(controls_number_of_branching_points_volumePeripheryD_d3,0.25),quantile(controls_number_of_branching_points_volumePeripheryD_d7,0.25),quantile(controls_number_of_branching_points_volumePeripheryD_d14,0.25)];
q2_number_of_branching_points_volumePeripheryD_controls = [quantile(controls_number_of_branching_points_volumePeripheryD_d1,0.75),quantile(controls_number_of_branching_points_volumePeripheryD_d3,0.75),quantile(controls_number_of_branching_points_volumePeripheryD_d7,0.75),quantile(controls_number_of_branching_points_volumePeripheryD_d14,0.75)];

median_number_of_branching_points_volumePeripheryD_treated = [median(treated_number_of_branching_points_volumePeripheryD_d1),median(treated_number_of_branching_points_volumePeripheryD_d3),median(treated_number_of_branching_points_volumePeripheryD_d7),median(treated_number_of_branching_points_volumePeripheryD_d14)];
q1_number_of_branching_points_volumePeripheryD_treated = [quantile(treated_number_of_branching_points_volumePeripheryD_d1,0.25),quantile(treated_number_of_branching_points_volumePeripheryD_d3,0.25),quantile(treated_number_of_branching_points_volumePeripheryD_d7,0.25),quantile(treated_number_of_branching_points_volumePeripheryD_d14,0.25)];
q2_number_of_branching_points_volumePeripheryD_treated = [quantile(treated_number_of_branching_points_volumePeripheryD_d1,0.75),quantile(treated_number_of_branching_points_volumePeripheryD_d3,0.75),quantile(treated_number_of_branching_points_volumePeripheryD_d7,0.75),quantile(treated_number_of_branching_points_volumePeripheryD_d14,0.75)];

median_number_of_branching_points_volumeCore_controls = [median(controls_number_of_branching_points_volumeCore_d1),median(controls_number_of_branching_points_volumeCore_d3),median(controls_number_of_branching_points_volumeCore_d7),median(controls_number_of_branching_points_volumeCore_d14)];
q1_number_of_branching_points_volumeCore_controls = [quantile(controls_number_of_branching_points_volumeCore_d1,0.25),quantile(controls_number_of_branching_points_volumeCore_d3,0.25),quantile(controls_number_of_branching_points_volumeCore_d7,0.25),quantile(controls_number_of_branching_points_volumeCore_d14,0.25)];
q2_number_of_branching_points_volumeCore_controls = [quantile(controls_number_of_branching_points_volumeCore_d1,0.75),quantile(controls_number_of_branching_points_volumeCore_d3,0.75),quantile(controls_number_of_branching_points_volumeCore_d7,0.75),quantile(controls_number_of_branching_points_volumeCore_d14,0.75)];

median_number_of_branching_points_volumeCore_treated = [median(treated_number_of_branching_points_volumeCore_d1),median(treated_number_of_branching_points_volumeCore_d3),median(treated_number_of_branching_points_volumeCore_d7),median(treated_number_of_branching_points_volumeCore_d14)];
q1_number_of_branching_points_volumeCore_treated = [quantile(treated_number_of_branching_points_volumeCore_d1,0.25),quantile(treated_number_of_branching_points_volumeCore_d3,0.25),quantile(treated_number_of_branching_points_volumeCore_d7,0.25),quantile(treated_number_of_branching_points_volumeCore_d14,0.25)];
q2_number_of_branching_points_volumeCore_treated = [quantile(treated_number_of_branching_points_volumeCore_d1,0.75),quantile(treated_number_of_branching_points_volumeCore_d3,0.75),quantile(treated_number_of_branching_points_volumeCore_d7,0.75),quantile(treated_number_of_branching_points_volumeCore_d14,0.75)];

median_number_of_branching_points_volumePeriphery_controls = [median(controls_number_of_branching_points_volumePeriphery_d1),median(controls_number_of_branching_points_volumePeriphery_d3),median(controls_number_of_branching_points_volumePeriphery_d7),median(controls_number_of_branching_points_volumePeriphery_d14)];
q1_number_of_branching_points_volumePeriphery_controls = [quantile(controls_number_of_branching_points_volumePeriphery_d1,0.25),quantile(controls_number_of_branching_points_volumePeriphery_d3,0.25),quantile(controls_number_of_branching_points_volumePeriphery_d7,0.25),quantile(controls_number_of_branching_points_volumePeriphery_d14,0.25)];
q2_number_of_branching_points_volumePeriphery_controls = [quantile(controls_number_of_branching_points_volumePeriphery_d1,0.75),quantile(controls_number_of_branching_points_volumePeriphery_d3,0.75),quantile(controls_number_of_branching_points_volumePeriphery_d7,0.75),quantile(controls_number_of_branching_points_volumePeriphery_d14,0.75)];

median_number_of_branching_points_volumePeriphery_treated = [median(treated_number_of_branching_points_volumePeriphery_d1),median(treated_number_of_branching_points_volumePeriphery_d3),median(treated_number_of_branching_points_volumePeriphery_d7),median(treated_number_of_branching_points_volumePeriphery_d14)];
q1_number_of_branching_points_volumePeriphery_treated = [quantile(treated_number_of_branching_points_volumePeriphery_d1,0.25),quantile(treated_number_of_branching_points_volumePeriphery_d3,0.25),quantile(treated_number_of_branching_points_volumePeriphery_d7,0.25),quantile(treated_number_of_branching_points_volumePeriphery_d14,0.25)];
q2_number_of_branching_points_volumePeriphery_treated = [quantile(treated_number_of_branching_points_volumePeriphery_d1,0.75),quantile(treated_number_of_branching_points_volumePeriphery_d3,0.75),quantile(treated_number_of_branching_points_volumePeriphery_d7,0.75),quantile(treated_number_of_branching_points_volumePeriphery_d14,0.75)];


%% Plots

x = [1,3,7,14];

% Number of segments

set(0, 'DefaulttextInterpreter', 'none')

supertitle = ['Median number of segments'];

h1 = figure
y1 = median_number_of_segments_controls;
err1_1 = median_number_of_segments_controls-q1_number_of_segments_controls;
err1_2 = q2_number_of_segments_controls-median_number_of_segments_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y1b = median_true_number_of_segments_controls;
err1_1b = median_true_number_of_segments_controls-q1_true_number_of_segments_controls;
err1_2b = q2_true_number_of_segments_controls-median_true_number_of_segments_controls;
e1b = errorbar(x(1:length(y1b)),y1b,err1_1b,err1_2b,'LineWidth',2)
e1b.Color = 'cyan';
e1b.LineStyle = '--';
hold on
y2 = median_number_of_segments_treated;
err2_1 = median_number_of_segments_treated-q1_number_of_segments_treated;
err2_2 = q2_number_of_segments_treated-median_number_of_segments_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
hold on
y2b = median_true_number_of_segments_treated;
err2_1b = median_true_number_of_segments_treated-q1_true_number_of_segments_treated;
err2_2b = q2_true_number_of_segments_treated-median_true_number_of_segments_treated;
e2b = errorbar(x(1:length(y2b)),y2b,err2_1b,err2_2b,'LineWidth',2)
e2b.Color = 'red';
e2b.LineStyle = '--';
xlim([-1,max(x)+1])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of segments','Fontsize',20)
legend(["Controls","Controls Dobosz", "Treated", "Treated Dobosz"],'Fontsize',18)
title(supertitle,'Fontsize',25)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegments.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegments.pdf'];


set(h1,'Units','Inches');
pos = get(h1,'Position');
set(h1,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h1,image_title2,'-dpdf','-r0')

saveas(h1,image_title1)



    
    
% Number of segments C versus P Dobosz


h22 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_segmentsCoreD_controls;
err1_1 = median_number_of_segmentsCoreD_controls-q1_number_of_segmentsCoreD_controls;
err1_2 = q2_number_of_segmentsCoreD_controls-median_number_of_segmentsCoreD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segmentsCoreD_treated;
err2_1 = median_number_of_segmentsCoreD_treated-q1_number_of_segmentsCoreD_treated;
err2_2 = q2_number_of_segmentsCoreD_treated-median_number_of_segmentsCoreD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,130000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core Dobosz','Fontsize',25)
ylabel('Number of segments','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = median_number_of_segmentsPeripheryD_controls;
err1_1 = median_number_of_segmentsPeripheryD_controls-q1_number_of_segmentsPeripheryD_controls;
err1_2 = q2_number_of_segmentsPeripheryD_controls-median_number_of_segmentsPeripheryD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segmentsPeripheryD_treated;
err2_1 = median_number_of_segmentsPeripheryD_treated-q1_number_of_segmentsPeripheryD_treated;
err2_2 = q2_number_of_segmentsPeripheryD_treated-median_number_of_segmentsPeripheryD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,130000])
set(gca,'FontSize',18)
xlabel('Number of segments','Fontsize',20)
title('Periphery Dobosz','Fontsize',25)
legend(["Controls", "treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsIntervalsDobosz.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsIntervalsDobosz.pdf'];


set(h22,'Units','Inches');
pos = get(h22,'Position');
set(h22,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h22,image_title2,'-dpdf','-r0')

saveas(h22,image_title1)


% Number of segments C versus P 

h33 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_segmentsCore_controls;
err1_1 = median_number_of_segmentsCore_controls-q1_number_of_segmentsCore_controls;
err1_2 = q2_number_of_segmentsCore_controls-median_number_of_segmentsCore_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segmentsCore_treated;
err2_1 = median_number_of_segmentsCore_treated-q1_number_of_segmentsCore_treated;
err2_2 = q2_number_of_segmentsCore_treated-median_number_of_segmentsCore_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,125000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core ','Fontsize',25)
ylabel('Number of segments','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = median_number_of_segmentsPeriphery_controls;
err1_1 = median_number_of_segmentsPeriphery_controls-q1_number_of_segmentsPeriphery_controls;
err1_2 = q2_number_of_segmentsPeriphery_controls-median_number_of_segmentsPeriphery_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segmentsPeriphery_treated;
err2_1 = median_number_of_segmentsPeriphery_treated-q1_number_of_segmentsPeriphery_treated;
err2_2 = q2_number_of_segmentsPeriphery_treated-median_number_of_segmentsPeriphery_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,125000])
set(gca,'FontSize',18)
xlabel('Number of segments','Fontsize',20)
title('Periphery ','Fontsize',25)
legend(["Controls", "treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsIntervals.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsIntervals.pdf'];


set(h33,'Units','Inches');
pos = get(h33,'Position');
set(h33,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h33,image_title2,'-dpdf','-r0')

saveas(h33,image_title1)


% Number of segments Volume

supertitle = ['Median number of segments'];

h1 = figure
y1 = median_number_of_segments_volume_controls;
err1_1 = median_number_of_segments_volume_controls-q1_number_of_segments_volume_controls;
err1_2 = q2_number_of_segments_volume_controls-median_number_of_segments_volume_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y1b = median_true_number_of_segments_volume_controls;
err1_1b = median_true_number_of_segments_volume_controls-q1_true_number_of_segments_volume_controls;
err1_2b = q2_true_number_of_segments_volume_controls-median_true_number_of_segments_volume_controls;
e1b = errorbar(x(1:length(y1b)),y1b,err1_1b,err1_2b,'LineWidth',2)
e1b.Color = 'cyan';
e1b.LineStyle = '--';
hold on
y2 = median_number_of_segments_volume_treated;
err2_1 = median_number_of_segments_volume_treated-q1_number_of_segments_volume_treated;
err2_2 = q2_number_of_segments_volume_treated-median_number_of_segments_volume_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
y2b = median_true_number_of_segments_volume_treated;
err2_1b = median_true_number_of_segments_volume_treated-q1_true_number_of_segments_volume_treated;
err2_2b = q2_true_number_of_segments_volume_treated-median_true_number_of_segments_volume_treated;
e2b = errorbar(x(1:length(y2b)),y2b,err2_1b,err2_2b,'LineWidth',2)
e2b.Color = 'red';
e2b.LineStyle = '--';
xlim([-1,max(x)+1])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of segments per volume','Fontsize',20)
legend(["Controls","Controls Dobosz", "Treated", "Treated Dobosz"],'Fontsize',18)
title(supertitle,'Fontsize',25)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsVolume.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsVolume.pdf'];


set(h1,'Units','Inches');
pos = get(h1,'Position');
set(h1,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h1,image_title2,'-dpdf','-r0')

saveas(h1,image_title1)


% Number of segments Volume C versus P Dobosz

h22 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_segments_volumeCoreD_controls;
err1_1 = median_number_of_segments_volumeCoreD_controls-q1_number_of_segments_volumeCoreD_controls;
err1_2 = q2_number_of_segments_volumeCoreD_controls-median_number_of_segments_volumeCoreD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segments_volumeCoreD_treated;
err2_1 = median_number_of_segments_volumeCoreD_treated-q1_number_of_segments_volumeCoreD_treated;
err2_2 = q2_number_of_segments_volumeCoreD_treated-median_number_of_segments_volumeCoreD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,5000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core Dobosz','Fontsize',25)
ylabel('Number of segments_volume','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = median_number_of_segments_volumePeripheryD_controls;
err1_1 = median_number_of_segments_volumePeripheryD_controls-q1_number_of_segments_volumePeripheryD_controls;
err1_2 = q2_number_of_segments_volumePeripheryD_controls-median_number_of_segments_volumePeripheryD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segments_volumePeripheryD_treated;
err2_1 = median_number_of_segments_volumePeripheryD_treated-q1_number_of_segments_volumePeripheryD_treated;
err2_2 = q2_number_of_segments_volumePeripheryD_treated-median_number_of_segments_volumePeripheryD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,5000])
set(gca,'FontSize',18)
xlabel('Number of segments_volume','Fontsize',20)
title('Periphery Dobosz','Fontsize',25)
legend(["Controls", "treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsVolumeIntervalsDobosz.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsVolumeIntervalsDobosz.pdf'];


set(h22,'Units','Inches');
pos = get(h22,'Position');
set(h22,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h22,image_title2,'-dpdf','-r0')

saveas(h22,image_title1)

% Number of segments Volume C versus P 

h33 = figure
set(gcf, 'Units', 'Normalize', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_segments_volumeCore_controls;
err1_1 = median_number_of_segments_volumeCore_controls-q1_number_of_segments_volumeCore_controls;
err1_2 = q2_number_of_segments_volumeCore_controls-median_number_of_segments_volumeCore_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segments_volumeCore_treated;
err2_1 = median_number_of_segments_volumeCore_treated-q1_number_of_segments_volumeCore_treated;
err2_2 = q2_number_of_segments_volumeCore_treated-median_number_of_segments_volumeCore_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,11000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core','Fontsize',25)
ylabel('Number of segments per volume','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bol')
hold on
subplot(1,2,2)
y1 = median_number_of_segments_volumePeriphery_controls;
err1_1 = median_number_of_segments_volumePeriphery_controls-q1_number_of_segments_volumePeriphery_controls;
err1_2 = q2_number_of_segments_volumePeriphery_controls-median_number_of_segments_volumePeriphery_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_segments_volumePeriphery_treated;
err2_1 = median_number_of_segments_volumePeriphery_treated-q1_number_of_segments_volumePeriphery_treated;
err2_2 = q2_number_of_segments_volumePeriphery_treated-median_number_of_segments_volumePeriphery_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,11000])
set(gca,'FontSize',18)
xlabel('Number of segments per volume','Fontsize',20)
title('Periphery','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsVolumeIntervals.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfSegmentsVolumeIntervals.pdf'];


set(h33,'Units','Inches');
pos = get(h33,'Position');
set(h33,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h33,image_title2,'-dpdf','-r0')

saveas(h33,image_title1)


% Number of Branching Points

supertitle = ['Median number of branching points'];

h1 = figure
y1 = median_number_of_branching_points_controls;
err1_1 = median_number_of_branching_points_controls-q1_number_of_branching_points_controls;
err1_2 = q2_number_of_branching_points_controls-median_number_of_branching_points_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y1b = median_true_number_of_branching_points_controls;
err1_1b = median_true_number_of_branching_points_controls-q1_true_number_of_branching_points_controls;
err1_2b = q2_true_number_of_branching_points_controls-median_true_number_of_branching_points_controls;
e1b = errorbar(x(1:length(y1b)),y1b,err1_1b,err1_2b,'LineWidth',2)
e1b.Color = 'cyan';
e1b.LineStyle = '--';
hold on
y2 = median_number_of_branching_points_treated;
err2_1 = median_number_of_branching_points_treated-q1_number_of_branching_points_treated;
err2_2 = q2_number_of_branching_points_treated-median_number_of_branching_points_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
hold on
y2b = median_true_number_of_branching_points_treated;
err2_1b = median_true_number_of_branching_points_treated-q1_true_number_of_branching_points_treated;
err2_2b = q2_true_number_of_branching_points_treated-median_true_number_of_branching_points_treated;
e2b = errorbar(x(1:length(y2b)),y2b,err2_1b,err2_2b,'LineWidth',2)
e2b.Color = 'red';
e2b.LineStyle = '--';
xlim([-1,max(x)+1])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of branching points','Fontsize',20)
legend(["Controls","Controls Dobosz", "Treated", "Treated Dobosz"],'Fontsize',18)
title(supertitle,'Fontsize',25)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPoints.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPoints.pdf'];


set(h1,'Units','Inches');
pos = get(h1,'Position');
set(h1,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h1,image_title2,'-dpdf','-r0')

saveas(h1,image_title1)

% Number of Branching Points C versus P Dobosz


h22 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_branching_pointsCoreD_controls;
err1_1 = median_number_of_branching_pointsCoreD_controls-q1_number_of_branching_pointsCoreD_controls;
err1_2 = q2_number_of_branching_pointsCoreD_controls-median_number_of_branching_pointsCoreD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_pointsCoreD_treated;
err2_1 = median_number_of_branching_pointsCoreD_treated-q1_number_of_branching_pointsCoreD_treated;
err2_2 = q2_number_of_branching_pointsCoreD_treated-median_number_of_branching_pointsCoreD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,90000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core Dobosz','Fontsize',25)
ylabel('Number of branching points','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = median_number_of_branching_pointsPeripheryD_controls;
err1_1 = median_number_of_branching_pointsPeripheryD_controls-q1_number_of_branching_pointsPeripheryD_controls;
err1_2 = q2_number_of_branching_pointsPeripheryD_controls-median_number_of_branching_pointsPeripheryD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_pointsPeripheryD_treated;
err2_1 = median_number_of_branching_pointsPeripheryD_treated-q1_number_of_branching_pointsPeripheryD_treated;
err2_2 = q2_number_of_branching_pointsPeripheryD_treated-median_number_of_branching_pointsPeripheryD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,90000])
set(gca,'FontSize',18)
xlabel('Number of branching points','Fontsize',20)
title('Periphery Dobosz','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsIntervalsDobosz.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsIntervalsDobosz.pdf'];


set(h22,'Units','Inches');
pos = get(h22,'Position');
set(h22,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h22,image_title2,'-dpdf','-r0')

saveas(h22,image_title1)


% number of branching points C versus P 

h33 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_branching_pointsCore_controls;
err1_1 = median_number_of_branching_pointsCore_controls-q1_number_of_branching_pointsCore_controls;
err1_2 = q2_number_of_branching_pointsCore_controls-median_number_of_branching_pointsCore_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_pointsCore_treated;
err2_1 = median_number_of_branching_pointsCore_treated-q1_number_of_branching_pointsCore_treated;
err2_2 = q2_number_of_branching_pointsCore_treated-median_number_of_branching_pointsCore_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,80000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core ','Fontsize',25)
ylabel('Number of branching points','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = median_number_of_branching_pointsPeriphery_controls;
err1_1 = median_number_of_branching_pointsPeriphery_controls-q1_number_of_branching_pointsPeriphery_controls;
err1_2 = q2_number_of_branching_pointsPeriphery_controls-median_number_of_branching_pointsPeriphery_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_pointsPeriphery_treated;
err2_1 = median_number_of_branching_pointsPeriphery_treated-q1_number_of_branching_pointsPeriphery_treated;
err2_2 = q2_number_of_branching_pointsPeriphery_treated-median_number_of_branching_pointsPeriphery_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,80000])
set(gca,'FontSize',18)
xlabel('Number of branching points','Fontsize',20)
title('Periphery ','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsIntervals.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsIntervals.pdf'];


set(h33,'Units','Inches');
pos = get(h33,'Position');
set(h33,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h33,image_title2,'-dpdf','-r0')

saveas(h33,image_title1)


% number of branching points Volume

supertitle = ['Median number of branching points'];

h1 = figure
y1 = median_number_of_branching_points_volume_controls;
err1_1 = median_number_of_branching_points_volume_controls-q1_number_of_branching_points_volume_controls;
err1_2 = q2_number_of_branching_points_volume_controls-median_number_of_branching_points_volume_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y1b = median_true_number_of_branching_points_volume_controls;
err1_1b = median_true_number_of_branching_points_volume_controls-q1_true_number_of_branching_points_volume_controls;
err1_2b = q2_true_number_of_branching_points_volume_controls-median_true_number_of_branching_points_volume_controls;
e1b = errorbar(x(1:length(y1b)),y1b,err1_1b,err1_2b,'LineWidth',2)
e1b.Color = 'cyan';
e1b.LineStyle = '--';
hold on
y2 = median_number_of_branching_points_volume_treated;
err2_1 = median_number_of_branching_points_volume_treated-q1_number_of_branching_points_volume_treated;
err2_2 = q2_number_of_branching_points_volume_treated-median_number_of_branching_points_volume_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
hold on
y2b = median_true_number_of_branching_points_volume_treated;
err2_1b = median_true_number_of_branching_points_volume_treated-q1_true_number_of_branching_points_volume_treated;
err2_2b = q2_true_number_of_branching_points_volume_treated-median_true_number_of_branching_points_volume_treated;
e2b = errorbar(x(1:length(y2b)),y2b,err2_1b,err2_2b,'LineWidth',2)
e2b.Color = 'red';
e2b.LineStyle = '--';
xlim([-1,max(x)+1])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
ylabel('Number of branching points per volume','Fontsize',20)
legend(["Controls","Controls Dobosz", "Treated", "Treated Dobosz"],'Fontsize',18)
title(supertitle,'Fontsize',25)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsVolume.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsVolume.pdf'];


set(h1,'Units','Inches');
pos = get(h1,'Position');
set(h1,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h1,image_title2,'-dpdf','-r0')

saveas(h1,image_title1)


% number of branching points Volume C versus P Dobosz

h22 = figure
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_branching_points_volumeCoreD_controls;
err1_1 = median_number_of_branching_points_volumeCoreD_controls-q1_number_of_branching_points_volumeCoreD_controls;
err1_2 = q2_number_of_branching_points_volumeCoreD_controls-median_number_of_branching_points_volumeCoreD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_points_volumeCoreD_treated;
err2_1 = median_number_of_branching_points_volumeCoreD_treated-q1_number_of_branching_points_volumeCoreD_treated;
err2_2 = q2_number_of_branching_points_volumeCoreD_treated-median_number_of_branching_points_volumeCoreD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,4000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core Dobosz','Fontsize',25)
ylabel('Number of branching points per volume','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bold')
hold on
subplot(1,2,2)
y1 = median_number_of_branching_points_volumePeripheryD_controls;
err1_1 = median_number_of_branching_points_volumePeripheryD_controls-q1_number_of_branching_points_volumePeripheryD_controls;
err1_2 = q2_number_of_branching_points_volumePeripheryD_controls-median_number_of_branching_points_volumePeripheryD_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_points_volumePeripheryD_treated;
err2_1 = median_number_of_branching_points_volumePeripheryD_treated-q1_number_of_branching_points_volumePeripheryD_treated;
err2_2 = q2_number_of_branching_points_volumePeripheryD_treated-median_number_of_branching_points_volumePeripheryD_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,4000])
set(gca,'FontSize',18)
xlabel('number of branching points per volume','Fontsize',20)
title('Periphery Dobosz','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsVolumeIntervalsDobosz.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsVolumeIntervalsDobosz.pdf'];


set(h22,'Units','Inches');
pos = get(h22,'Position');
set(h22,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h22,image_title2,'-dpdf','-r0')

saveas(h22,image_title1)

% number of branching points Volume C versus P 

h33 = figure
set(gcf, 'Units', 'Normalize', 'OuterPosition', [0 0 1 1]);
subplot(1,2,1)
y1 = median_number_of_branching_points_volumeCore_controls;
err1_1 = median_number_of_branching_points_volumeCore_controls-q1_number_of_branching_points_volumeCore_controls;
err1_2 = q2_number_of_branching_points_volumeCore_controls-median_number_of_branching_points_volumeCore_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_points_volumeCore_treated;
err2_1 = median_number_of_branching_points_volumeCore_treated-q1_number_of_branching_points_volumeCore_treated;
err2_2 = q2_number_of_branching_points_volumeCore_treated-median_number_of_branching_points_volumeCore_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,8000])
set(gca,'FontSize',18)
xlabel('Number of days since treatment','Fontsize',20)
title('Core','Fontsize',25)
ylabel('Number of branching points per volume','Fontsize',20)
sgtitle(supertitle,'Fontsize',25,'fontweight','bol')
hold on
subplot(1,2,2)
y1 = median_number_of_branching_points_volumePeriphery_controls;
err1_1 = median_number_of_branching_points_volumePeriphery_controls-q1_number_of_branching_points_volumePeriphery_controls;
err1_2 = q2_number_of_branching_points_volumePeriphery_controls-median_number_of_branching_points_volumePeriphery_controls;
e1 = errorbar(x(1:length(y1)),y1,err1_1,err1_2,'LineWidth',2)
e1.Color = 'blue';
hold on
y2 = median_number_of_branching_points_volumePeriphery_treated;
err2_1 = median_number_of_branching_points_volumePeriphery_treated-q1_number_of_branching_points_volumePeriphery_treated;
err2_2 = q2_number_of_branching_points_volumePeriphery_treated-median_number_of_branching_points_volumePeriphery_treated;
e2 = errorbar(x(1:length(y2)),y2,err2_1,err2_2,'LineWidth',2)
e2.Color = 'magenta';
xlim([-1,max(x)+1])
ylim([0,8000])
set(gca,'FontSize',18)
xlabel('number of branching points per volume','Fontsize',20)
title('Periphery','Fontsize',25)
legend(["Controls", "Treated"],'Fontsize',18)

image_title1 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsVolumeIntervals.fig'];
image_title2 = [char(initial_path) '/Betti_Figures/RocheMedianNrOfBranchingPointsVolumeIntervals.pdf'];


set(h33,'Units','Inches');
pos = get(h33,'Position');
set(h33,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h33,image_title2,'-dpdf','-r0')

saveas(h33,image_title1)



