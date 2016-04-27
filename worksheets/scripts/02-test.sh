#!/usr/bin/env bash
#
# 02-test.sh
#
# Runs the code from worksheet 02 (02-Pba_HGT.ipynb) as a test
#
# (C) The James Hutton Institute 2016
# Author: Leighton Pritchard

# Create output directory if it's not already there
echo "Creating output directory"
mkdir -p 02-testout

# Carry out BLASTN comparisons between genomes, generating
# .tab file output suitable for ACT
# Pba vs Pst
echo "Running Pba vs YpK"
blastn -query ../02-data/P_atrosepticum_SCRI1043/GCF_000011605.1_ASM1160v1_genomic.fna \
       -subject ../02-data/Y_pestis_KIM/GCF_000006645.1_ASM664v1_genomic.fna \
       -outfmt 6 -out 02-testout/Pba_vs_YpK.tab
# Pba vs Dze
echo "Running Pba vs Dze"
blastn -query ../02-data/P_atrosepticum_SCRI1043/GCF_000011605.1_ASM1160v1_genomic.fna \
       -subject ../02-data/D_zeae_Ech586/GCF_000025065.1_ASM2506v1_genomic.fna \
       -outfmt 6 -out 02-testout/Pba_vs_Dze.tab
# Pba vs Sty
echo "Running Pba vs Sty"
blastn -query ../02-data/P_atrosepticum_SCRI1043/GCF_000011605.1_ASM1160v1_genomic.fna \
       -subject ../02-data/S_enterica_CT18/GCF_000195995.1_ASM19599v1_genomic.fna \
       -outfmt 6 -out 02-testout/Pba_vs_Sty.tab

# The command below will open all comparisons correctly if
# ACT is installed to run from the command-line (on OSX a
# different command-line may be required, or an alias to
# /Applications/ACT.app/Contents/MacOS/act)
echo "Opening ACT"
act $(pwd)/../02-data/D_zeae_Ech586/GCF_000025065.1_ASM2506v1_genomic.fna \
    $(pwd)/02-testout/Pba_vs_Dze.tab \
    $(pwd)/../02-data/P_atrosepticum_SCRI1043/GCF_000011605.1_ASM1160v1_genomic.fna \
    $(pwd)/02-testout/Pba_vs_Sty.tab \
    $(pwd)/../02-data/S_enterica_CT18/GCF_000195995.1_ASM19599v1_genomic.fna
