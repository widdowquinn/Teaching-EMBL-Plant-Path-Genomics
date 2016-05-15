#!/usr/bin/env python
#
# fix_phi_base.py
#
# Ad hoc script to correct formatting errors in the PHI-Base download for
# exercise 3

from Bio import SeqIO

filename = "./phi_base/PHI_accessions_3_8.fas"

fixed = []
for seq in SeqIO.parse(filename, 'fasta'):
    # At least one record contains only a quotation mark
    # - discard this
    if not len(str(seq.seq).replace('"', '')):
        print("Skipping record: %s" % seq.id)
        continue
    # Some sequence descriptions are enclosed in quotes
    # This is illegal, and we remove the leading quote
    while seq.id.startswith('"'):
        print("Fixing leading quote: %s" % seq.id)
        seq.id = seq.id[1:]
        print(seq.id)
    # Some sequences start with a quotation mark.
    # This is illegal, and we remove the leading quote
    while seq.seq[0] == '"':
        print("Fixing sequence: %s" % seq.id)
        print(seq.seq[:10])
        seq = seq[1:]
    fixed.append(seq)

SeqIO.write(fixed, filename, 'fasta')
