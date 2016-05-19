#!/usr/bin/env bash
#
# 02-make_databases.sh
#
# Run this script from the exercises directory to build the BLASTP
# databases for exercise 02-cds_feature_comparison
#
# (C) The James Hutton Institute 2016
# Author: Leighton Pritchard

# Create BLASTP databases from the proteome files
cmdstem="makeblastdb -dbtype prot"
indir="pseudomonas"
outdir="${indir}_blastp"

mkdir -p pseudomonas_blastp
for stem in "GCF_000293885.2_ASM29388v3_protein" \
            "GCF_000012245.1_ASM1224v1_protein" \
            "GCF_000988485.1_ASM98848v1_protein"
do
    ${cmdstem} -in ${indir}/${stem}.faa -out ${outdir}/${stem}
done
