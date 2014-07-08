# README.md - Phytophthora

## Overview

This directory contains an example iPython notebook which uses supplementary data from the [Haas *et al.* (2009)](http://dx.doi.org/10.1038/nature08358) *P. infestans* genome paper to emulate elements of Figure 2 from that publication, showing evidence for genome expansion and its association with pathogen effectors.

## Running the notebook

At the command line, issue

```
ipython notebook
```

and click on the filename `pi_two_speed.ipynb`, to start the notebook.

## Files

* `pi_two_speed.ipynb` - the iPython notebook with example code
* `gene_regions.bed` - BED format file of CDS locations on the genome
* `supercontigs.genome` - tab-separated text file of supercontig lengths
* `flanking_regions.bed` - BED file of flanking regions for each CDS
* `intervals.bed` - BED file of intervals between adjacent CDS
* `nature08358-s5.xls` - supplementary information about RxLR class membership
* `nature08358-s8.xls` - supplementary information about Crinkler class membership