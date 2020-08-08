% We add the maximal distance to the tumour center to the Betti struct
% Bernadette Stolz
% 22.8.2019


initial_path = '/home/stolz/Desktop/Vessel Networks/Roche_Output/';

load([initial_path 'Roche_tumour_data.mat'])

%% Controls

for control = 1:numel(Roche_tumour_data.Controls.Name)

    folder = Roche_tumour_data.Controls.Folders{control};
    
    
    vessel_file_path = [char(initial_path) char(folder) 'Vessels.mat'];
    
    load(vessel_file_path);
    
    N_vessels = length(Vessels);

    [VesselBranchingPoints,VesselNonBranchingPoints] = ...
        constructVesselPointCloudHalfPoints(vessel_file_path);
 
    VesselPointCloud = [VesselBranchingPoints;VesselNonBranchingPoints];
    
     % We define a tumour center

    center_of_mass = [sum(VesselPointCloud(:,1))/size(VesselPointCloud,1),...
    	sum(VesselPointCloud(:,2))/size(VesselPointCloud,1),...
        sum(VesselPointCloud(:,3))/size(VesselPointCloud,1)];

     % We look at the distances of all points to the center point and rank them
    % in order

    Distance_matrix_squared = DistanceMatrix2Point_clouds(VesselPointCloud,center_of_mass);

    Distances_to_center = sqrt(Distance_matrix_squared);

    [sorted_Distances_to_center,index_in_Vessel_Point_cloud] = sort(Distances_to_center);

    filtration_end_distance_to_center = max(max(sorted_Distances_to_center))+1;
    
    Roche_tumour_data.Controls.MaximalRadius{control} = filtration_end_distance_to_center;
    
           
end
        

%% Treated

for treated = 1:numel(Roche_tumour_data.Treated.Name)

    folder = Roche_tumour_data.Treated.Folders{treated};
    
    
    vessel_file_path = [char(initial_path) char(folder) 'Vessels.mat'];
    
    load(vessel_file_path);
    
    N_vessels = length(Vessels);

    [VesselBranchingPoints,VesselNonBranchingPoints] = ...
        constructVesselPointCloudHalfPoints(vessel_file_path);
 
    VesselPointCloud = [VesselBranchingPoints;VesselNonBranchingPoints];
    
     % We define a tumour center

    center_of_mass = [sum(VesselPointCloud(:,1))/size(VesselPointCloud,1),...
    	sum(VesselPointCloud(:,2))/size(VesselPointCloud,1),...
        sum(VesselPointCloud(:,3))/size(VesselPointCloud,1)];

     % We look at the distances of all points to the center point and rank them
    % in order

    Distance_matrix_squared = DistanceMatrix2Point_clouds(VesselPointCloud,center_of_mass);

    Distances_to_center = sqrt(Distance_matrix_squared);

    [sorted_Distances_to_center,index_in_Vessel_Point_cloud] = sort(Distances_to_center);

    filtration_end_distance_to_center = max(max(sorted_Distances_to_center))+1;
    
    Roche_tumour_data.Treated.MaximalRadius{treated} = filtration_end_distance_to_center;
    
           
end

save([initial_path 'Roche_tumour_data.mat'],'Roche_tumour_data')