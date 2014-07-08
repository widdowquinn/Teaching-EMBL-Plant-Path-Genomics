# README.md - Pba

## Overview

This directory contains annotation and comparison (RBH) files generated during the sequencing work for *Pectobacterium atrosepticum*, and an iPython notebook demonstrating the use of Biopython's GenomeDiagram module to emulate figures from the resulting publications.

## Files

* `Eca_Sanger_genome.dna` - The assembled genome, as provided to sequencing project collaborators
* `Eca_Sanger_annotation.gbk` - GenBank format file generated prior to official genome release by the Sanger annotators
* `Eca_Sanger_annotation.tab` - EMBL format file generated prior to official genome release by the Sanger annotators, this contains more information than the corresponding `.gbk` file
* `NC_004547.gbk` - The official GenBank format annotation as of 8th July 2014
* `rbbh` - directory containing comparison data and an example iPython notebook.

## Using the files

To use the genome sequence/annotation files, a tool like [Artemis](https://www.sanger.ac.uk/resources/software/artemis/) is recommended.