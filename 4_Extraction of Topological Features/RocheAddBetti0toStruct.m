%% Add Betti0 Information to Roche struct


initial_path = '/Users/user/Desktop/Vasculature Project/Roche Output/';

%initial_path = '/home/stolz/Desktop/Vessel Networks/Roche_Output/';


load([initial_path 'Roche_tumour_data.mat'])

number_of_divisions = 500;

dim0_starts = [];
dim0_ends = [];
dim0_1_starts = [];
dim0_2_starts = [];
dim0_1_ends = [];
dim0_2_ends = [];

% Roche_tumour_data.Controls = rmfield(Roche_tumour_data.Controls,'Dim0StartsDistanceMetric')
% Roche_tumour_data.Controls = rmfield(Roche_tumour_data.Controls,'Dim0EndsDistanceMetric')
% Roche_tumour_data.Controls = rmfield(Roche_tumour_data.Controls,'Dim0StartsFiltrationMetric')
% Roche_tumour_data.Controls = rmfield(Roche_tumour_data.Controls,'Dim0EndsFiltrationMetric')
% 
% Roche_tumour_data.Treated = rmfield(Roche_tumour_data.Treated,'Dim0StartsDistanceMetric')
% Roche_tumour_data.Treated = rmfield(Roche_tumour_data.Treated,'Dim0EndsDistanceMetric')
% Roche_tumour_data.Treated = rmfield(Roche_tumour_data.Treated,'Dim0StartsFiltrationMetric')
% Roche_tumour_data.Treated = rmfield(Roche_tumour_data.Treated,'Dim0EndsFiltrationMetric')


for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    control

    filename7 = [char(initial_path) char(Roche_tumour_data.Controls.Folders{control}) 'BarcodeDim0.txt' ];
    filename2 = [char(initial_path) char(Roche_tumour_data.Controls.Folders{control}) 'BarcodeDim0_Quarter.txt' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim0_1.txt' ];
    filename3 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim0_2.txt' ];
    
    filename4 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim0_Quarter_1.txt' ];
    filename6 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim0_Quarter_2.txt' ];
    

    
    if exist(filename7) == 2

        dim0 = load(filename7);


        Roche_tumour_data.Controls.Dim0StartsDistanceMetric{control} = dim0(:,1);
        Roche_tumour_data.Controls.Dim0EndsDistanceMetric{control} = dim0(:,2);
        
        filtration_end_distance_to_center =  Roche_tumour_data.Controls.MaximalRadius{control};
       
        starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
        starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

        Roche_tumour_data.Controls.Dim0StartsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,1);
        Roche_tumour_data.Controls.Dim0EndsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,2);

    
    elseif exist(filename2) == 2
        
        dim0 = load(filename2);


        Roche_tumour_data.Controls.Dim0StartsDistanceMetric{control} = dim0(:,1);
        Roche_tumour_data.Controls.Dim0EndsDistanceMetric{control} = dim0(:,2);
       

        filtration_end_distance_to_center =  Roche_tumour_data.Controls.MaximalRadius{control};
       
        starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
        starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

        Roche_tumour_data.Controls.Dim0StartsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,1);
        Roche_tumour_data.Controls.Dim0EndsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,2);


        starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
        starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

        Roche_tumour_data.Controls.Dim0StartsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,1);
        Roche_tumour_data.Controls.Dim0EndsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,2);

        
    else
        
        if exist(filename1) == 2

            dim0_1 = load(filename1);

            dim0_1_starts = dim0_1(:,1);
            dim0_1_ends = dim0_1(:,2);

        elseif exist(filename4) == 2

            dim0_1 = load(filename4);

            dim0_1_starts = dim0_1(:,1);
            dim0_1_ends = dim0_1(:,2);

        end

        if exist(filename3) == 2

            dim0_2 = load(filename3);

            dim0_2_starts = dim0_2(:,1);
            dim0_2_ends = dim0_2(:,2);

        elseif exist(filename6) == 2

            dim0_2 = load(filename6);

            dim0_2_starts = dim0_2(:,1);
            dim0_2_ends = dim0_2(:,2);

        end
        
        if (isempty(dim0_1_starts) ~= 1 && isempty(dim0_2_starts) ~= 1)

            dim0_starts = [dim0_1_starts;dim0_2_starts];
            dim0_ends = [dim0_1_ends;dim0_2_ends];

            dim0 = [dim0_starts,dim0_ends];

            Roche_tumour_data.Controls.Dim0StartsDistanceMetric{control} = dim0_starts;
            Roche_tumour_data.Controls.Dim0EndsDistanceMetric{control} = dim0_ends;

            filtration_end_distance_to_center =  Roche_tumour_data.Controls.MaximalRadius{control};

            starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
            starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

            if isempty(starts_and_ends_dim0_filtration_metric) == 0

                Roche_tumour_data.Controls.Dim0StartsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,1);
                Roche_tumour_data.Controls.Dim0EndsFiltrationMetric{control} = starts_and_ends_dim0_filtration_metric(:,2);

            else

                Roche_tumour_data.Controls.Dim0StartsFiltrationMetric{control} = [];
                Roche_tumour_data.Controls.Dim0EndsFiltrationMetric{control} = [];

            end
            
        else
            
            Roche_tumour_data.Controls.Dim0StartsFiltrationMetric{control} = [];
            Roche_tumour_data.Controls.Dim0EndsFiltrationMetric{control} = [];
            Roche_tumour_data.Controls.Dim0StartsDistanceMetric{control} = [];
            Roche_tumour_data.Controls.Dim0EndsDistanceMetric{control} = [];
            
        end

    end
    
    clear dim0
    dim0_starts = [];
    dim0_ends = [];
    dim0_1_starts = [];
    dim0_2_starts = [];
    dim0_1_ends = [];
    dim0_2_ends = [];
    
end


for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    treated

    filename7 = [char(initial_path) char(Roche_tumour_data.Treated.Folders{treated}) 'BarcodeDim0.txt' ];
    filename2 = [char(initial_path) char(Roche_tumour_data.Treated.Folders{treated}) 'BarcodeDim0_Quarter.txt' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim0_1.txt' ];
    filename3 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim0_2.txt' ];
    
    filename4 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim0_Quarter_1.txt' ];
    filename6 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim0_Quarter_2.txt' ];
    

    
    if exist(filename7) == 2

        dim0 = load(filename7);


        Roche_tumour_data.Treated.Dim0StartsDistanceMetric{treated} = dim0(:,1);
        Roche_tumour_data.Treated.Dim0EndsDistanceMetric{treated} = dim0(:,2);
        
        filtration_end_distance_to_center =  Roche_tumour_data.Treated.MaximalRadius{treated};
       
        starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
        starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

        Roche_tumour_data.Treated.Dim0StartsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,1);
        Roche_tumour_data.Treated.Dim0EndsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,2);

    
    elseif exist(filename2) == 2
        
        dim0 = load(filename2);


        Roche_tumour_data.Treated.Dim0StartsDistanceMetric{treated} = dim0(:,1);
        Roche_tumour_data.Treated.Dim0EndsDistanceMetric{treated} = dim0(:,2);
        
        filtration_end_distance_to_center =  Roche_tumour_data.Treated.MaximalRadius{treated};
       
        starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
        starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

        Roche_tumour_data.Treated.Dim0StartsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,1);
        Roche_tumour_data.Treated.Dim0EndsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,2);


        starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
        starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

        Roche_tumour_data.Treated.Dim0StartsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,1);
        Roche_tumour_data.Treated.Dim0EndsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,2);

        
         else
        
            if exist(filename1) == 2
                
                dim0_1 = load(filename1);

                dim0_1_starts = dim0_1(:,1);
                dim0_1_ends = dim0_1(:,2);

            elseif exist(filename4) == 2
                
                dim0_1 = load(filename4);

                dim0_1_starts = dim0_1(:,1);
                dim0_1_ends = dim0_1(:,2);

            end

            if exist(filename3) == 2

                dim0_2 = load(filename3);

                dim0_2_starts = dim0_2(:,1);
                dim0_2_ends = dim0_2(:,2);
                
            elseif exist(filename6) == 2

                dim0_2 = load(filename6);

                dim0_2_starts = dim0_2(:,1);
                dim0_2_ends = dim0_2(:,2);

            end
            
            if isempty(dim0_1_starts) ~= 1 && isempty(dim0_2_starts) ~= 1

                dim0_starts = [dim0_1_starts;dim0_2_starts];
                dim0_ends = [dim0_1_ends;dim0_2_ends];

                dim0 = [dim0_starts,dim0_ends];

                Roche_tumour_data.Treated.Dim0StartsDistanceMetric{treated} = dim0_starts;
                Roche_tumour_data.Treated.Dim0EndsDistanceMetric{treated} = dim0_ends;

                filtration_end_distance_to_center =  Roche_tumour_data.Treated.MaximalRadius{treated};

                starts_and_ends_dim0_filtration_metric = round(dim0*number_of_divisions/filtration_end_distance_to_center);
                starts_and_ends_dim0_filtration_metric(starts_and_ends_dim0_filtration_metric == 0) = number_of_divisions;

                if isempty(starts_and_ends_dim0_filtration_metric) == 0

                    Roche_tumour_data.Treated.Dim0StartsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,1);
                    Roche_tumour_data.Treated.Dim0EndsFiltrationMetric{treated} = starts_and_ends_dim0_filtration_metric(:,2);

                else

                    Roche_tumour_data.Treated.Dim0StartsFiltrationMetric{treated} = [];
                    Roche_tumour_data.Treated.Dim0EndsFiltrationMetric{treated} = [];

                end
                
                    else
            
            Roche_tumour_data.Treated.Dim0StartsFiltrationMetric{treated} = [];
            Roche_tumour_data.Treated.Dim0EndsFiltrationMetric{treated} = [];
            Roche_tumour_data.Treated.Dim0StartsDistanceMetric{treated} = [];
            Roche_tumour_data.Treated.Dim0EndsDistanceMetric{treated} = [];
            
        end

    end
    
    clear dim0
    dim0_starts = [];
    dim0_ends = [];
    dim0_1_starts = [];
    dim0_2_starts = [];
    dim0_1_ends = [];
    dim0_2_ends = [];
    
end

save([initial_path 'Roche_tumour_data.mat'],'Roche_tumour_data')


sprintf('Done!')