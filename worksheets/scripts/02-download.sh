#!/usr/bin/env bash
#
# 02-download.sh
#
# Downloads the source data files for worksheet 02, using wget. If this
# script is not run in the worksheets directory, the subdirectory 02-data
# will need to be moved to that location once the download is complete.
#
# (C) The James Hutton Institute 2016
# Author: Leighton Pritchard

# Create output directory
outdir="02-data"
echo "Creating output directory"
mkdir -p ${outdir}

# Stems for retrieving sequences
## FTP for RefSeq
ftpsite="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/"
subdir="latest_assembly_versions"
suffix="_genomic"

# Function to download from NCBI/RefSeq
function download {
  # File extensions to retrieve
  exts=( "gff" "gbff" "fna" )
  local=${outdir}/${4}
  for ext in ${exts[@]}
  do
    remote=${ftpsite}${1}_${2}/${subdir}/${3}/${3}${suffix}.${ext}.gz
    wget -nd -P ${local} ${remote}
    gunzip -f ${outdir}/*/*.gz
  done
}

# Define data for each organism to download
## Serratia
### S. symbiotica
s_a=( "Serratia" "symbiotica" "GCF_000186485.1_ASM18648v1" "S_symbiotica_Tucson" )
### S. proteamaculans
s_b=( "Serratia" "proteamaculans" "GCF_000018085.1_ASM1808v1" "S_proteamaculans_568" )
### S. marcesens
s_c=( "Serratia" "marcescens" "GCF_000330865.1_ASM33086v1" "S_marcesens_FGI94" )
## Vibrio
### V. cholerae El Tor
v_a=( "Vibrio" "cholerae" "GCF_000006745.1_ASM674v1" "V_cholerae_El_Tor" )
### V. mimicus ATCC 33654
v_b=( "Vibrio" "proteamaculans" "GCF_001558475.1_ASM155847v1" "V_mimicus_ATCC_33654" )
### V. cholera 0395
v_c=( "Vibrio" "cholerae" "GCF_000016245.1_ASM1624v1" "V_cholerae_O395" )

# Bash can't do arrays of arrays, so download individually
download ${s_a[*]}
download ${s_b[*]}
download ${s_c[*]}
download ${v_a[*]}
download ${v_b[*]}
download ${v_c[*]}

exit
