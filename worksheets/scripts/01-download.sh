#!/usr/bin/env bash
#
# 01-download.sh
#
# Downloads the source data files for exercise 01, using wget. If this
# script is not run in the exercises directory, the subdirectory pseudomonas
# will need to be moved to that location once the download is complete.
#
# (C) The James Hutton Institute 2016
# Author: Leighton Pritchard

# Create output directory
outdir="pseudomonas"
echo "Creating output directory"
mkdir -p ${outdir}

# Stems for retrieving sequences
## FTP for RefSeq
ftpsite="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/"
subdir="latest_assembly_versions"
gsuffix="_genomic"
psuffix="_protein"

# Functions to download from NCBI/RefSeq
function download_genomic {
  # File extensions to retrieve
  exts=( "fna" "gff" "gbff" )
  local=${outdir}
  for ext in ${exts[@]}
  do
    remote=${ftpsite}${1}_${2}/${subdir}/${3}/${3}${gsuffix}.${ext}.gz
    wget -nd -P ${local} ${remote}
  done
  gunzip -f ${outdir}/*.gz
}

function download_protein {
  # File extensions to retrieve
  exts=( "faa" )
  local=${outdir}
  for ext in ${exts[@]}
  do
    remote=${ftpsite}${1}_${2}/${subdir}/${3}/${3}${psuffix}.${ext}.gz
    wget -nd -P ${local} ${remote}
  done
  gunzip -f ${outdir}/*.gz
}

# Define data for each organism to download
### P. fluorescens
p_a=( "Pseudomonas" "fluorescens" "GCF_000263675.1_ASM26367v2" )
p_b=( "Pseudomonas" "fluorescens" "GCF_000293885.2_ASM29388v3" )
### P. aeruginosa
p_c=( "Pseudomonas" "aeruginosa" "GCF_000473745.2_ASM47374v3" )
p_d=( "Pseudomonas" "aeruginosa" "GCF_000626655.2_ASM62665v2" )
### P. syringae
p_e=( "Pseudomonas" "syringae" "GCF_000012245.1_ASM1224v1" )
p_f=( "Pseudomonas" "syringae" "GCF_000988485.1_ASM98848v1" )

# Bash can't do arrays of arrays, so download individually
download_genomic ${p_a[*]}
download_genomic ${p_b[*]}
download_genomic ${p_c[*]}
download_genomic ${p_d[*]}
download_genomic ${p_e[*]}
download_genomic ${p_f[*]}

download_protein ${p_a[*]}
download_protein ${p_b[*]}
download_protein ${p_c[*]}
download_protein ${p_d[*]}
download_protein ${p_e[*]}
download_protein ${p_f[*]}

exit
