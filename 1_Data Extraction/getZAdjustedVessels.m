% We reformat the Vessel data to accomodate the resolution difference in
% the z direction

% 1.5.19



z_factor = 5/0.83;




initial_path = '/home/stolz/Desktop/Vessel Networks/unet-test-master/Data Bostjan Output/Skeleton Output/';

%initial_path = '/users/user/Desktop/Vasculature Project/Skeleton Output/';

%initial_path = '/Users/bernadettestolz/Desktop/Vasculature Project/Skeleton Output/';

categories = ["Control", "Control", "Control", "Control", "Control", ...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control", "Control", "Control",...
    "Control", "Control", "Control",...
    "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated",...
    "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated",...
    "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated",...
    "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated",...
    "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated",...
    "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated", "DC101 treated","DC101 treated", "DC101 treated", ...
    "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", ...
    "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", ...
    "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", "Anti-Dll4 treated", ...
    "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation",...
    "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation",...
    "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation",...
    "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation",...
    "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation",...
    "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation", "Single dose irradiation"];
    
tumours = ["18_4E","18_4E","18_4E","18_4E","18_4E",...
    "18_4I","18_4I","18_4I","18_4I","18_4I","18_4I","18_4I",...
    "24_2C", "24_2C", "24_2C", "24_2C","24_2C",...
    "29_1B_MC38", "29_1B_MC38", "29_1B_MC38", "29_1B_MC38", "29_1B_MC38", "29_1B_MC38","29_1B_MC38", ...
    "34_2A_MC38", "34_2A_MC38", "34_2A_MC38", "34_2A_MC38", "34_2A_MC38", "34_2A_MC38", "34_2A_MC38", "34_2A_MC38", ...
    "VEOM 18_2C", "VEOM 18_2C", "VEOM 18_2C", "VEOM 18_2C", "VEOM 18_2C", "VEOM 18_2C", ...
    "33_2I_MC38_DC101", "33_2I_MC38_DC101", "33_2I_MC38_DC101", "33_2I_MC38_DC101", "33_2I_MC38_DC101", "33_2I_MC38_DC101", "33_2I_MC38_DC101", "33_2I_MC38_DC101", "33_2I_MC38_DC101",...
    "51_2C_MC38_DC101", "51_2C_MC38_DC101", "51_2C_MC38_DC101", "51_2C_MC38_DC101", "51_2C_MC38_DC101", "51_2C_MC38_DC101","51_2C_MC38_DC101",  ...
    "51_3A_MC38_DC101", "51_3A_MC38_DC101", "51_3A_MC38_DC101", "51_3A_MC38_DC101", "51_3A_MC38_DC101", ...
    "52_2F_MC38_DC101", "52_2F_MC38_DC101", "52_2F_MC38_DC101", "52_2F_MC38_DC101", "52_2F_MC38_DC101", "52_2F_MC38_DC101", ...
    "54_2D_MC38_DC101", "54_2D_MC38_DC101", "54_2D_MC38_DC101", "54_2D_MC38_DC101", "54_2D_MC38_DC101", ...
    "18_4F_DLL4", "18_4F_DLL4", "18_4F_DLL4", "18_4F_DLL4", "18_4F_DLL4", "18_4F_DLL4", ...
    "24_2A_DLL4", "24_2A_DLL4", "24_2A_DLL4", "24_2A_DLL4", "24_2A_DLL4", ...
    "29_2D_MC38_DLL4", "29_2D_MC38_DLL4", "29_2D_MC38_DLL4", "29_2D_MC38_DLL4", "29_2D_MC38_DLL4", "29_2D_MC38_DLL4", ...
    "18_2D_IR", "18_2D_IR", "18_2D_IR", "18_2D_IR", "18_2D_IR", "18_2D_IR", "18_2D_IR", ...
    "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", "24_2B_IR", ...
    "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR", "33_2B_IR"];
    
       
    
days = ["14", "15", "16", "17", "18",...
    "9", "10", "11", "12", "13", "14", "15",...
    "13", "14", "15", "16", "17",...
    "10", "11", "12", "13", "14", "15", "16",...
    "9", "10", "11", "12", "13", "14","15","16",...
    "12", "13", "14", "15","16","17",...
    "11", "12", "13", "14", "15","16","17","18", "19",...
    "18", "19", "20", "14","15", "16","17",...
    "14", "15","16","17", "13",...
    "13", "14", "15","16","17","18",...
    "15","16","17","18", "19",...
    "9", "10", "11", "12", "13", "14",...
    "10", "11", "12", "13", "14",...
    "10", "11", "12", "13", "14", "15",...
    "9","10", "11", "12", "13", "14", "15",...
    "8", "9", "10", "11", "12", "13", "14", "15","16","17","18",...
    "9", "10", "11", "12", "13", "14", "15","16","17","18","19", "20"];

    
file_ids = ["18_4E_Day_14", "18_4E_Day_15", "18_4E_Day_16", ...
"18_4E_Day_17", "18_4E_Day_18", ...
"18_4I_Day_9", "18_4I_Day_10", "18_4I_Day_11", "18_4I_Day_12", "18_4I_Day_13", "18_4I_Day_14", "18_4I_Day_15",...
"24_2C_Day_13", "24_2C_Day_14", "24_2C_Day_15", "24_2C_Day_16", "24_2C_Day_17",...
"29_1B_Day_10", "29_1B_Day_11", "29_1B_Day_12", "29_1B_Day_13", "29_1B_Day_14","29_1B_Day_15","29_1B_Day_16",...
"34_2A_Day_9", "34_2A_Day_10", "34_2A_Day_11", "34_2A_Day_12", "34_2A_Day_13", "34_2A_Day_14","34_2A_Day_15", "34_2A_Day_16",...
"18_2C_Day_12", "18_2C_Day_13", "18_2C_Day_14", "18_2C_Day_15", "18_2C_Day_16", "18_2C_Day_17",...
"MC38_33_2I_Day_11", "MC38_33_2I_Day_12", "MC38_33_2I_Day_13", "MC38_33_2I_Day_14", "MC38_33_2I_Day_15", "MC38_33_2I_Day_16", "MC38_33_2I_Day_17", "MC38_33_2I_Day_18", "MC38_33_2I_Day_19", ...
"MC38_51_2C_Day_18", "MC38_51_2C_Day_19", "MC38_51_2C_Day_20", "MC38_51_2C_Day_14_", "MC38_51_2C_Day_15","MC38_51_2C_Day_16", "MC38_51_2C_Day_17", ...
"MC38_51_3A_Day_14", "MC38_51_3A_Day_15", "MC38_51_3A_Day_16", "MC38_51_3A_Day_17", "MC38_51_3A_Day_13", ...
"MC38_52_2F_Day_13", "MC38_52_2F_Day_14_", "MC38_52_2F_Day_15", "MC38_52_2F_Day_16", "MC38_52_2F_Day_17", "MC38_52_2F_Day_18",...
"MC38_52_4D_Day_15", "MC38_52_4D_Day_16", "MC38_52_4D_Day_17","MC38_52_4D_Day_18", "MC38_52_4D_Day_19", ...
"18_4F_Day_9", "18_4F_Day_10", "18_4F_Day_11", "18_4F_Day_12","18_4F_Day_13", "18_4F_Day_14",...
"24_2A_Day_10", "24_2A_Day_11", "24_2A_Day_12","24_2A_Day_13", "24_2A_Day_14",...
"MC38_29_2D_Day_10", "MC38_29_2D_Day_11", "MC38_29_2D_Day_12","MC38_29_2D_Day_13", "MC38_29_2D_Day_14", "MC38_29_2D_Day_15",...
"18_2D_Day_9_", "18_2D_Day_10","18_2D_Day_11", "18_2D_Day_12", "18_2D_Day_13", "18_2D_Day_14", "18_2D_Day_15",...
"24_2B_Day_8", "24_2B_Day_9", "24_2B_Day_10", "24_2B_Day_11", "24_2B_Day_12", "24_2B_Day_13", "24_2B_Day_14", "24_2B_Day_15", "24_2B_Day_16", "24_2B_Day_17", "24_2B_Day_18",...
"33_2B_Day_9", "33_2B_Day_10 ", "33_2B_Day_11", "33_2B_Day_12", "33_2B_Day_13", "33_2B_Day_14", "33_2B_Day_15", "33_2B_Day_16", "33_2B_Day_17", "33_2B_Day_18", "33_2B_Day_19", "33_2B_Day_20"];



folders = ["Ctrl/18_4E/18_4E_Day 14/", "Ctrl/18_4E/18_4E_Day 15/", "Ctrl/18_4E/18_4E_Day 16/", ...
"Ctrl/18_4E/18_4E_Day 17/", "Ctrl/18_4E/18_4E_Day 18/","Ctrl/18_4I/18_4I_Day 9/", ...
"Ctrl/18_4I/18_4I_Day 10/", "Ctrl/18_4I/18_4I_Day 11/", "Ctrl/18_4I/18_4I_Day 12/", ...
"Ctrl/18_4I/18_4I_Day 13/", "Ctrl/18_4I/18_4I_Day 14/", "Ctrl/18_4I/18_4I_Day 15/", ...
"Ctrl/24_2C/24_2C_Day 13/", "Ctrl/24_2C/24_2C_Day 14/", "Ctrl/24_2C/24_2C_Day 15/", ...
"Ctrl/24_2C/24_2C_Day 16/", "Ctrl/24_2C/24_2C_Day 17/","Ctrl/29_1B_MC38/29_1B_Day 10/", ...
"Ctrl/29_1B_MC38/29_1B_Day 11/", "Ctrl/29_1B_MC38/29_1B_Day 12/", "Ctrl/29_1B_MC38/29_1B_Day 13/", ...
"Ctrl/29_1B_MC38/29_1B_Day 14/", "Ctrl/29_1B_MC38/29_1B_Day 15/", "Ctrl/29_1B_MC38/29_1B_Day 16/", ...
"Ctrl/34_2A_MC38/Outputs/34_2A_Day 9/", "Ctrl/34_2A_MC38/Outputs/34_2A_Day 10/", ...
"Ctrl/34_2A_MC38/Outputs/34_2A_Day 11/", "Ctrl/34_2A_MC38/Outputs/34_2A_Day 12/", ...
"Ctrl/34_2A_MC38/Outputs/34_2A_Day 13_Stitch/", "Ctrl/34_2A_MC38/Outputs/34_2A_Day 14_Stitch/", ...
"Ctrl/34_2A_MC38/Outputs/34_2A_Day 15_Stitch/", "Ctrl/34_2A_MC38/Outputs/34_2A_Day 16_Stitch/", ...
"Ctrl/VEOM 18_2C/Outputs/18_2C_Day 12/", "Ctrl/VEOM 18_2C/Outputs/18_2C_Day 13/", ...
"Ctrl/VEOM 18_2C/Outputs/18_2C_Day 14/", "Ctrl/VEOM 18_2C/Outputs/18_2C_Day 15/", ...
"Ctrl/VEOM 18_2C/Outputs/18_2C_Day 16/", "Ctrl/VEOM 18_2C/Outputs/18_2C_Day 17/", ...
"DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 11/", "DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 12_Stitch/", ...
"DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 13_Stitch/", "DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 14_Stitch/", ...
"DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 15_Stitch/", "DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 16_Stitch/", ...
"DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 17_Stitch/", "DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 18_Stitch/", ...
"DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 19_Stitch/", "DC101/51_2C_MC38_DC101/Outputs/51_2C_day 18_Stitch/", ...
"DC101/51_2C_MC38_DC101/Outputs/51_2C_day 19_Stitch/", "DC101/51_2C_MC38_DC101/Outputs/51_2C_day 20_Stitch/", ...
"DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 14_DC101/", "DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 15/", ...
"DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 16_Stitch/", "DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 17_DC101_Stitch/",...
"DC101/51_3A_MC38_DC101/Outputs/51_3A_day 14_Stitch/", "DC101/51_3A_MC38_DC101/Outputs/51_3A_day 15_Stitch/", ...
"DC101/51_3A_MC38_DC101/Outputs/51_3A_day 16_Stitch/", "DC101/51_3A_MC38_DC101/Outputs/51_3A_day 17_Stitch/", ...
"DC101/51_3A_MC38_DC101/Outputs/51_3A_Day 13_DC101_Stitch/", "DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 13/", ...
"DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 14_DC101/", "DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 15_Stitch/", ...
"DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 16_Stitch/", "DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 17_DC101_Stitch/", ...
"DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 18_Stitch/", "DC101/54_2D_MC38_DC101/Outputs/52_4D_day 15_DC101_Stitch/", ...
"DC101/54_2D_MC38_DC101/Outputs/52_4D_day 16_stitch/", "DC101/54_2D_MC38_DC101/Outputs/52_4D_day 17_stitch/", ...
"DC101/54_2D_MC38_DC101/Outputs/52_4D_day 18_DC101_stitch/", "DC101/54_2D_MC38_DC101/Outputs/52_4D_day 19_stitch/", ...
"Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 9/", "Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 10/", ...
"Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 11/", "Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 12/", ...
"Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 13/", "Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 14/", ...
"Dll4/24_2A_DLL4/Outputs/24_2A_Day 10/", "Dll4/24_2A_DLL4/Outputs/24_2A_Day 11/", ...
"Dll4/24_2A_DLL4/Outputs/24_2A_Day 12/","Dll4/24_2A_DLL4/Outputs/24_2A_Day 13/", "Dll4/24_2A_DLL4/Outputs/24_2A_Day 14/","Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 10_Dll4_1/", ...
"Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 11_Dll4_2/", "Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 12_Dll4_3/", ...
"Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 13_Dll4_4/", "Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 14_Dll4_5/", ...
"Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 15_Dll4_6/","IR/18_2D_IR/18_2D_Day 9_IR/", "IR/18_2D_IR/18_2D_Day 10/", ...
"IR/18_2D_IR/18_2D_Day 11/", "IR/18_2D_IR/18_2D_Day 12/", "IR/18_2D_IR/18_2D_Day 13/", "IR/18_2D_IR/18_2D_Day 14/", ...
"IR/18_2D_IR/18_2D_Day 15/","IR/24_2B_IR/24_2B_Day 8/", "IR/24_2B_IR/24_2B_Day 9_IR_1/", "IR/24_2B_IR/24_2B_Day 10_IR_2/", ...
"IR/24_2B_IR/24_2B_Day 11_IR_3/", "IR/24_2B_IR/24_2B_Day 12_IR_4/", "IR/24_2B_IR/24_2B_Day 13_IR_5/", ...
"IR/24_2B_IR/24_2B_Day 14_IR_6/", "IR/24_2B_IR/24_2B_Day 15_IR_7/", "IR/24_2B_IR/24_2B_Day 16_IR_8/", ...
"IR/24_2B_IR/24_2B_Day 17_IR_09/", "IR/24_2B_IR/24_2B_Day 18_IR_10/", "IR/33_2B_IR/33_2B_Day 9/", ...
"IR/33_2B_IR/33_2B_Day 10 IR/", "IR/33_2B_IR/33_2B_Day 11_IR 1/", "IR/33_2B_IR/33_2B_Day 12_IR 2/", ...
"IR/33_2B_IR/33_2B_Day 13_IR 3_Stitch/", "IR/33_2B_IR/33_2B_Day 14_IR 4_Stitch/", ...
"IR/33_2B_IR/33_2B_Day 15_IR 5_Stitch/", "IR/33_2B_IR/33_2B_Day 16_IR 6_Stitch/", ...
"IR/33_2B_IR/33_2B_Day 17_IR 7_Stitch/", "IR/33_2B_IR/33_2B_Day 18_IR 8/", "IR/33_2B_IR/33_2B_Day 19_IR 9/", ...
"IR/33_2B_IR/33_2B_Day 20_IR 10/"];



for data_file_number = 1:length(tumours)
    
    category = categories(data_file_number);
    tumour = tumours(data_file_number);
    day = days(data_file_number);
    file_id = file_ids(data_file_number);
    
    folder = folders(data_file_number)
    
    output_path = [char(initial_path) char(folder)];

    vessel_file_path = [char(initial_path) char(folder) 'Vessels.mat'];
    
    load(vessel_file_path);
    
    N_vessels = length(Vessels);
    
    
    
    for vessel = 1:N_vessels
        
        for branch = 1:length(Vessels{vessel}.Branch)
            
            ZVessels{vessel}.Branch{branch}(:,1:2) = Vessels{vessel}.Branch{branch}(:,1:2);
            ZVessels{vessel}.Branch{branch}(:,3) = z_factor*Vessels{vessel}.Branch{branch}(:,3);
            
        end
        
    end
    
    sprintf(['Done with folder' char(folder)])
    
    save([output_path 'ZVessels.mat'],'ZVessels')
    
    clear Vessels
    clear ZVessels


    
end