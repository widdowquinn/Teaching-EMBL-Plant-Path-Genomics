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

# Locations of all worksheet data
wsdatadir="../02-data"

# Directory for output
outdir="02-testout"

# Stems for the three isolates of each genus. Labelled a, b, c to
# correspond to the order we want them in the final figure (to 
# match the source paper)
# Serratia
s_a="S_symbiotica_Tucson/GCF_000186485.1_ASM18648v1_genomic"
s_b="S_proteamaculans_568/GCF_000018085.1_ASM1808v1_genomic"
s_c="S_marcesens_FGI94/GCF_000330865.1_ASM33086v1_genomic"
# Vibrio
v_a="V_cholerae_El_Tor/GCF_000006745.1_ASM674v1_genomic"
v_b="V_mimicus_ATCC_33654/GCF_001558475.1_ASM155847v1_genomic"
v_c="V_cholerae_O395/GCF_000016245.1_ASM1624v1_genomic"

# Carry out BLASTN comparisons between genomes, generating
# .tab file output suitable for ACT
# Serratia
echo "Running Serratia BLAST"
echo "A v B"
blastn -query ${wsdatadir}/${s_a}.fna \
       -subject ${wsdatadir}/${s_b}.fna \
       -outfmt 6 -out ${outdir}/serratia_A_vs_B.tab
echo "B v C"
blastn -query ${wsdatadir}/${s_b}.fna \
       -subject ${wsdatadir}/${s_c}.fna \
       -outfmt 6 -out ${outdir}/serratia_B_vs_C.tab
# Vibrio
echo "Running Vibrio BLAST"
echo "A v B"
blastn -query ${wsdatadir}/${v_a}.fna \
       -subject ${wsdatadir}/${v_b}.fna \
       -outfmt 6 -out ${outdir}/serratia_A_vs_B.tab
echo "B v C"
blastn -query ${wsdatadir}/${v_b}.fna \
       -subject ${wsdatadir}/${v_c}.fna \
       -outfmt 6 -out ${outdir}/serratia_B_vs_C.tab


# The command below will open all comparisons correctly if
# ACT is installed to run from the command-line (on OSX a
# different command-line may be required, or an alias to
# /Applications/ACT.app/Contents/MacOS/act)
echo "Opening ACT for Serratia"
act=/Applications/ACT.app/Contents/MacOS/act

cmd="${act} $(pwd)/${wsdatadir}/${s_a}.fna \
     $(pwd)/${outdir}/serratia_A_vs_B.tab \
     $(pwd)/${wsdatadir}/${s_b}.fna \
     $(pwd)/${outdir}/serratia_B_vs_C.tab \
     $(pwd)/${wsdatadir}/${s_c}.fna"
echo ${cmd}
eval ${cmd}
