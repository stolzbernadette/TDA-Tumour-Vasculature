%% Roche include Segment numbers etc in struct
% Bernadette Stolz
% 3.11.2019

initial_path = '/Users/user/Desktop/Vasculature Project/Roche Output/';

load([initial_path 'Roche_tumour_data.mat'])

T = readtable([initial_path 'CompleteStatistics_reduced_matrixform.csv']);

T2 = readtable([initial_path 'CompleteStatistics_reduced.csv']);

number_of_divisions = 500;

treated_names = T2{[3:13,1,2],2};
control_names = T2{[14:31],2};

treated_tumour_volume = T2{[3:13,1,2],3};
treated_tumour_Vital_volume = T2{[3:13,1,2],4};
treated_tumour_necrotic_volume = T2{[3:13,1,2],5};
treated_tumour_nr_of_segments = T2{[3:13,1,2],6};
treated_tumour_nr_of_branching_points = T2{[3:13,1,2],7};
treated_tumour_nr_of_end_points = T2{[3:13,1,2],8};
treated_tumour_volume_coreD = treated_tumour_volume*0.8^3;
treated_tumour_volume_peripheryD = treated_tumour_volume*(1-0.8^3);
treated_tumour_volume_core = treated_tumour_volume*0.5^3;
treated_tumour_volume_periphery = treated_tumour_volume*(1-0.5^3);

control_tumour_volume = T2{[14:31],3};
control_tumour_Vital_volume = T2{[14:31],4};
control_tumour_necrotic_volume = T2{[14:31],5};
control_tumour_nr_of_segments = T2{[14:31],6};
control_tumour_nr_of_branching_points = T2{[14:31],7};
control_tumour_nr_of_end_points = T2{[14:31],8};
control_tumour_volume_coreD = control_tumour_volume*0.8^3;
control_tumour_volume_peripheryD = control_tumour_volume*(1-0.8^3);
control_tumour_volume_core = control_tumour_volume*0.5^3;
control_tumour_volume_periphery = control_tumour_volume*(1-0.5^3);

for control = 1:numel(Roche_tumour_data.Controls.Name)

    Roche_tumour_data.Controls.TrueVolumes{control} = control_tumour_volume(control);
    Roche_tumour_data.Controls.TrueVitalVolumes{control} = control_tumour_Vital_volume(control);
    Roche_tumour_data.Controls.TrueNecroticVolumes{control} = control_tumour_necrotic_volume(control);
    
    Roche_tumour_data.Controls.TrueNumberOfSegments{control} = control_tumour_nr_of_segments(control);
    Roche_tumour_data.Controls.TrueNumberOfBranchingPoints{control} = control_tumour_nr_of_branching_points(control);
    Roche_tumour_data.Controls.TrueNumberOfEndPoints{control} = control_tumour_nr_of_end_points(control);

    Roche_tumour_data.Controls.TrueVolumesCoreDobosz{control} = control_tumour_volume_coreD(control);
    Roche_tumour_data.Controls.TrueVolumesPeripheryDobosz{control} = control_tumour_volume_peripheryD(control);
    Roche_tumour_data.Controls.TrueVolumesCore{control} = control_tumour_volume_core(control);
    Roche_tumour_data.Controls.TrueVolumesPeriphery{control} = control_tumour_volume_periphery(control);
    

end

for treated = 1:numel(Roche_tumour_data.Treated.Name)

    Roche_tumour_data.Treated.TrueVolumes{treated} = treated_tumour_volume(treated);
    Roche_tumour_data.Treated.TrueVitalVolumes{treated} = treated_tumour_Vital_volume(treated);
    Roche_tumour_data.Treated.TrueNecroticVolumes{treated} = treated_tumour_necrotic_volume(treated);
    
    Roche_tumour_data.Treated.TrueNumberOfSegments{treated} = treated_tumour_nr_of_segments(treated);
    Roche_tumour_data.Treated.TrueNumberOfBranchingPoints{treated} = treated_tumour_nr_of_branching_points(treated);
    Roche_tumour_data.Treated.TrueNumberOfEndPoints{treated} = treated_tumour_nr_of_end_points(treated);

    Roche_tumour_data.Treated.TrueVolumesCoreDobosz{treated} = treated_tumour_volume_coreD(treated);
    Roche_tumour_data.Treated.TrueVolumesPeripheryDobosz{treated} = treated_tumour_volume_peripheryD(treated);
    Roche_tumour_data.Treated.TrueVolumesCore{treated} = treated_tumour_volume_core(treated);
    Roche_tumour_data.Treated.TrueVolumesPeriphery{treated} = treated_tumour_volume_periphery(treated);
    

end





for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    % Segments Dobosz

%     Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz{control} = sum(Roche_tumour_data.Controls.SegmentDistances{control} > R_core_Dobosz);
%     Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz{control} = Roche_tumour_data.Controls.NumberOfSegments{control} - Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz{control};
%     
%     Roche_tumour_data.Controls.NumberOfSegmentsVolumePeripheryDobosz{control} = Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz{control}/tumour_volume_periphery_Dobosz;
%     Roche_tumour_data.Controls.NumberOfSegmentsVolumeCoreDobosz{control} = Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz{control}/tumour_volume_core_Dobosz;
    
    Roche_tumour_data.Controls.TrueNumberOfSegmentsVolume{control} = Roche_tumour_data.Controls.TrueNumberOfSegments{control}/Roche_tumour_data.Controls.TrueVolumes{control};
    
    % Branching Points Dobosz
    
%     Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} > R_core_Dobosz);
%     Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} <= R_core_Dobosz);
%     
%     Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeripheryDobosz{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz{control}/tumour_volume_periphery_Dobosz;
%     Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCoreDobosz{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz{control}/tumour_volume_core_Dobosz;
    Roche_tumour_data.Controls.TrueNumberOfBranchingPointsVolume{control} = [];

    Roche_tumour_data.Controls.TrueNumberOfBranchingPointsVolume{control} = Roche_tumour_data.Controls.TrueNumberOfBranchingPoints{control}/Roche_tumour_data.Controls.TrueVolumes{control};
    
%     %Segments us
%     
%     Roche_tumour_data.Controls.NumberOfSegmentsPeriphery{control} = sum(Roche_tumour_data.Controls.SegmentDistances{control} > R_core);
%     Roche_tumour_data.Controls.NumberOfSegmentsCore{control} = Roche_tumour_data.Controls.NumberOfSegments{control} - Roche_tumour_data.Controls.NumberOfSegmentsPeriphery{control};
%     
%     Roche_tumour_data.Controls.NumberOfSegmentsVolumePeriphery{control} = Roche_tumour_data.Controls.NumberOfSegmentsPeriphery{control}/tumour_volume_periphery;
%     Roche_tumour_data.Controls.NumberOfSegmentsVolumeCore{control} = Roche_tumour_data.Controls.NumberOfSegmentsCore{control}/tumour_volume_core;
%     
%     %Branching Points us
%     
%     Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} > R_core);
%     Roche_tumour_data.Controls.NumberOfBranchingPointsCore{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} <= R_core);
%     
%     Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeriphery{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery{control}/tumour_volume_periphery;
%     Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCore{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsCore{control}/tumour_volume_core;
    
    
end

for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    % Segments Dobosz

%     Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz{treated} = sum(Roche_tumour_data.Treated.SegmentDistances{treated} > R_core_Dobosz);
%     Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz{treated} = Roche_tumour_data.Treated.NumberOfSegments{treated} - Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz{treated};
%     
%     Roche_tumour_data.Treated.NumberOfSegmentsVolumePeripheryDobosz{treated} = Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz{treated}/tumour_volume_periphery_Dobosz;
%     Roche_tumour_data.Treated.NumberOfSegmentsVolumeCoreDobosz{treated} = Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz{treated}/tumour_volume_core_Dobosz;
    
    Roche_tumour_data.Treated.TrueNumberOfSegmentsVolume{treated} = Roche_tumour_data.Treated.TrueNumberOfSegments{treated}/Roche_tumour_data.Treated.TrueVolumes{treated};
    
    % Branching Points Dobosz
    
%     Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} > R_core_Dobosz);
%     Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} <= R_core_Dobosz);
%     
%     Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeripheryDobosz{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz{treated}/tumour_volume_periphery_Dobosz;
%     Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCoreDobosz{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz{treated}/tumour_volume_core_Dobosz;
    
     Roche_tumour_data.Treated.TrueNumberOfBranchingPointsVolume{treated} = [];
    Roche_tumour_data.Treated.TrueNumberOfBranchingPointsVolume{treated} = Roche_tumour_data.Treated.TrueNumberOfBranchingPoints{treated}/Roche_tumour_data.Treated.TrueVolumes{treated};
    
%     %Segments us
%     
%     Roche_tumour_data.Treated.NumberOfSegmentsPeriphery{treated} = sum(Roche_tumour_data.Treated.SegmentDistances{treated} > R_core);
%     Roche_tumour_data.Treated.NumberOfSegmentsCore{treated} = Roche_tumour_data.Treated.NumberOfSegments{treated} - Roche_tumour_data.Treated.NumberOfSegmentsPeriphery{treated};
%     
%     Roche_tumour_data.Treated.NumberOfSegmentsVolumePeriphery{treated} = Roche_tumour_data.Treated.NumberOfSegmentsPeriphery{treated}/tumour_volume_periphery;
%     Roche_tumour_data.Treated.NumberOfSegmentsVolumeCore{treated} = Roche_tumour_data.Treated.NumberOfSegmentsCore{treated}/tumour_volume_core;
%     
%     %Branching Points us
%     
%     Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} > R_core);
%     Roche_tumour_data.Treated.NumberOfBranchingPointsCore{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} <= R_core);
%     
%     Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeriphery{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery{treated}/tumour_volume_periphery;
%     Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCore{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsCore{treated}/tumour_volume_core;
    
    
end

cell2mat(Roche_tumour_data.Controls.TrueNumberOfSegments)-cell2mat(Roche_tumour_data.Controls.NumberOfSegments)
cell2mat(Roche_tumour_data.Controls.TrueNumberOfBranchingPoints)-cell2mat(Roche_tumour_data.Controls.NumberOfBranchingPoints)



save([initial_path 'Roche_tumour_data.mat'],'Roche_tumour_data')