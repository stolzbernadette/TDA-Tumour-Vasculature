function  [Nr_ofBranchingPoints,sorted_Distances_to_center_BranchPoints,...
    Nr_of_Segments,segment_distances] = getNumberOfVesselSegmentsBranchPoints(initial_path, folder, output_path)

    vessel_file_path = [char(initial_path) char(folder) 'Vessels.mat'];
    
    %vessel_file_path ='/users/user/Desktop/Vasculature Project/Skeleton Output/Ctrl/18_4E/18_4E_Day 14/ZVessels.mat'
    
   % vessel_file_path = [char(initial_path) char(folder) 'ZVessels.mat'];
    
    load(vessel_file_path);
    
    N_vessels = length(Vessels);
   % N_vessels = length(ZVessels);

    [VesselBranchingPoints,Nr_of_Segments] = getBranchingPointsAndNrOfSegments(vessel_file_path);
    
    Nr_ofBranchingPoints = size(unique(VesselBranchingPoints,'rows'),1);
    
    segment_vector = reshape(VesselBranchingPoints.',1,[]);
    
    Segments = reshape(segment_vector,6,length(segment_vector)/6)';

    VesselPointCloud = [VesselBranchingPoints];

     % We define a tumour center

    center_of_mass = [sum(VesselPointCloud(:,1))/size(VesselPointCloud,1),...
    	sum(VesselPointCloud(:,2))/size(VesselPointCloud,1),...
        sum(VesselPointCloud(:,3))/size(VesselPointCloud,1)];

     % We look at the distances of all points to the center point and rank them
    % in order

    Distance_matrix_squared_BranchPoints = DistanceMatrix2Point_clouds(unique(VesselBranchingPoints,'rows'),center_of_mass);

    Distances_to_center_BranchPoints = sqrt(Distance_matrix_squared_BranchPoints);

    [sorted_Distances_to_center_BranchPoints,index_in_Vessel_Point_cloud] = sort(Distances_to_center_BranchPoints);

    
    Distance_matrix_squared_Segment_end1 = DistanceMatrix2Point_clouds(Segments(:,1:3),center_of_mass);

    Distances_to_center_Segment_end1 = sqrt(Distance_matrix_squared_Segment_end1);

    
    Distance_matrix_squared_Segment_end2 = DistanceMatrix2Point_clouds(Segments(:,4:6),center_of_mass);

    Distances_to_center_Segment_end2 = sqrt(Distance_matrix_squared_Segment_end2);
    

    concat_segment_distances = [Distances_to_center_Segment_end1,Distances_to_center_Segment_end2];
    
    segment_distances = max(concat_segment_distances,[],2);

    
    
    
    fileID = fopen([output_path 'Nr_ofBranchingPoints.txt'],'w');
    fmt = '%d\n';
    fprintf(fileID,fmt, Nr_ofBranchingPoints');
    fclose(fileID);
    
    fileID = fopen([output_path 'sorted_Distances_to_center_BranchPoints.txt'],'w');
    fmt = '%d\n';
    fprintf(fileID,fmt, sorted_Distances_to_center_BranchPoints');
    fclose(fileID);
    
    fileID = fopen([output_path 'Nr_of_Segments.txt'],'w');
    fmt = '%d\n';
    fprintf(fileID,fmt, Nr_of_Segments');
    fclose(fileID);
    
    fileID = fopen([output_path 'Segment_distances.txt'],'w');
    fmt = '%d\n';
    fprintf(fileID,fmt, segment_distances');
    fclose(fileID);

    
end