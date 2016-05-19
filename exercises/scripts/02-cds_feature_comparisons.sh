#!/usr/bin/env bash
#
# 02-cds_feature_comparisons.sh
#
# Run this script from the exercises directory with
# sh scripts/02-cds_feature_comparisons.sh
# to emulate execution of the iPython notebook and commands
#
# (C) The James Hutton Institute 2016
# Author: Leighton Pritchard

# Run B728a vs NCIMB 11764 forward and reverse BLASTP
# fwd
blastp -query pseudomonas/GCF_000988485.1_ASM98848v1_protein.faa \
       -db pseudomonas_blastp/GCF_000293885.2_ASM29388v3_protein \
       -max_target_seqs 1 \
       -outfmt "6 qseqid sseqid qlen slen length nident pident qcovs evalue bitscore" \
       -out pseudomonas_blastp/B728a_vs_NCIMB_11764.tab
# rev
blastp -query pseudomonas/GCF_000293885.2_ASM29388v3_protein.faa \
       -db pseudomonas_blastp/GCF_000988485.1_ASM98848v1_protein \
       -max_target_seqs 1 \
       -outfmt "6 qseqid sseqid qlen slen length nident pident qcovs evalue bitscore" \
       -out pseudomonas_blastp/NCIMB_11764_vs_B728a.tab
