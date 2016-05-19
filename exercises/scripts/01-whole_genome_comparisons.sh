#!/usr/bin/env bash
#
# 01-whole_genome_comparisons.sh
#
# Run this script from the exercises directory with
# sh scripts/01-whole_genome_comparisons.sh
# to emulate execution of the iPython notebook and commands
#
# (C) The James Hutton Institute 2016
# Author: Leighton Pritchard

# Download sequence data for Pseudomonas
sh scripts/01-download.sh

# Conduct B301D:B728a:NCIMB 11764 BLASTN comparison
mkdir -p pseudomonas_blastn
blastn -query pseudomonas/GCF_000012245.1_ASM1224v1_genomic.fna \
    -subject pseudomonas/GCF_000988485.1_ASM98848v1_genomic.fna \
    -outfmt 6 -out pseudomonas_blastn/B301D_vs_B728a.tab
blastn -query pseudomonas/GCF_000988485.1_ASM98848v1_genomic.fna \
    -subject pseudomonas/GCF_000293885.2_ASM29388v3_genomic.fna \
    -outfmt 6 -out pseudomonas_blastn/B728a_vs_NCIMB_11764.tab

# Run pyani on all downloaded Pseudomonas
average_nucleotide_identity -v -m ANIm \
  -i pseudomonas -o pseudomonas_ANIm \
  -g --gmethod seaborn --gformat pdf,png \
  --classes pseudomonas/classes.tab \
  --labels pseudomonas/labels.tab
