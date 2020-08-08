import matplotlib as mpl
mpl.use('Agg')
from unet_core import vessel_analysis_unmod
import nibabel as nib
import networkx as nx
from scipy.io import savemat
import numpy as np
from scipy.sparse import csr_matrix
import os
import numpy
from getData import getSkeletonVesselData, getSkeletonVesselDataComponents, getSkeletonVesselData_DiametersClrAndLenghts

#initial_path = '/home/stolz/Desktop/Vessel Networks/unet-test-master/Data Bostjan Output/Skeleton Output';

initial_path = '/scratch/stolz/Summer17_Dataset_RT_AntiAngio'

#initial_path = '/mi/share/scratch/Stolz/Summer17_Dataset_RT_AntiAngio'

#'Ctrl/18_4E/18_4E_Day 14', 'Ctrl/18_4E/18_4E_Day 15', 'Ctrl/18_4E/18_4E_Day 16', \
#'Ctrl/18_4E/18_4E_Day 17', 'Ctrl/18_4E/18_4E_Day 18', 'Ctrl/18_4I/18_4I_Day 9', \
#'Ctrl/18_4I/18_4I_Day 10', 'Ctrl/18_4I/18_4I_Day 11', 'Ctrl/18_4I/18_4I_Day 12', \
#'Ctrl/18_4I/18_4I_Day 13', 'Ctrl/18_4I/18_4I_Day 14', 'Ctrl/18_4I/18_4I_Day 15', \
#'Ctrl/24_2C/24_2C_Day 13', 'Ctrl/24_2C/24_2C_Day 14', 'Ctrl/24_2C/24_2C_Day 15', \
#'Ctrl/24_2C/24_2C_Day 16', 'Ctrl/24_2C/24_2C_Day 17', 'Ctrl/29_1B_MC38/29_1B_Day 10', \
#'Ctrl/29_1B_MC38/29_1B_Day 11', 'Ctrl/29_1B_MC38/29_1B_Day 12', 'Ctrl/29_1B_MC38/29_1B_Day 13', \
#'Ctrl/29_1B_MC38/29_1B_Day 14',

folders = ['Ctrl/29_1B_MC38/29_1B_Day 15', 'Ctrl/29_1B_MC38/29_1B_Day 16', \
'Ctrl/34_2A_MC38/Outputs/34_2A_Day 9', 'Ctrl/34_2A_MC38/Outputs/34_2A_Day 10', \
'Ctrl/34_2A_MC38/Outputs/34_2A_Day 11', 'Ctrl/34_2A_MC38/Outputs/34_2A_Day 12', \
'Ctrl/34_2A_MC38/Outputs/34_2A_Day 13_Stitch', 'Ctrl/34_2A_MC38/Outputs/34_2A_Day 14_Stitch', \
'Ctrl/34_2A_MC38/Outputs/34_2A_Day 15_Stitch', 'Ctrl/34_2A_MC38/Outputs/34_2A_Day 16_Stitch', \
'Ctrl/VEOM 18_2C/Outputs/18_2C_Day 12', 'Ctrl/VEOM 18_2C/Outputs/18_2C_Day 13', \
'Ctrl/VEOM 18_2C/Outputs/18_2C_Day 14', 'Ctrl/VEOM 18_2C/Outputs/18_2C_Day 15', \
'Ctrl/VEOM 18_2C/Outputs/18_2C_Day 16', 'Ctrl/VEOM 18_2C/Outputs/18_2C_Day 17', \
'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 11', 'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 12_Stitch', \
'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 13_Stitch', 'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 14_Stitch', \
'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 15_Stitch', 'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 16_Stitch', \
'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 17_Stitch', 'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 18_Stitch', \
'DC101/33_2I_MC38_DC101/Outputs/33_2I_Day 19_Stitch', 'DC101/51_2C_MC38_DC101/Outputs/51_2C_day 18_Stitch', \
'DC101/51_2C_MC38_DC101/Outputs/51_2C_day 19_Stitch', 'DC101/51_2C_MC38_DC101/Outputs/51_2C_day 20_Stitch', \
'DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 14_DC101', 'DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 15', \
'DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 16_Stitch', 'DC101/51_2C_MC38_DC101/Outputs/51_2C_Day 17_DC101_Stitch',\
'DC101/51_3A_MC38_DC101/Outputs/51_3A_day 14_Stitch', 'DC101/51_3A_MC38_DC101/Outputs/51_3A_day 15_Stitch', \
'DC101/51_3A_MC38_DC101/Outputs/51_3A_day 16_Stitch', 'DC101/51_3A_MC38_DC101/Outputs/51_3A_day 17_Stitch', \
'DC101/51_3A_MC38_DC101/Outputs/51_3A_Day 13_DC101_Stitch', 'DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 13', \
'DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 14_DC101', 'DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 15_Stitch', \
'DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 16_Stitch', 'DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 17_DC101_Stitch', \
'DC101/52_2F_MC38_DC101/Outputs/52_2F_Day 18_Stitch', 'DC101/54_2D_MC38_DC101/Outputs/52_4D_day 15_DC101_Stitch', \
'DC101/54_2D_MC38_DC101/Outputs/52_4D_day 16_stitch', 'DC101/54_2D_MC38_DC101/Outputs/52_4D_day 17_stitch', \
'DC101/54_2D_MC38_DC101/Outputs/52_4D_day 18_DC101_stitch', 'DC101/54_2D_MC38_DC101/Outputs/52_4D_day 19_stitch', \
'Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 9', 'Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 10', \
'Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 11', 'Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 12', \
'Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 13', 'Dll4/18_4F_DLL4/Outputs_new_model/18_4F_Day 14', \
'Dll4/24_2A_DLL4/Outputs/24_2A_Day 10', 'Dll4/24_2A_DLL4/Outputs/24_2A_Day 11', \
'Dll4/24_2A_DLL4/Outputs/24_2A_Day 12', 'Dll4/24_2A_DLL4/Outputs/24_2A_Day 13', \
'Dll4/24_2A_DLL4/Outputs/24_2A_Day 14', 'Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 10_Dll4_1', \
'Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 11_Dll4_2', 'Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 12_Dll4_3', \
'Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 13_Dll4_4', 'Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 14_Dll4_5', \
'Dll4/29_2D_MC38_DLL4/Outputs/29_2D_Day 15_Dll4_6','IR/18_2D_IR/18_2D_Day 9_IR', 'IR/18_2D_IR/18_2D_Day 10', \
'IR/18_2D_IR/18_2D_Day 11', 'IR/18_2D_IR/18_2D_Day 12', 'IR/18_2D_IR/18_2D_Day 13', 'IR/18_2D_IR/18_2D_Day 14', \
'IR/18_2D_IR/18_2D_Day 15','IR/18_3A_IR/18_3A_Day 10', 'IR/18_3A_IR/18_3A_Day 11', 'IR/18_3A_IR/18_3A_Day 12', \
'IR/18_3A_IR/18_3A_Day 13', 'IR/18_3A_IR/18_3A_Day 14', 'IR/18_3A_IR/18_3A_Day 15', 'IR/18_3A_IR/18_3A_Day 16', \
'IR/18_3A_IR/18_3A_Day 17','IR/18_4C_IR/18_4C_Day 10_IR', 'IR/18_4C_IR/18_4C_Day 11_IR_1', \
'IR/18_4C_IR/18_4C_Day 12_IR_2', 'IR/18_4C_IR/18_4C_Day 13_IR_3', 'IR/18_4C_IR/18_4C_Day 14_IR_4', \
'IR/18_4C_IR/18_4C_Day 15_IR_5', 'IR/18_4C_IR/18_4C_Day 16_IR_6', 'IR/18_4C_IR/18_4C_Day 17_IR_7', \
'IR/18_4C_IR/18_4C_Day 18_IR_8', 'IR/18_4C_IR/18_4C_Day 19_IR_9', 'IR/18_4C_IR/18_4C_Day 20_IR_10', \
'IR/24_2B_IR/24_2B_Day 8', 'IR/24_2B_IR/24_2B_Day 9_IR_1', 'IR/24_2B_IR/24_2B_Day 10_IR_2', \
'IR/24_2B_IR/24_2B_Day 11_IR_3', 'IR/24_2B_IR/24_2B_Day 12_IR_4', 'IR/24_2B_IR/24_2B_Day 13_IR_5', \
'IR/24_2B_IR/24_2B_Day 14_IR_6', 'IR/24_2B_IR/24_2B_Day 15_IR_7', 'IR/24_2B_IR/24_2B_Day 16_IR_8', \
'IR/24_2B_IR/24_2B_Day 17_IR_09', 'IR/24_2B_IR/24_2B_Day 18_IR_10', 'IR/33_2B_IR/33_2B_Day 9', \
'IR/33_2B_IR/33_2B_Day 10 IR', 'IR/33_2B_IR/33_2B_Day 11_IR 1', 'IR/33_2B_IR/33_2B_Day 12_IR 2', \
'IR/33_2B_IR/33_2B_Day 13_IR 3_Stitch', 'IR/33_2B_IR/33_2B_Day 14_IR 4_Stitch', \
'IR/33_2B_IR/33_2B_Day 15_IR 5_Stitch', 'IR/33_2B_IR/33_2B_Day 16_IR 6_Stitch', \
'IR/33_2B_IR/33_2B_Day 17_IR 7_Stitch', 'IR/33_2B_IR/33_2B_Day 18_IR 8', 'IR/33_2B_IR/33_2B_Day 19_IR 9', \
'IR/33_2B_IR/33_2B_Day 20_IR 10', 'Ctrl/60_2A_MC38/Outputs/60_2A_Day 10', 'Ctrl/60_2A_MC38/Outputs/60_2A_Day 11', 'Ctrl/60_2A_MC38/Outputs/60_2A_Day 12', \
'Ctrl/60_2A_MC38/Outputs/60_2A_Day 13', 'Ctrl/60_2A_MC38/Outputs/60_2A_Day 14', \
'IR/18_3A_IR/18_3A_Day 10', 'IR/18_3A_IR/18_3A_Day 11', 'IR/18_3A_IR/18_3A_Day 12', 'IR/18_3A_IR/18_3A_Day 13', \
'IR/18_3A_IR/18_3A_Day 14', 'IR/18_3A_IR/18_3A_Day 15', 'IR/18_3A_IR/18_3A_Day 16', 'IR/18_3A_IR/18_3A_Day 17', \
'IR/18_4C_IR/18_4C_Day 10_IR', 'IR/18_4C_IR/18_4C_Day 11_IR_1', 'IR/18_4C_IR/18_4C_Day 12_IR_2', 'IR/18_4C_IR/18_4C_Day 13_IR_3', \
'IR/18_4C_IR/18_4C_Day 14_IR_4', 'IR/18_4C_IR/18_4C_Day 15_IR_5', 'IR/18_4C_IR/18_4C_Day 16_IR_6', 'IR/18_4C_IR/18_4C_Day 17_IR_7', \
'IR/18_4C_IR/18_4C_Day 18_IR_8', 'IR/18_4C_IR/18_4C_Day 19_IR_9', 'IR/18_4C_IR/18_4C_Day 20_IR_10', \
'IR/35_2C_IR/Outputs/35_2C_Day 12_Stitch', 'IR/35_2C_IR/Outputs/35_2C_Day 13_IR 1_Stitch', \
'IR/35_2C_IR/Outputs/35_2C_Day 14_IR 2_Stitch', 'IR/35_2C_IR/Outputs/35_2C_Day 15_IR 3_Stitch', \
'IR/35_2C_IR/Outputs/35_2C_Day 16_IR 4_Stitch', 'IR/35_2C_IR/Outputs/35_2C_Day 17_IR 5_Stitch', \
'IR/35_2C_IR/Outputs/35_2C_Day 18_IR 6_Stitch', 'IR/35_2C_IR/Outputs/35_2C_Day 19_IR 7_Stitch', \
'IR/35_2C_IR/Outputs/35_2C_Day 20_IR 8_Stitch', 'IR/35_2C_IR/Outputs/35_2C_Day 21_IR 9_Stitch', \
'IR/47_1I_IR/Outputs/47_1I_Day 11_IR 1', 'IR/47_1I_IR/Outputs/47_1I_Day 12_IR 2', 'IR/47_1I_IR/Outputs/47_1I_Day 13_IR 3', \
'IR/47_1I_IR/Outputs/47_1I_Day 14_IR 4_Stitch', 'IR/47_1I_IR/Outputs/47_1I_Day 15_IR 5_Stitch', 'IR/47_1I_IR/Outputs/47_1I_Day 16_IR 6_Stitch', \
'IR/47_1I_IR/Outputs/47_1I_Day 17_IR 7_Stitch', 'IR/47_1I_IR/Outputs/47_1I_Day 18_IR 8_Stitch', 'IR/47_1I_IR/Outputs/47_1I_Day 19_IR 9_Stitch', \
'IR/47_1I_IR/Outputs/47_1I_Day 20_IR 10_Stitch', \
'FIR/60_1C_FIR/Outputs/60_1C_Day 10', 'FIR/60_1C_FIR/Outputs/60_1C_Day 11', 'FIR/60_1C_FIR/Outputs/60_1C_Day 12', \
'FIR/60_1C_FIR/Outputs/60_1C_Day 13', 'FIR/60_1C_FIR/Outputs/60_1C_Day 14', 'FIR/60_1C_FIR/Outputs/60_1C_Day 15', \
'FIR/60_1C_FIR/Outputs/60_1C_Day 16', 'FIR/60_1C_FIR/Outputs/60_1C_Day 17', 'FIR/60_1C_FIR/Outputs/60_1C_Day 18', \
'FIR/60_1C_FIR/Outputs/60_1C_Day 19', 'FIR/60_1C_FIR/Outputs/60_1C_Day 20', 'FIR/60_1C_FIR/Outputs/60_1C_Day 21', \
'FIR/60_1C_FIR/Outputs/60_1C_Day 22', \
'FIR/60_1E_FIR/Outputs/60_1E_Day 11', 'FIR/60_1E_FIR/Outputs/60_1E_Day 12', 'FIR/60_1E_FIR/Outputs/60_1E_Day 13', \
'FIR/60_1E_FIR/Outputs/60_1E_Day 14', 'FIR/60_1E_FIR/Outputs/60_1E_Day 15', 'FIR/60_1E_FIR/Outputs/60_1E_Day 16', \
'FIR/60_1E_FIR/Outputs/60_1E_Day 17', 'FIR/60_1E_FIR/Outputs/60_1E_Day 18', 'FIR/60_1E_FIR/Outputs/60_1E_Day 19', \
'FIR/63_3A_FIR/Outputs/63_3A_Day 10', 'FIR/63_3A_FIR/Outputs/63_3A_Day 11', 'FIR/63_3A_FIR/Outputs/63_3A_Day 12', \
'FIR/63_3A_FIR/Outputs/63_3A_Day 13', 'FIR/63_3A_FIR/Outputs/63_3A_Day 14', 'FIR/63_3A_FIR/Outputs/63_3A_Day 15', \
'FIR/63_3A_FIR/Outputs/63_3A_Day 16', 'FIR/63_3A_FIR/Outputs/63_3A_Day 17', 'FIR/63_3A_FIR/Outputs/63_3A_Day 18', \
'FIR/63_3A_FIR/Outputs/63_3A_Day 19', 'FIR/63_3A_FIR/Outputs/63_3A_Day 20', 'FIR/63_3A_FIR/Outputs/63_3A_Day 21', \
'FIR/63_3C_FIR/Outputs/63_3C_Day 11', 'FIR/63_3C_FIR/Outputs/63_3C_Day 12', 'FIR/63_3C_FIR/Outputs/63_3C_Day 13', \
'FIR/63_3C_FIR/Outputs/63_3C_Day 14', 'FIR/63_3C_FIR/Outputs/63_3C_Day 15', 'FIR/63_3C_FIR/Outputs/63_3C_Day 16', \
'FIR/63_3C_FIR/Outputs/63_3C_Day 17', 'FIR/63_3C_FIR/Outputs/63_3C_Day 18', 'FIR/63_3C_FIR/Outputs/63_3C_Day 19', \
'FIR/63_3C_FIR/Outputs/63_3C_Day 20']

for img_name in folders:
	skeleton_path = initial_path + img_name + '/analysis_analysis/skeleton.pkl'
	img_path = initial_path + img_name + '/analysis_analysis/other/refined_segmentation.nii'
	getSkeletonVesselData_DiametersClrAndLenghts(skeleton_path, img_path, img_name)
