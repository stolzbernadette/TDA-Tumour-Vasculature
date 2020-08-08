import matplotlib as mpl
mpl.use('Agg')
from unet_core import vessel_analysis_unmodRoche
import nibabel as nib
import networkx as nx
from scipy.io import savemat
import numpy as np
from scipy.sparse import csr_matrix
import os
import numpy
from getData import getVesselDataComponents

# folders = ['Treat10-2.14d','Treat10-5.14d','Treat201.1d',\
#     'Treat202.1d','Treat203.1d','Treat204.1d',\
#     'Treat205.1d','Treat401.3d','Treat402.3d',\
#     'Treat403.3d','Treat404.3d','Treat703.7d',\
#     'Treat705.7d','Veh101.1d','Veh102.1d',\
#     'Veh103.1d','Veh104.1d','Veh105.1d',\
#     'Veh301.3d','Veh301.7d','Veh302.3d','Veh302.7d',\
#     'Veh303.3d','Veh303.7d','Veh304.3d','Veh304.7d',\
#     'Veh305.3d','Veh305.7d','Veh403.14d','Veh404.14d',\
#     'Veh405.14d']

folders = ['Treat205.1d','Treat401.3d','Treat402.3d',\
    'Treat403.3d','Treat404.3d','Treat703.7d',\
    'Treat705.7d','Veh101.1d','Veh102.1d',\
    'Veh103.1d','Veh104.1d','Veh105.1d',\
    'Veh301.3d','Veh301.7d','Veh302.3d','Veh302.7d',\
    'Veh303.3d','Veh303.7d','Veh304.3d','Veh304.7d',\
    'Veh305.3d','Veh305.7d','Veh403.14d','Veh404.14d',\
    'Veh405.14d']


for img_name in folders:
	getVesselDataComponents(img_name)
