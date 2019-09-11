# LithoGenie

Detailed Wiki coming soon!

HMMs used in this program come from a variety of sources, including TIGRFAMS and Pfam. Twenty-five of the HMMs used here have been created by Karthik Anantharaman (https://github.com/kanantharaman/metabolic-hmms; link to relevant article: https://www.nature.com/articles/ncomms13219#supplementary-information). Some of the HMMs (namely, the ones invovled in iron oxidation and reduction) were designed and calibrated by me.

## Quickstart with conda (The script is ready-to-use and conda should take care of all dependencies)
git clone https://github.com/Arkadiy-Garber/GeoGenie.git

./setup.sh

conda activate genie

LithoGenie.py -h

## Quickstart without conda

git clone https://github.com/Arkadiy-Garber/GeoGenie.git

./setup_noconda.sh

./LithoGenie.py -h

Note: Two additional arguments are required when running the program with the installation without conda: '-hmm_dir' for the location of the HMM directory and '-R' for the location of the directory that contains the R scripts. Both of these should eb present in the master repository for this program.

# Required dependencies if installing without conda

-Prodigal (https://github.com/hyattpd/Prodigal)

-HMMER (http://hmmer.org)

## Optional: installing required R packages using Rscript:

Copy and paste the following commands into your terminal window (these commands may require super user permissions. If you are running LithoGenie on a server where you do not have such permissions, you can use the program without the --make_plots arguments, and it will not make any plots for you.

    Rscript -e 'install.packages("ggplot2", repos = "http://cran.us.r-project.org")'

    Rscript -e 'install.packages("reshape", repos = "http://cran.us.r-project.org")'

    Rscript -e 'install.packages("reshape2", repos = "http://cran.us.r-project.org")'

    Rscript -e 'install.packages("tidyverse", repos = "http://cran.us.r-project.org")'

    Rscript -e 'install.packages("argparse", repos = "http://cran.us.r-project.org")'

    Rscript -e 'install.packages("ggdendro", repos = "http://cran.us.r-project.org")'

    Rscript -e 'install.packages("ggpubr", repos = "http://cran.us.r-project.org")'

    Rscript -e 'install.packages("grid", repos = "http://cran.us.r-project.org")'


## Basic usage

    ./LithoGenie.py -bin_dir /your/bin/directory -bin_ext fa -outdir GeoGenieRun1/ -out projectAnalysis
    
Make sure to include the location of the hmm library used by GeoGenie if you did not configure using the './setup.sh' script:

    ./LithoGenie.py -bin_dir /your/bin/directory -bin_ext faa -outdir geogenie_outdir -out ouputBasename -hmm_dir HMMs/
    
### Example usage if you already ran LithoGenie, and would like to generate new heatmaps and plots for a specific element or class of molecules (in this case, iron):

    ./LithoGenie.py -bin_dir /your/bin/directory -bin_ext faa -outdir geogenie_outdir -out ouputBasename --makeplots y --heat_only y --element iron
    
### or if you are interested in seeing the breakdown of methane oxidation genes:

    ./LithoGenie.py -bin_dir /your/bin/directory -bin_ext faa -outdir geogenie_outdir -out ouputBasename --makeplots y --heat_only y --element methane
    
make sure that you provide all the same parameters and locations that you did when you initially ran the LithoGenie, and it will write the new output files to the same output directory.
    
    
### Example usage of you would like to incorporate read coverage information into the heatmap output (rather than the default gene counts)

    ./LithoGenie.py -bin_dir /your/bin/directory -bin_ext faa -outdir geogenie_outdir -out ouputBasename -hmm_dir HMMs/ -bams MyBamMapFile.txt
    
See 'sample_BAMs_file.txt' that is in the main GeoGenie repository for the format that this file should be in!

### If you have a single metagenome samples from which you binned genomes, you can provide the one BAM file via the '-bam' option:

    ./LithoGenie.py -bin_dir /your/bin/directory -bin_ext faa -outdir geogenie_outdir -out ouputBasename -hmm_dir HMMs/ -bam MyMetagenomeAssembly.sorted.bam





