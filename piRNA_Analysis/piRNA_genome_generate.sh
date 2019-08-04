



#!/bin/bash
#PBS -q hotel
#PBS -N jobname
#PBS -l nodes=1:ppn=8
#PBS -l walltime=1:00:00
#PBS -o make_wormbase_pirna_genome_t
#PBS -e make_wormbase_pirna_genome_t

# this was the code used to generate a piRNA_genome to align small-RNA-seq reads to 

# the piRNAs are from WS235 version of the c. elegans genome from wormbase


module load  star/2.5.2b

STAR --runThreadN 8 --runMode genomeGenerate --genomeDir ~/new_pi_testing/pi_genome --genomeFastaFiles ~/new_pi_testing/my_file.fa --genomeSAindexNbases 5 --genomeChrBinNbits 6 
