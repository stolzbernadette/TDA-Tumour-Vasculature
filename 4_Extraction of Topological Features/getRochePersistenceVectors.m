function PersistenceVectors = getRochePersistenceVectors(tumour_data_X, number_of_divisions)

    for tumour = 1:numel(tumour_data_X.Name)

        Betti0_starts =  tumour_data_X.Dim0StartsFiltrationMetric{tumour};
        Betti0_ends =  tumour_data_X.Dim0EndsFiltrationMetric{tumour};
        i = find(Betti0_ends~=-1);

        PersistenceVectors{tumour} = Betti0_ends(i)-Betti0_starts(i);

        Betti0_starts = [];
        Betti0_ends = [];
        i = [];


    end
    
end