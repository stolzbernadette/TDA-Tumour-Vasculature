%% Format Vessels
% This code takes the output files from segmentation codes and
% combines them in one .mat file 
% 
% 20.2.2019
% Bernadette Stolz-Pretzer

folders = ["Treat10-2.14d","Treat10-5.14d","Treat201.1d",...
    "Treat202.1d","Treat203.1d","Treat204.1d",...
    "Treat205.1d","Treat401.3d","Treat402.3d",...
    "Treat403.3d","Treat404.3d","Treat703.7d",...
    "Treat705.7d","Veh101.1d","Veh102.1d",...
    "Veh103.1d","Veh104.1d","Veh105.1d",...
    "Veh301.3d","Veh301.7d","Veh302.3d","Veh302.7d",...
    "Veh303.3d","Veh303.7d","Veh304.3d","Veh304.7d",...
    "Veh305.3d","Veh305.7d","Veh403.14d","Veh404.14d",...
    "Veh405.14d"]

for i = 1:size(folders,2)
    
    component_count = 1;
    branch_count = 1;
    
    filename = ['/scratch/stolz/Roche_Data/Output_Data/Roche_Output/' char(folders(i)) '/Component' num2str(component_count) 'Branch' num2str(branch_count) '.txt'];
   
    output_dir = ['/home/stolz/Desktop/Vessel Networks/Roche_Output/' char(folders(i)) '/'];

    while exist(filename) == 2

        while exist(filename) == 2

            [component_count,branch_count]
        

            Vessels{component_count}.Branch{branch_count} = load(filename);
            
            branch_count = branch_count + 1;

            filename = ['/scratch/stolz/Roche_Data/Output_Data/Roche_Output/' char(folders(i)) '/Component' num2str(component_count) 'Branch' num2str(branch_count) '.txt'];

          

        end

        component_count = component_count + 1;
        branch_count = 1;

        filename = ['/scratch/stolz/Roche_Data/Output_Data/Roche_Output/' char(folders(i)) '/Component' num2str(component_count) 'Branch' num2str(branch_count) '.txt'];


    end


    output = [output_dir 'Vessels.mat'];
    save(output, 'Vessels')
    
    clear Vessels

end