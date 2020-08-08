function voids = RocheGetVoidsSummary(initial_path,tumour_data_X, group_str, number_of_divisions)

    for tumour = 1:numel(tumour_data_X.Name)

      

        for day = 1:number_of_usuable_days

            starts =  tumour_data_X.Alpha2Starts{tumour}{day};
            ends =  tumour_data_X.Alpha2Ends{tumour}{day};
            
            if size(starts,1) == size(ends,1)
            
                persistence_values = ends-starts;
                
            else
                
                persistence_values = ends-starts';
                
            end
            
          %  a = min(10,length(persistence_values));
            
            a = max(10,length(persistence_values));
            
            persistence_values = sort(persistence_values,'descend');
            
            %size(persistence_values)
            
            %keyboard

            voids{tumour}(day) = norm(persistence_values(1:a));
            
            clear starts
            clear ends
            clear persistence_values

        end

    end
    
end