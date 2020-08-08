%% Construct radial filtration
% This code constructs a radial filtration based on a blood vessel network point cloud
% We use the connectivity information in the data
% Bernadette Stolz
% 3.10.2018
% We use the numbering within the vessel point cloud to number the vertices
% in the simplicial complex
% Modified for Bostjan's data
% 21.2.2019


clear all
clc

load_javaplex

import edu.stanford.math.plex4.*;

initial_path = '/home/stolz/Desktop/Vessel Networks/Roche_Output/';


categories = ["Control", "Control", "Control", "Control", "Control", ...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control",...
    "Treated","Treated","Treated","Treated",...
    "Treated","Treated","Treated","Treated",...
    "Treated"];
    
tumours = ["101","102",...
    "103","104","105",...
    "301","301","302","302",...
    "303","303","304","304",...
    "305","305","403","404",...
    "405",...
    "201","202","203","204",...
    "401","402",...
    "403","10-2","10-5"];
    
       
    
days = ["1","1",...
    "1","1","1",...
    "3","7","3","7",...
    "3","7","3","7",...
    "3","7","14","14",...
    "14",...
    "1",...
    "1","1","1",...
    "3","3",...
    "3",...
    "14","14"];

    
file_ids = ["Veh101.1d","Veh102.1d",...
    "Veh103.1d","Veh104.1d","Veh105.1d",...
    "Veh301.3d","Veh301.7d","Veh302.3d","Veh302.7d",...
    "Veh303.3d","Veh303.7d","Veh304.3d","Veh304.7d",...
    "Veh305.3d","Veh305.7d","Veh403.14d","Veh404.14d",...
    "Veh405.14d",...
    "Treat201.1d",...
    "Treat202.1d","Treat203.1d","Treat204.1d",...
    "Treat401.3d","Treat402.3d",...
    "Treat403.3d",...
    "Treat10-2.14d","Treat10-5.14d"]


folders = ["Veh101.1d/","Veh102.1d/",...
    "Veh103.1d/","Veh104.1d/","Veh105.1d/",...
    "Veh301.3d/","Veh301.7d/","Veh302.3d/","Veh302.7d/",...
    "Veh303.3d/","Veh303.7d/","Veh304.3d/","Veh304.7d/",...
    "Veh305.3d/","Veh305.7d/","Veh403.14d/","Veh404.14d/",...
    "Veh405.14d/",...
    "Treat201.1d/",...
    "Treat202.1d/","Treat203.1d/","Treat204.1d/",...
    "Treat401.3d/","Treat402.3d/",...
    "Treat403.3d/",...
    "Treat10-2.14d/","Treat10-5.14d/"]


parpool(9)


parfor data_file_number = 1:length(tumours)
    
    category = categories(data_file_number);
    tumour = tumours(data_file_number);
    day = days(data_file_number);
    file_id = file_ids(data_file_number);
    
    folder = folders(data_file_number)
    
    output_path = [char(initial_path) char(folder)];

    number_of_divisions = 500; %We set the number of divisions 
    
   
    [starts_dim0, ends_dim0, starts_dim1, ends_dim1] = getRadialFiltrationParallelRocheFullQuarterPoints(initial_path, folder, category, tumour, day, file_id, output_path, number_of_divisions);

    
    sprintf(['Done with folder ' char(folder)])
    
    starts_dim0 = [];
    ends_dim0 = [];
    starts_dim1 = [];
    ends_dim1 = [];

    
end
