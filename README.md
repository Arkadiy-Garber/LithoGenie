# GeoGenie

More detailed Wiki coming soon!

HMMs used in this program come from a variety of sources, including TIGRFAMS and Pfam. 25 of the HMMs used here have been created by Karthik Anantharaman (https://github.com/kanantharaman/metabolic-hmms). Some of the HMMs were designed and calubrated by your truly specifically for GeoGenie.

## Quickstart with conda
git clone https://github.com/Arkadiy-Garber/GeoGenie.git

./setup.sh

./GeoGenie.py -h

## Quickstart without conda
(2 additional arguments required when running the program with the installation without conda: '-hmm_dir' for the location of the HMM direcotry and '-R' for the location of the directory that contains the R scripts.

git clone https://github.com/Arkadiy-Garber/GeoGenie.git

./setup_noconda.sh

./GeoGenie.py -h

## Basic usage

    ./GeoGenie.py -bin_dir /your/bin/directory -bin_ext faa/fasta/txt/... -outdir geogenie_outdir -out ouputBasename
    
Make sure to include the location of the hmm library used by GeoGenie:

    ./GeoGenie.py -bin_dir /your/bin/directory -bin_ext faa/fasta/txt/... -outdir geogenie_outdir -out ouputBasename -hmm_dir HMMs/
