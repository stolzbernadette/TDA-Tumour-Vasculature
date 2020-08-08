%% Create struct with Betti number to make plots


initial_path = '/Users/user/Desktop/Vasculature Project/Roche Output/';
load([initial_path 'Roche_tumour_data.mat'])

%% Initial Struct Set up

Roche_tumour_data = struct();

Roche_tumour_data.Treated.Name(1) = "201";
Roche_tumour_data.Treated.Name(2) = "202";
Roche_tumour_data.Treated.Name(3) = "203";
Roche_tumour_data.Treated.Name(4) = "204";
Roche_tumour_data.Treated.Name(5) = "205";
Roche_tumour_data.Treated.Name(6) = "401";
Roche_tumour_data.Treated.Name(7) = "402";
Roche_tumour_data.Treated.Name(8) = "403";
Roche_tumour_data.Treated.Name(9) = "404";
Roche_tumour_data.Treated.Name(10) = "703";
Roche_tumour_data.Treated.Name(11) = "705";
Roche_tumour_data.Treated.Name(12) = "10-2";
Roche_tumour_data.Treated.Name(13) = "10-5";

Roche_tumour_data.Treated.Day(1) = 1;
Roche_tumour_data.Treated.Day(2) = 1;
Roche_tumour_data.Treated.Day(3) = 1;
Roche_tumour_data.Treated.Day(4) = 1;
Roche_tumour_data.Treated.Day(5) = 1;
Roche_tumour_data.Treated.Day(6) = 3;
Roche_tumour_data.Treated.Day(7) = 3;
Roche_tumour_data.Treated.Day(8) = 3;
Roche_tumour_data.Treated.Day(9) = 3;
Roche_tumour_data.Treated.Day(10) = 7;
Roche_tumour_data.Treated.Day(11) = 7;
Roche_tumour_data.Treated.Day(12) = 14;
Roche_tumour_data.Treated.Day(13) = 14;

Roche_tumour_data.Treated.Folders = ["Treat201.1d/",...
    "Treat202.1d/","Treat203.1d/","Treat204.1d/","Treat205.1d/",...
    "Treat401.3d/","Treat402.3d/",...
    "Treat403.3d/","Treat404.3d/","Treat703.7d/","Treat705.7d/",...
    "Treat10-2.14d/","Treat10-5.14d/"];

Roche_tumour_data.Controls.Name(1) = "101";
Roche_tumour_data.Controls.Name(2) = "102";
Roche_tumour_data.Controls.Name(3) = "103";
Roche_tumour_data.Controls.Name(4) = "104";
Roche_tumour_data.Controls.Name(5) = "105";
Roche_tumour_data.Controls.Name(6) = "301";
Roche_tumour_data.Controls.Name(7) = "301";
Roche_tumour_data.Controls.Name(8) = "302";
Roche_tumour_data.Controls.Name(9) = "302";
Roche_tumour_data.Controls.Name(10)= "303";
Roche_tumour_data.Controls.Name(11) = "303";
Roche_tumour_data.Controls.Name(12) = "304";
Roche_tumour_data.Controls.Name(13) = "304";
Roche_tumour_data.Controls.Name(14) = "305";
Roche_tumour_data.Controls.Name(15) = "305";
Roche_tumour_data.Controls.Name(16) = "403";
Roche_tumour_data.Controls.Name(17) = "404";
Roche_tumour_data.Controls.Name(18) = "405";

Roche_tumour_data.Controls.Day(1) = 1;
Roche_tumour_data.Controls.Day(2) = 1;
Roche_tumour_data.Controls.Day(3) = 1;
Roche_tumour_data.Controls.Day(4) = 1;
Roche_tumour_data.Controls.Day(5) = 1;
Roche_tumour_data.Controls.Day(6) = 3;
Roche_tumour_data.Controls.Day(7) = 7;
Roche_tumour_data.Controls.Day(8) = 3;
Roche_tumour_data.Controls.Day(9) = 7;
Roche_tumour_data.Controls.Day(10)= 3;
Roche_tumour_data.Controls.Day(11) = 7;
Roche_tumour_data.Controls.Day(12) = 3;
Roche_tumour_data.Controls.Day(13) = 7;
Roche_tumour_data.Controls.Day(14) = 3;
Roche_tumour_data.Controls.Day(15) = 7;
Roche_tumour_data.Controls.Day(16) = 14;
Roche_tumour_data.Controls.Day(17) = 14;
Roche_tumour_data.Controls.Day(18) = 14;

Roche_tumour_data.Controls.Folders = ["Veh101.1d/","Veh102.1d/",...
    "Veh103.1d/","Veh104.1d/","Veh105.1d/",...
    "Veh301.3d/","Veh301.7d/","Veh302.3d/","Veh302.7d/",...
    "Veh303.3d/","Veh303.7d/","Veh304.3d/","Veh304.7d/",...
    "Veh305.3d/","Veh305.7d/","Veh403.14d/","Veh404.14d/",...
    "Veh405.14d/"]


%% Controls

for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'Betti1.mat' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'Betti1_1.mat' ];

    filename2 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'Betti1_2.mat' ];

    filename3 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'Betti1_Quarter.mat' ];
     
    filename4 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'Betti1_Quarter_1.mat' ];

    filename5 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'Betti1_Quarter_2.mat' ];

    
    Part_1.Betti1 = zeros(1,500);
    Part_2.Betti1 = zeros(1,500);
    Roche_tumour_data.Controls.LoopsCore(control) = 0;
    Roche_tumour_data.Controls.LoopsPeriphery(control) = 0;
    Roche_tumour_data.Controls.LoopsTotal(control) = 0;
    
    if exist(filename) == 2

        load(filename);
        
        Roche_tumour_data.Controls.Betti1{control} = Betti1;
        Roche_tumour_data.Controls.LoopsTotal(control) = Betti1(end);
        Roche_tumour_data.Controls.LoopsCore(control) = Betti1(250);
        Roche_tumour_data.Controls.LoopsPeriphery(control) = Betti1(end)-Betti1(250);
        
        clear Betti1
                
    elseif exist(filename3) == 2
        
        load(filename3);
        
        Roche_tumour_data.Controls.Betti1{control} = Betti1;
        Roche_tumour_data.Controls.LoopsTotal(control) = Betti1(end);
        Roche_tumour_data.Controls.LoopsCore(control) = Betti1(250);
        Roche_tumour_data.Controls.LoopsPeriphery(control) = Betti1(end)-Betti1(250);
        
        clear Betti1
         
    else
        
        if exist(filename1) == 2

            Part_1 = load(filename1);

            Roche_tumour_data.Controls.LoopsCore(control) = Part_1.Betti1(end);
            
        elseif exist(filename4) == 2
            
            Part_1 = load(filename4);

            Roche_tumour_data.Controls.LoopsCore(control) = Part_1.Betti1(end);
        
        end
        
        if exist(filename2) == 2

            Part_2 = load(filename2);

            Roche_tumour_data.Controls.LoopsPeriphery(control) = Part_2.Betti1(end);
            
        elseif exist(filename5) == 2
            
            Part_2 = load(filename5);

            Roche_tumour_data.Controls.LoopsPeriphery(control) = Part_2.Betti1(end);
            
        end
        
        Betti1 = Part_1.Betti1 + Part_2.Betti1;
        Roche_tumour_data.Controls.Betti1{control} = Betti1;
        
        if (exist(filename1) == 2||exist(filename4) == 2) && ...
                (exist(filename2) == 2 || exist(filename5) == 2)
        
            Roche_tumour_data.Controls.LoopsTotal(control) = Betti1(end);
            
        end
        
        
        clear Betti1
        
    end
                
end
        
% Treated        
       
for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'Betti1.mat' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'Betti1_1.mat' ];

    filename2 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'Betti1_2.mat' ];

    filename3 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'Betti1_Quarter.mat' ];
     
    filename4 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'Betti1_Quarter_1.mat' ];

    filename5 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'Betti1_Quarter_2.mat' ];

    
    Part_1.Betti1 = zeros(1,500);
    Part_2.Betti1 = zeros(1,500);
    Roche_tumour_data.Treated.LoopsCore(treated) = 0;
    Roche_tumour_data.Treated.LoopsPeriphery(treated) = 0;
    Roche_tumour_data.Treated.LoopsTotal(treated) = 0;
    
    if exist(filename) == 2

        load(filename);
        
        Roche_tumour_data.Treated.Betti1{treated} = Betti1;
        Roche_tumour_data.Treated.LoopsTotal(treated) = Betti1(end);
        Roche_tumour_data.Treated.LoopsCore(treated) = Betti1(250);
        Roche_tumour_data.Treated.LoopsPeriphery(treated) = Betti1(end)-Betti1(250);
        
        clear Betti1
                
    elseif exist(filename3) == 2
        
        load(filename3);
        
        Roche_tumour_data.Treated.Betti1{treated} = Betti1;
        Roche_tumour_data.Treated.LoopsTotal(treated) = Betti1(end);
        Roche_tumour_data.Treated.LoopsCore(treated) = Betti1(250);
        Roche_tumour_data.Treated.LoopsPeriphery(treated) = Betti1(end)-Betti1(250);
        
        clear Betti1
         
    else
        
        if exist(filename1) == 2

            Part_1 = load(filename1);

            Roche_tumour_data.Treated.LoopsCore(treated) = Part_1.Betti1(end);
            
        elseif exist(filename4) == 2
            
            Part_1 = load(filename4);

            Roche_tumour_data.Treated.LoopsCore(treated) = Part_1.Betti1(end);
        
        end
        
        if exist(filename2) == 2

            Part_2 = load(filename2);

            Roche_tumour_data.Treated.LoopsPeriphery(treated) = Part_2.Betti1(end);
            
        elseif exist(filename5) == 2
            
            Part_2 = load(filename5);

            Roche_tumour_data.Treated.LoopsPeriphery(treated) = Part_2.Betti1(end);
            
        end
        
        Betti1 = Part_1.Betti1 + Part_2.Betti1;
        Roche_tumour_data.Treated.Betti1{treated} = Betti1;
        
        if (exist(filename1) == 2||exist(filename4) == 2) && ...
                (exist(filename2) == 2 || exist(filename5) == 2)
        
            Roche_tumour_data.Treated.LoopsTotal(treated) = Betti1(end);
            
        end
        
        
        clear Betti1
        
    end
                
end
        

%% Get Loop distribution

%% Controls

for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1.txt' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_1.txt' ];

    filename2 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_2.txt' ];

    filename3 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_Quarter.txt' ];
     
    filename4 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_Quarter_1.txt' ];

    filename5 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_Quarter_2.txt' ];


    Part_1_Loops = [];
    Part_2_Loops = [];
    Full_Loops = [];
    
   
    Roche_tumour_data.Controls.LoopsDistribution{control} = [];
    
    if exist(filename) == 2

        Full_Loops = load(filename);
        Loop_starts = Full_Loops(:,1);
        
    elseif exist(filename3) == 2
        
        Full_Loops = load(filename3);
        Loop_starts = Full_Loops(:,1);
           
    else
        
        if exist(filename1) == 2

            Part_1_Loops = load(filename1);
            
        elseif exist(filename4) == 2

            Part_1_Loops = load(filename4);
        
        end
        
        if exist(filename2) == 2

            Part_2_Loops = load(filename2);
            
        elseif exist(filename5) == 2

            Part_2_Loops = load(filename5);
            
        end
        
        Full_Loops = [Part_1_Loops;Part_2_Loops];
        
    end

    if isempty(Full_Loops) == 0
        edges = [0:0.005:1];
        h = histogram(Full_Loops(:,1)/Roche_tumour_data.Controls.MaximalRadius{control},edges);
        loop_distribution = h.Values;

        Roche_tumour_data.Controls.LoopsDistribution{control} = [edges(2:end);loop_distribution];
        
    end

    
                
end
        
%% Treated


for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1.txt' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_1.txt' ];

    filename2 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_2.txt' ];

    filename3 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_Quarter.txt' ];
     
    filename4 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_Quarter_1.txt' ];

    filename5 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_Quarter_2.txt' ];


    Part_1_Loops = [];
    Part_2_Loops = [];
    Full_Loops = [];
    
   
    Roche_tumour_data.Treated.LoopsDistribution{treated} = [];
    
    if exist(filename) == 2

        Full_Loops = load(filename);
        Loop_starts = Full_Loops(:,1);
        
    elseif exist(filename3) == 2
        
        Full_Loops = load(filename3);
        Loop_starts = Full_Loops(:,1);
           
    else
        
        if exist(filename1) == 2

            Part_1_Loops = load(filename1);
            
        elseif exist(filename4) == 2

            Part_1_Loops = load(filename4);
        
        end
        
        if exist(filename2) == 2

            Part_2_Loops = load(filename2);
            
        elseif exist(filename5) == 2

            Part_2_Loops = load(filename5);
            
        end
        
        Full_Loops = [Part_1_Loops;Part_2_Loops];
        
    end

    if isempty(Full_Loops) == 0
        edges = [0:0.005:1];
        h = histogram(Full_Loops(:,1)/Roche_tumour_data.Treated.MaximalRadius{treated},edges);
        loop_distribution = h.Values;

        Roche_tumour_data.Treated.LoopsDistribution{treated} = [edges(2:end);loop_distribution];
        
    end

    
                
end




%% Betti 1 starts (normalised)

%% Controls

for control = 1:numel(Roche_tumour_data.Controls.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1.txt' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_1.txt' ];

    filename2 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_2.txt' ];

    filename3 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_Quarter.txt' ];
     
    filename4 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_Quarter_1.txt' ];

    filename5 = [char(initial_path) char(Roche_tumour_data.Controls.Folders(control)) 'BarcodeDim1_Quarter_2.txt' ];


    Part_1_Loops = [];
    Part_2_Loops = [];
    Full_Loops = [];
    

    if exist(filename) == 2

        Full_Loops = load(filename);
        Loop_starts = Full_Loops(:,1);
        
    elseif exist(filename3) == 2
        
        Full_Loops = load(filename3);
        Loop_starts = Full_Loops(:,1);
           
    else
        
        if exist(filename1) == 2

            Part_1_Loops = load(filename1);
            
        elseif exist(filename4) == 2

            Part_1_Loops = load(filename4);
        
        end
        
        if exist(filename2) == 2

            Part_2_Loops = load(filename2);
            
        elseif exist(filename5) == 2

            Part_2_Loops = load(filename5);
            
        end
        
        Full_Loops = [Part_1_Loops;Part_2_Loops];
        
    end

    if isempty(Full_Loops) == 0

        Roche_tumour_data.Controls.LoopsStartsFiltrationMetric{control} = Full_Loops(:,1)/Roche_tumour_data.Controls.MaximalRadius{control};
        
    end

    
                
end
        
%% Treated


for treated = 1:numel(Roche_tumour_data.Treated.Name)
    
    filename = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1.txt' ];
     
    filename1 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_1.txt' ];

    filename2 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_2.txt' ];

    filename3 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_Quarter.txt' ];
     
    filename4 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_Quarter_1.txt' ];

    filename5 = [char(initial_path) char(Roche_tumour_data.Treated.Folders(treated)) 'BarcodeDim1_Quarter_2.txt' ];


    Part_1_Loops = [];
    Part_2_Loops = [];
    Full_Loops = [];
    
    Roche_tumour_data.Treated.LoopsStartsFiltrationMetric{treated} = [];

    if exist(filename) == 2

        Full_Loops = load(filename);
        Loop_starts = Full_Loops(:,1);
        
    elseif exist(filename3) == 2
        
        Full_Loops = load(filename3);
        Loop_starts = Full_Loops(:,1);
           
    else
        
        if exist(filename1) == 2

            Part_1_Loops = load(filename1);
            
        elseif exist(filename4) == 2

            Part_1_Loops = load(filename4);
        
        end
        
        if exist(filename2) == 2

            Part_2_Loops = load(filename2);
            
        elseif exist(filename5) == 2

            Part_2_Loops = load(filename5);
            
        end
        
        Full_Loops = [Part_1_Loops;Part_2_Loops];
        
    end

    if isempty(Full_Loops) == 0


        Roche_tumour_data.Treated.LoopsStartsFiltrationMetric{treated} = Full_Loops(:,1)/Roche_tumour_data.Treated.MaximalRadius{treated};
        
    end

    
                
end




save([initial_path 'Roche_tumour_data.mat'],'Roche_tumour_data')



