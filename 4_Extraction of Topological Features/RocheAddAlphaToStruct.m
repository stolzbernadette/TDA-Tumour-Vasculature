%%

initial_path = '/Users/user/Desktop/Vasculature Project/Roche Output/';
load([initial_path 'Roche_tumour_data.mat'])

%% Controls

for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    filename = [char(initial_path) 'output/Control_' char(Roche_tumour_data.Controls.Name{control}) '_' num2str(Roche_tumour_data.Controls.Day(control)) '_dim2.txt' ];

    if exist(filename) == 2

        alpha = load(filename);

        Roche_tumour_data.Controls.Alpha2Starts{control} = alpha(:,1);

        Roche_tumour_data.Controls.Alpha2Ends{control} = alpha(:,2);

        clear alpha

    end
                
end
        
%% Treated        
       
for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    filename = [char(initial_path) 'output/treated_' char(Roche_tumour_data.Treated.Name{treated}) '_' num2str(Roche_tumour_data.Treated.Day(treated)) '_dim2.txt' ];

    if exist(filename) == 2

        alpha = load(filename);

        Roche_tumour_data.Treated.Alpha2Starts{treated} = alpha(:,1);

        Roche_tumour_data.Treated.Alpha2Ends{treated} = alpha(:,2);

        clear alpha

    end
    
                
end


%% Voids Summary

for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    persistence = Roche_tumour_data.Controls.Alpha2Ends{control} - Roche_tumour_data.Controls.Alpha2Starts{control};
    
    Roche_tumour_data.Controls.Voids{control} = median(persistence(persistence>0));
    %Roche_tumour_data.Controls.Voids{control} = median(persistence);
    
    clear persistence
         
end

for treated = 1:numel(Roche_tumour_data.Treated.Name)

    persistence = Roche_tumour_data.Treated.Alpha2Ends{treated} - Roche_tumour_data.Treated.Alpha2Starts{treated};

    Roche_tumour_data.Treated.Voids{treated} = median(persistence(persistence>0));
    
   % Roche_tumour_data.Treated.Voids{treated} = median(persistence);
    clear persistence
    
end


save([initial_path 'Roche_tumour_data.mat'],'Roche_tumour_data')



