# GeoGenie

Detailed Wiki coming soon!

HMMs used in this program come from a variety of sources, including TIGRFAMS and Pfam. 25 of the HMMs used here have been created by Karthik Anantharaman (https://github.com/kanantharaman/metabolic-hmms). Some of the HMMs were designed and calubrated by your truly specifically for GeoGenie.

## Quickstart with conda
gitMore clone https://github.com/Arkadiy-Garber/GeoGenie.git

./setup.sh

conda activate genie

GeoGenie.py -h

## Quickstart without conda
(2 additional arguments required when running the program with the installation without conda: '-hmm_dir' for the location of the HMM direcotry and '-R' for the location of the directory that contains the R scripts.

git clone https://github.com/Arkadiy-Garber/GeoGenie.git

./setup_noconda.sh

./GeoGenie.py -h

# Required dependencies if installing without conda

-Prodigal (https://github.com/hyattpd/Prodigal)

-HMMER (http://hmmer.org)

## Installing required R packages using Rscript:

Copy and paste the following commands into your terminal window (these commands may require super user permissions to run some of these commands, so if you are running FeGenie off a server where you do not have such permissions, Fegenie may not be able to generate R plot automatically for you)

    Rscript -e 'install.packages(\"ggplot2\", repos = \"http://cran.us.r-project.org\")\'

    Rscript -e 'install.packages(\"reshape\", repos = \"http://cran.us.r-project.org\")\'

    Rscript -e 'install.packages(\"reshape2\", repos = \"http://cran.us.r-project.org\")\'

    Rscript -e 'install.packages(\"tidyverse\", repos = \"http://cran.us.r-project.org\")\'

    Rscript -e 'install.packages(\"argparse\", repos = \"http://cran.us.r-project.org\")\'

    Rscript -e 'install.packages(\"ggdendro\", repos = \"http://cran.us.r-project.org\")\'

    Rscript -e 'install.packages(\"ggpubr\", repos = \"http://cran.us.r-project.org\")\'

    Rscript -e 'install.packages(\"grid\", repos = \"http://cran.us.r-project.org\")\'


## Basic usage

    ./GeoGenie.py -bin_dir /your/bin/directory -bin_ext faa/fasta/txt/... -outdir geogenie_outdir -out ouputBasename
    
Make sure to include the location of the hmm library used by GeoGenie if you did not install with Conda:

    ./GeoGenie.py -bin_dir /your/bin/directory -bin_ext faa -outdir geogenie_outdir -out ouputBasename -hmm_dir HMMs/
    
Example usgae if you already ran geoGenie, but would just like to generate new heatmaps and plots for a specific element or class of molecules (in this case, iron):

    ./GeoGenie.py -bin_dir /your/bin/directory -bin_ext faa -outdir geogenie_outdir -out ouputBasename --makeplots y --heat_only y --element iron

