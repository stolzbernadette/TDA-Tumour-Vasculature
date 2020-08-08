%% Blood vessel point cloud construction function
% This code extracts a point cloud based on the 3D coordinates of the
% branch points
% nodes = branching points + uniformally at random sampeled additional n
% points
% 2.11.2019

function [VesselBranchingPoints,Nr_of_Segments] = getBranchingPointsAndNrOfSegments(filename)
    
    load(filename)

    N_vessels = length(Vessels);
    
    %N_vessels = length(ZVessels);
    
    VesselBranchingPoints = [];
    
    Nr_of_Segments = 0;
    
    % We first extract branching points
    
    for vessel = 1:N_vessels
        
%         for branch = 1:length(Vessels{vessel}.Branch) 
%             if isempty(Vessels{vessel}.Branch{branch}) == 0
%                 VesselBranchingPoints = [VesselBranchingPoints;Vessels{vessel}.Branch{branch}(1,:)];
%                 VesselBranchingPoints = [VesselBranchingPoints;Vessels{vessel}.Branch{branch}(end,:)];
%                 
%                 Nr_of_Segments = Nr_of_Segments + 1;
%             end
%         end
        for branch = 1:length(ZVessels{vessel}.Branch) 
            if isempty(ZVessels{vessel}.Branch{branch}) == 0
                VesselBranchingPoints = [VesselBranchingPoints;ZVessels{vessel}.Branch{branch}(1,:)];
                VesselBranchingPoints = [VesselBranchingPoints;ZVessels{vessel}.Branch{branch}(end,:)];
                
                Nr_of_Segments = Nr_of_Segments + 1;
            end
        end        

    end

end