#!/usr/bin/env python3
#
# extract_avrpto_sequences.py
#
# Ad hoc script to extract sequences from the PHI-Base download that contain
# avrPto1 in their description, and write them to the file phi_base/avrpto1.fas
#
# (c) The James Hutton Institute 2016
# Author: Leighton Pritchard

from Bio import SeqIO

avrpto = []

for seqrecord in SeqIO.parse('phi_base/PHI_accessions_4_1.fas', 'fasta'):
    if "avrPto1" in seqrecord.description:
        avrpto.append(seqrecord)
        
SeqIO.write(avrpto, "phi_base/avrpto1.fas", "fasta")
