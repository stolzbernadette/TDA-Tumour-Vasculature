%% Roche include Segment numbers etc in struct
% Bernadette Stolz
% 3.11.2019

initial_path = '/Users/user/Desktop/Vasculature Project/Roche Output/';

load([initial_path 'Roche_tumour_data.mat'])

number_of_divisions = 500;


for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Controls.Folders{control}) 'Nr_of_Segments.txt' ];
    load(filename);
    
    Roche_tumour_data.Controls.NumberOfSegments{control} = Nr_of_Segments;
    
    
    filename2 = [char(initial_path) char(Roche_tumour_data.Controls.Folders{control}) 'Nr_ofBranchingPoints.txt' ];
    load(filename2);
    
    Roche_tumour_data.Controls.NumberOfBranchingPoints{control} = Nr_ofBranchingPoints;
    
    
    filename3 = [char(initial_path) char(Roche_tumour_data.Controls.Folders{control}) 'Segment_distances.txt' ];
    load(filename3);
    
    Roche_tumour_data.Controls.SegmentDistances{control} = Segment_distances;
    
    filename4 = [char(initial_path) char(Roche_tumour_data.Controls.Folders{control}) 'sorted_Distances_to_center_BranchPoints.txt' ];
    load(filename4);
    
    Roche_tumour_data.Controls.BranchPointDistances{control} = sorted_Distances_to_center_BranchPoints;
     
    clear filename
    clear filename2
    clear filename3
    clear filename4
    clear Nr_of_Segments
    clear Nr_ofBranchingPoints
    clear Segment_distances
    clear sorted_Distances_to_center_BranchPoints
    
end

for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Treated.Folders{treated}) 'Nr_of_Segments.txt' ];
    load(filename);
    
    Roche_tumour_data.Treated.NumberOfSegments{treated} = Nr_of_Segments;
    
    
    filename2 = [char(initial_path) char(Roche_tumour_data.Treated.Folders{treated}) 'Nr_ofBranchingPoints.txt' ];
    load(filename2);
    
    Roche_tumour_data.Treated.NumberOfBranchingPoints{treated} = Nr_ofBranchingPoints;
    
    
    filename3 = [char(initial_path) char(Roche_tumour_data.Treated.Folders{treated}) 'Segment_distances.txt' ];
    load(filename3);
    
    Roche_tumour_data.Treated.SegmentDistances{treated} = Segment_distances;
    
    filename4 = [char(initial_path) char(Roche_tumour_data.Treated.Folders{treated}) 'sorted_Distances_to_center_BranchPoints.txt' ];
    load(filename4);
    
    Roche_tumour_data.Treated.BranchPointDistances{treated} = sorted_Distances_to_center_BranchPoints;
     
    clear filename
    clear filename2
    clear filename3
    clear filename4
    clear filename
    clear filename2
    clear filename3
    clear filename4
    clear Nr_of_Segments
    clear Nr_ofBranchingPoints
    clear Segment_distances
    clear sorted_Distances_to_center_BranchPoints
end



for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    tumour_volume = Roche_tumour_data.Controls.TrueVolumes{control};
    
    %R_true = nthroot(3*tumour_volume/(4*pi),3);
    R = Roche_tumour_data.Controls.MaximalRadius{control};
    
    R_core_Dobosz = 0.8*R;
    R_core = 0.5*R;
    
%     tumour_volume_core_Dobosz = 4*pi*R_core_Dobosz^3/3;
%     tumour_volume_core = 4*pi*R_core^3/3;

    tumour_volume_core_Dobosz = Roche_tumour_data.Controls.TrueVolumesCoreDobosz{control};
    tumour_volume_core = Roche_tumour_data.Controls.TrueVolumesCore{control};
    
    tumour_volume_periphery_Dobosz = Roche_tumour_data.Controls.TrueVolumesPeripheryDobosz{control};
    tumour_volume_periphery = Roche_tumour_data.Controls.TrueVolumesPeriphery{control};
    
    % Segments Dobosz

    Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz{control} = sum(Roche_tumour_data.Controls.SegmentDistances{control} > R_core_Dobosz);
    Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz{control} = Roche_tumour_data.Controls.NumberOfSegments{control} - Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz{control};
    
    Roche_tumour_data.Controls.NumberOfSegmentsVolumePeripheryDobosz{control} = Roche_tumour_data.Controls.NumberOfSegmentsPeripheryDobosz{control}/tumour_volume_periphery_Dobosz;
    Roche_tumour_data.Controls.NumberOfSegmentsVolumeCoreDobosz{control} = Roche_tumour_data.Controls.NumberOfSegmentsCoreDobosz{control}/tumour_volume_core_Dobosz;
    
    Roche_tumour_data.Controls.NumberOfSegmentsVolume{control} = Roche_tumour_data.Controls.NumberOfSegments{control}/tumour_volume;
    
    % Branching Points Dobosz
    
    Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} > R_core_Dobosz);
    Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} <= R_core_Dobosz);
    
    Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeripheryDobosz{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsPeripheryDobosz{control}/tumour_volume_periphery_Dobosz;
    Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCoreDobosz{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsCoreDobosz{control}/tumour_volume_core_Dobosz;
    
    Roche_tumour_data.Controls.NumberOfBranchingPointsVolume{control} = Roche_tumour_data.Controls.NumberOfBranchingPoints{control}/tumour_volume;
    
    %Segments us
    
    Roche_tumour_data.Controls.NumberOfSegmentsPeriphery{control} = sum(Roche_tumour_data.Controls.SegmentDistances{control} > R_core);
    Roche_tumour_data.Controls.NumberOfSegmentsCore{control} = Roche_tumour_data.Controls.NumberOfSegments{control} - Roche_tumour_data.Controls.NumberOfSegmentsPeriphery{control};
    
    Roche_tumour_data.Controls.NumberOfSegmentsVolumePeriphery{control} = Roche_tumour_data.Controls.NumberOfSegmentsPeriphery{control}/tumour_volume_periphery;
    Roche_tumour_data.Controls.NumberOfSegmentsVolumeCore{control} = Roche_tumour_data.Controls.NumberOfSegmentsCore{control}/tumour_volume_core;
    
    %Branching Points us
    
    Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} > R_core);
    Roche_tumour_data.Controls.NumberOfBranchingPointsCore{control} = sum(Roche_tumour_data.Controls.BranchPointDistances{control} <= R_core);
    
    Roche_tumour_data.Controls.NumberOfBranchingPointsVolumePeriphery{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsPeriphery{control}/tumour_volume_periphery;
    Roche_tumour_data.Controls.NumberOfBranchingPointsVolumeCore{control} = Roche_tumour_data.Controls.NumberOfBranchingPointsCore{control}/tumour_volume_core;
    
    
end

for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    tumour_volume = Roche_tumour_data.Treated.TrueVolumes{treated};
    
    %R = Roche_tumour_data.Controls.MaximalRadius{control};
    
     R = nthroot(3*tumour_volume/(4*pi),3);
    
    R_core_Dobosz = 0.8*R;
    R_core = 0.5*R;

%     tumour_volume_core_Dobosz = 4*pi*R_core_Dobosz^3/3;
%     tumour_volume_core = 4*pi*R_core^3/3;

    tumour_volume_core_Dobosz = Roche_tumour_data.Treated.TrueVolumesCoreDobosz{treated};
    tumour_volume_core = Roche_tumour_data.Treated.TrueVolumesCore{treated};
    
    tumour_volume_periphery_Dobosz = Roche_tumour_data.Treated.TrueVolumesPeripheryDobosz{treated};
    tumour_volume_periphery = Roche_tumour_data.Treated.TrueVolumesPeriphery{treated};
    
    
    % Segments Dobosz

    Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz{treated} = sum(Roche_tumour_data.Treated.SegmentDistances{treated} > R_core_Dobosz);
    Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz{treated} = Roche_tumour_data.Treated.NumberOfSegments{treated} - Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz{treated};
    
    Roche_tumour_data.Treated.NumberOfSegmentsVolumePeripheryDobosz{treated} = Roche_tumour_data.Treated.NumberOfSegmentsPeripheryDobosz{treated}/tumour_volume_periphery_Dobosz;
    Roche_tumour_data.Treated.NumberOfSegmentsVolumeCoreDobosz{treated} = Roche_tumour_data.Treated.NumberOfSegmentsCoreDobosz{treated}/tumour_volume_core_Dobosz;
    
    Roche_tumour_data.Treated.NumberOfSegmentsVolume{treated} = Roche_tumour_data.Treated.NumberOfSegments{treated}/tumour_volume;
    
    % Branching Points Dobosz
    
    Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} > R_core_Dobosz);
    Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} <= R_core_Dobosz);
    
    Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeripheryDobosz{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsPeripheryDobosz{treated}/tumour_volume_periphery_Dobosz;
    Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCoreDobosz{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsCoreDobosz{treated}/tumour_volume_core_Dobosz;
    
    Roche_tumour_data.Treated.NumberOfBranchingPointsVolume{treated} = Roche_tumour_data.Treated.NumberOfBranchingPoints{treated}/tumour_volume;
    
    %Segments us
    
    Roche_tumour_data.Treated.NumberOfSegmentsPeriphery{treated} = sum(Roche_tumour_data.Treated.SegmentDistances{treated} > R_core);
    Roche_tumour_data.Treated.NumberOfSegmentsCore{treated} = Roche_tumour_data.Treated.NumberOfSegments{treated} - Roche_tumour_data.Treated.NumberOfSegmentsPeriphery{treated};
    
    Roche_tumour_data.Treated.NumberOfSegmentsVolumePeriphery{treated} = Roche_tumour_data.Treated.NumberOfSegmentsPeriphery{treated}/tumour_volume_periphery;
    Roche_tumour_data.Treated.NumberOfSegmentsVolumeCore{treated} = Roche_tumour_data.Treated.NumberOfSegmentsCore{treated}/tumour_volume_core;
    
    %Branching Points us
    
    Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} > R_core);
    Roche_tumour_data.Treated.NumberOfBranchingPointsCore{treated} = sum(Roche_tumour_data.Treated.BranchPointDistances{treated} <= R_core);
    
    Roche_tumour_data.Treated.NumberOfBranchingPointsVolumePeriphery{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsPeriphery{treated}/tumour_volume_periphery;
    Roche_tumour_data.Treated.NumberOfBranchingPointsVolumeCore{treated} = Roche_tumour_data.Treated.NumberOfBranchingPointsCore{treated}/tumour_volume_core;
    
    
end

save([initial_path 'Roche_tumour_data.mat'],'Roche_tumour_data')