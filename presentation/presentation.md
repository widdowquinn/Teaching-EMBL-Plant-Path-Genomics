<!-- .slide: data-background="./images/pba_400_circular.png" -->

# 2016-06-23: Bioinformatics of Plants and Plant Pathogens

Leighton Pritchard, The James Hutton Institute

---

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

## Pathogen Genome Data

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### What can pathogen genome data do for you?

* Catalogue of genome components
  * parts lists/wiring diagrams for systems/synthetic biology
* Differences in genome complement
  * hypotheses for functional genomics
* Characteristic signals for diagnostics and epidemiology

---

<!-- .slide: data-background="./images/ensembl_protists.png" -->

## Public Genome Data Sources

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### NCBI

[http://www.ncbi.nlm.nih.gov/](http://www.ncbi.nlm.nih.gov/)

* Repository of record for pathogen genomes
* Example: [*Ralstonia solanacearum*](http://www.ncbi.nlm.nih.gov/genome/490)
  * Browser interface
  * FTP repositories of genome data
    * [RefSeq](ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/Ralstonia_solanacearum/latest_assembly_versions/)
    * [GenBank](ftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/bacteria/Ralstonia_solanacearum/latest_assembly_versions/)

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### GenBank *vs.* RefSeq

* [**GenBank**](http://www.ncbi.nlm.nih.gov/genbank/)
  * part of the [International Nucleotide Sequence Database Collaboration (INSDC)](http://www.insdc.org/) between `EMBL`, `NCBI`, and `DDBJ`.
  * records 'owned' by submitter
  * may include redundant information
  
* [**RefSeq**](http://www.ncbi.nlm.nih.gov/refseq/about/)
  * not part of INSDC
  * records derived from GenBank, 'owned' by NCBI
  * stable non-redundant foundation for functional and diversity studies

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Ensembl

[http://www.ensembl.org](http://www.ensembl.org)

* Automated annotation on selected genomes
* **Specialised sub-collections**
  * Ensembl Protists [http://protists.ensembl.org/](http://protists.ensembl.org/)
  * Ensembl Bacteria [http://bacteria.ensembl.org/](http://bacteria.ensembl.org/)
  * Ensembl Fungi [http://fungi.ensembl.org/](http://fungi.ensembl.org/)
* **Downloadable**
  * e.g. EnsemblProtists [ftp://ftp.ensemblgenomes.org/pub/protists/](ftp://ftp.ensemblgenomes.org/pub/protists/)
* **Comparative genomics!** e.g.
  * [*Phytophthora* genomic alignments (Avr3a)](http://protists.ensembl.org/Phytophthora_infestans/Location/Compara_Alignments/Image?align=119329;db=core;r=supercont1.34:559462-573700)
  * [Gene trees (Avr3a)](http://protists.ensembl.org/Phytophthora_infestans/Gene/Compara_Tree/pan_compara?db=core;g=PITG_14371;r=supercont1.34:559462-573700;t=PITG_14371T0)

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Other sources

* Genome sequencing centres, e.g.
  * [JGI Genome Portals](http://genome.jgi.doe.gov/) - [*P. capsici*](http://genome.jgi.doe.gov/Phyca11/Phyca11.home.html)
  * [Broad Institute](https://www.broadinstitute.org/) - (now retiring older genome sites)
* Specialist databases, e.g.
  * [FungiDB](http://fungidb.org/fungidb/) - fungi and oomycetes
  * [CPGR](http://cpgr.plantbiology.msu.edu/) - not recently updated

---

## Comparative Genomics  

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Why comparative genomics?

* Single genomes are useful, but the real power is in genome *comparisons*
* The combination of genomic data and comparative and evolutionary biology to address questions of genome structure, evolution and function

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Why comparative genomics?

* Functional understanding of model systems (e.g. *E. coli*, *A. thaliana*, *S. cervisiae*) can be transferred to non-model systems
* Genomic differences (SNPs, presence/absence of genes and pathways, gene family variation) may underpin phenotypic differences, including virulence and host range
* Genomes are a record of evolutionary processes and constraints

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Genomes aren't everything…

* **Context:**
  * epigenetics
  * tissue differentiation
  * mesoscale systems, etc.
* **Phenotypic plasticity, responses to:**
  * temperature
  * stress
  * community, etc.
* ***…and therefore systems biology…***

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Levels of genome comparison

* **Bulk properties**
  * k-mer comparisons
* **Whole genome (or chromosome) comparisons**
  * sequence similarity
  * structure and organisation (LGT, rearrangements)
  * GWAS (see tomorrow!)
* **Features and functional components**
  * number and types of feature (genes, ncRNA, regulatory elements, etc.)
  * organisation of features (synteny, operons, regulons, etc.)
  * functional complement, etc.

---

## Whole Genome Comparisons

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Genome organisation

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Genomovars and phylogeny

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Genome expansion

---

## Feature Comparisons

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Orthology etc.

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### BLAST vs RBBH

---

## Effector Prediction

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### What makes an effector?

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Classification

----

<!-- .slide: data-background="./images/hutton_background.png" data-background-size="100%" -->

### Bayes and genome context


