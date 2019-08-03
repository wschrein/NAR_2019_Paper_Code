
#!/bin/bash
#PBS -q hotel
#PBS -N feature_counts
#PBS -l nodes=1:ppn=8
#PBS -l walltime=1:00:00
#PBS -o feature_counts_untrimmed_acute.out
#PBS -e feature_counts_untrimmed_acute.err



module load subreadfeaturecounts 

featureCounts  -a ~/a_final_dogs/making_the_necessary_files/saf_up_stream_Gene.saf  -F SAF -f -p -s 2 --minOverlap 20 -O -B -o ~/a_final_dogs/negative_iDOGS.txt ~/scratch/nuevo/att_1/bams/*.bam
