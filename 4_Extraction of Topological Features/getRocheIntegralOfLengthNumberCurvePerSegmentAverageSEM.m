function [mean_integral, SEM_integral] = ...
    getRocheIntegralOfLengthNumberCurvePerSegmentAverageSEM(PersistenceVector_cell_array,data_cell_array_days,number_of_segments)

    days = [1,3,7,14];

    for day_nr = 1:4
        
        day = days(day_nr);
        
        integrals{day_nr} = [];
        normalised_integrals{day_nr} = [];
        
        a = 1:numel(data_cell_array_days);
        
        tumours = a(data_cell_array_days == day);
        
        number_of_tumours(day_nr) = length(tumours);

        for tumour = tumours


            if isempty(PersistenceVector_cell_array{tumour}) ~=1
                
               max_value = max(PersistenceVector_cell_array{tumour});
                h = histogram(PersistenceVector_cell_array{tumour},[1:max_value]);
                distribution = h.Values;
                
                %change here for different percentage

                integral = sum(distribution(1:min(50,max_value-1)))/number_of_segments(tumour);
                


                integrals{day_nr} = [integrals{day_nr},integral];

            end
            
            clear distribution
            clear h
            clear max_value

        end
        
        mean_integral(day_nr) = mean(integrals{day_nr});
        SEM_integral(day_nr) = std(integrals{day_nr})./sqrt(number_of_tumours(day_nr));
       
    end
    
end