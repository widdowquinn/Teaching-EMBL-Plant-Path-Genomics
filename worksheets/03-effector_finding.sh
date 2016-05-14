#!/usr/bin/env bash
#
# Terminal commands for completion of the 03-effector_finding.ipynb exercise

# Move the downloaded PHI-Base data to a local subdirectory
mv ~/Downloads/PHI_accessions ./data/PHI_accessions_3_8.fas

# Which avrPto1 sequences are present?
grep avrPto1 data/PHI_accessions_3_8.fas

# Extracting avrPto1 sequences with a helper script


# Aligning avrPto1 sequences
clustalo -i data/avrPto1.fas -o data/avrpto1_aln.fas

# Build the HMMer profile
hmmbuild --amino data/avrpto1.hmm data/avrpto1_aln.fas
