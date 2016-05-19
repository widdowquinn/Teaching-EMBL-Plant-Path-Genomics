#!/usr/bin/env bash
#
# Terminal commands for completion of the 03-effector_finding.ipynb exercise
#
# Run this script from the exercises subdirectory with
# sh scripts/03-effector_finding.sh
# to emulate execution of the iPython notebook and commands

# Move the downloaded PHI-Base data to a local subdirectory
mv ~/Downloads/PHI_accessions ./data/PHI_accessions_4_1.fas

# Which avrPto1 sequences are present?
grep avrPto1 data/PHI_accessions_3_8.fas

# Extracting avrPto1 sequences with a helper script
scripts/extract_avrpto_sequences.fas

# Aligning avrPto1 sequences
clustalo -i data/avrPto1.fas -o data/avrpto1_aln.fas

# Build the HMM profile
hmmbuild --amino data/avrpto1.hmm data/avrpto1_aln.fas

# Concatenate all Pseudomonas protein sequences into a
# single FASTA file
cat pseudomonas/*.faa > phi_base/pseudomonas.faa

# Run hmmsearch with the HMM profile against the 
# concatenated Pseudomonas proteins
hmmsearch -o phi_base/avrpto1_vs_pseudomonas.out \
  --tblout phi_base/avrpto1_vs_pseudomonas.tab \
  phi_base/avrpto1.hmm phi_base/pseudomonas.faa

# Run hmmsearch with the HMM profile against the 
# PHI-Base downloaded dataset
hmmsearch -o phi_base/avrpto1_vs_phi_base.out \
  --tblout phi_base/avrpto1_vs_phi_base.tab \
  phi_base/avrpto1.hmm phi_base/PHI_accessions_4_1.fas
