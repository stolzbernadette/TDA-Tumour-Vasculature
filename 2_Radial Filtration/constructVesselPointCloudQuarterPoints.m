%% Blood vessel point cloud construction function
% This code extracts a point cloud based on the 3D coordinates of the
% branch points
% nodes = branching points + uniformally at random sampeled additional n
% points
% 3.10.2018

function [VesselBranchingPoints,VesselNonBranchingPoints] = ...
    constructVesselPointCloudQuarterPoints(filename)
    
    load(filename)

    N_vessels = length(Vessels);
    
    VesselBranchingPoints = [];
    
    % We first extract branching points
    
    for vessel = 1:N_vessels
        
        for branch = 1:length(Vessels{vessel}.Branch) 
            if isempty(Vessels{vessel}.Branch{branch}) == 0
                VesselBranchingPoints = [VesselBranchingPoints;Vessels{vessel}.Branch{branch}(1,:)];
                VesselBranchingPoints = [VesselBranchingPoints;Vessels{vessel}.Branch{branch}(end,:)];
            end
        end
        
    end
    
    VesselBranchingPoints = unique(VesselBranchingPoints,'rows');
    
    
    VesselPointCloud = [];
    
    
    
    for vessel = 1:N_vessels
        
        for branch = 1:length(Vessels{vessel}.Branch)
            
            if isempty(Vessels{vessel}.Branch{branch}) == 0
                for branch_point = 1:size(Vessels{vessel}.Branch{branch},1)

                    if mod(branch_point,4) == 0 || branch_point == size(Vessels{vessel}.Branch{branch},1)
                        VesselPointCloud = [VesselPointCloud;Vessels{vessel}.Branch{branch}(branch_point,:)];
                    end

                end
            end
            
        end
        
    end
    
   
    VesselPointCloud = unique(VesselPointCloud,'rows');
    
    VesselNonBranchingPoints = setdiff(VesselPointCloud,VesselBranchingPoints,'rows');

end