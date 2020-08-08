# TDA-Tumour-Vasculature

<h3> Project founder: </h3> Bernadette J. Stolz (for more information, see <a href="https://www.maths.ox.ac.uk/people/bernadette.stolz"> here</a>.)
  
<h3> Description </h3>
  
This repository was created for code used in the manuscript <a href="#TDATumourVasculature">[1]</a>.

<h3> 1_Data Extraction </h3>

This folder contains scripts to reconstruct 3D vascular networks from .nii image stacks (to create .nii files from .tiff stacks use <a href="www.gatsby.ucl.ac.uk/~test/matlabTools.zip"> Matlab toolbox</a> by Sainsbury Wellcome Centre (<a href="https://github.com/SainsburyWellcomeCentre/aMAP/wiki"> documentation </a>). 

Requirements: <a href="https://ibme-gitcvs.eng.ox.ac.uk/RussellB/unet-test"> unet_core</a>

<ul>

<p>
<li>
getUltramicroscopyDataScript.py:
  <ul>

  <p>
  <li> 
  input: .nii files
  <p>
  <li> 
  output: Folder Components with files ComponentXBranchY.txt: List of 3D coordinates along branch Y (on component X) starting and ending with a branching point
    (these are repeated on daughter branches)
  <p>
  <li> 
  Requirements: python3,  networkx version 1.9
  </ul>
  
<p>
<li>
getDataSkeletonParams.py:
  <ul>

  <p>
  <li> 
  input: .nii files
  <p>
  <li> 
  output: Folder Components with files Summary_ComponentZ.txt: List of 3D coordinates of branching point 1, 3D coordinates of branching point 2, branch diameter,
    branch length, sum of angles metric (SOAM), chord-length-ratio (clr) for each branch on the component
  </ul>
    
<p>
<li>
RocheFormatAllVesselsComponentwise.m:
  <ul>

  <p>
  <li> 
  input: ComponentXBranchY.txt files
  <p>
  <li> 
  output: Vessels.mat summary of coordinates ordered by components and branches
  </ul>
    
<p>
<li>
getZAdjustedVessels.m:
  <ul>

  <p>
  <li> 
  input: Vessels.mat
  <p>
  <li> 
  output: ZVessels.mat adjusted coordinates that account for resolution difference in z-direction in intravital data
  </ul>
 
</ul>


<h3> 2_Radial Filtration </h3>

<ul>
    
<p>
<li>
RocheConstructRadialFiltrationParallelFullQuarterPoints.m: Runs radial filtration on
  ultramicroscopy data
  <ul>

  <p>
  <li> 
  input: Vessels.mat files
  <p>
  <li> 
  output: Figures of vessel network points and chosen centre for radial filtration,
  barcodes for dimension 0 and 1 of the radial filtration, Betti curves
  <p>
  <li> 
  Requirements:  <a href="http://appliedtopology.github.io/javaplex/"> javaPlex software</a>
  </ul>
    
<p>
<li>
ConstructRadialFiltrationParallelScript: Runs radial filtration on
  intravital data
  <ul>

  <p>
  <li> 
  input: ZVessels.mat files
  <p>
  <li> 
  output: Figures of vessel network points and chosen centre for radial filtration,
  barcodes for dimension 0 and 1 of the radial filtration, Betti curves
  <p>
  <li> 
  Requirements:  <a href="http://appliedtopology.github.io/javaplex/"> javaPlex software</a>
  </ul>
 
</ul>


<h3> 3_Alpha Complex </h3>

Requirements: <a href="https://gudhi.inria.fr/"> GUDHI</a>

<ul>
<p>
<li>
RocheGUDHI_Format_Parallel.m: Prepares ultramicroscopy data for alpha complex filtration
  <ul>

  <p>
  <li> 
  input: Vessels.mat files
  <p>
  <li> 
  output: .txt files with point cloud input formatted for GUDHI
  </ul>
<p>
<li>
RocheGetAlphaComplexes.m: Runs alpha complex filtration on ultramicroscopy data
  <ul>

  <p>
  <li> 
  input: .txt files with point cloud input formatted for GUDHI
  <p>
  <li> 
  output: barcodes for alpha complex filtration 
  <p>
  <li> 
  uses function gudhi_reformat_output.m from <a href="https://github.com/n-otter/PH-roadmap"> here</a>
  </ul>
    
<p>
<li>
GUDHI_Format_Parallel.m: Prepares intravital data for alpha complex filtration
  <ul>

  <p>
  <li> 
  input: ZVessels.mat files
  <p>
  <li> 
  output: .txt files with point cloud input formatted for GUDHI
  </ul>
  
<p>
<li>
GetAlphaComplexes.m: Runs alpha complex filtration on intravital data
  <ul>

  <p>
  <li> 
  input: .txt files with point cloud input formatted for GUDHI
  <p>
  <li> 
  output: barcodes for alpha complex filtration 
  <p>
  <li> 
  uses function gudhi_reformat_output.m from <a href="https://github.com/n-otter/PH-roadmap"> here</a>
  </ul>
 
</ul>


<h3> 4_Extraction of Topological Features </h3>
This folder contains codes that we use to extract topological descriptors from
the barcodes of the radial filtration and the alpha complex filtration.


<ul>
<p>
<li> 
RocheGetBettiStruct.m: This script creates the file Roche_tumour_data.mat and includes the following information from the H_1 barcodes for each tumour:
  <ul>    
    
  <p>
  <li> 
  Name
  <p>
  <li> 
  Day after initial treatment
  <p>
  <li> 
  Folder name
  <p>
  <li> 
  Betti 1 curve radial filtration
  <p>
  <li> 
  Total number of loops radial filtration
  <p>
  <li> 
  Total number of loops radial filtration
  <p>
  <li> 
  Number of loops in the first 250 filtration steps of the radial filtration (core)
  <p>
  <li> 
  Number of loops in the second 250 filtration steps of the radial filtration (periphery)
  <p>
  <li> 
  Distribution of loops across the filtration steps of the radial filtration
  <p>
  <li> 
  Birth times of loops in the radial filtration with respect to filtration steps
  </ul>
 
<p>
<li> 
RocheGetMaximalRadius.m: This script extracts the following information from the Vessels.mat file of each tumour: Maximal radius used in the radial filtration
    
    
<p>
<li> 
RocheAddBetti0toStruct.m: This script adds information from the H_0 barcodes to the file Roche_tumour_data.mat:
  <ul>
  <p>
  <li>   
  Birth times of connected components with respect to distance to the tumour centre
    <p>
  <li>   
  Death times of connected components with respect to distance to the tumour centre
    <p>
  <li>   
  Birth times of connected components with respect to filtration step
    <p>
  <li>   
  Death times of connected components with respect to filtration step

    
  </ul>
  
<p>
<li> 
RocheDoboszStats.m: This script outputs.txt files with the number of branching points, the distances of branching points to the tumour centre, the number of vessel segments, and the distances of vessel segments to the tumour centre for each tumour.
  
<p>
<li> 
RocheGetDoboszStatsInStruct.m: This script includes the the number of branching points, the distances of branching points to the tumour centre, the number of vessel segments, and the distances of vessel segments to the tumour centre in Roche_tumour_data.mat for each tumour.
It further adds parameters to the file that were not used in our final analysis.
  
<p>
<li> 
RocheGetTrueDoboszStatsInStruct.m: This script includes the parameters analysed by Dobosz et al. 2014 from CompleteStatistics_reduced_matrixform.csv and CompleteStatistics_reduced.csv into Roche_tumour_data.mat for each tumour.
  
<p>
<li> 
RocheAddAlphaToStruct.m: This script adds the birth and death times for H_2 in the alpha complex filtration as well as the median persistence to Roche_tumour_data.mat.
  
<p>
<li> 
RocheGetLoopsAndTortuosityBySegments.m: This script analyses the number of loops and number of short bars per vessel segment.
</ul>

We copied relevant parameters from Roche_tumour_data.mat and the output of RocheGetLoopsAndTortuosityBySegments.m into the files RocheDataForR.csv and RocheLoopsStarts.csv for subsequent analysis in R (located in folder 5_Statistical Analysis of Results).
The intravital data was analysed adapting the above scripts to create the file tumour_data.mat. We copied relevant parameters to MC38Data.csvfor subsequent analysis in R (located in folder 5_Statistical Analysis of Results).


<h3> 5_Statistical Analysis of Results </h3>

This folder contains all statistical analyses performed on the intravital and ultramicroscopy data as well as the .csv files used for the analysis.


<h3> References </h3>
<a name="TDATumourVasculature">[1]</a> Multiscale Topology Characterises Dynamic Tumour Vascular Networks. BJ Stolz, J Kaeppler, B
	Markelc, F Mech, F Lipsmeier, RJ Muschel, HM Byrne, HA Harrington, <i>submitted</i>, 2020.


