
#!/bin/bash
#PBS -q hotel
#PBS -N feature_counts
#PBS -l nodes=1:ppn=8
#PBS -l walltime=1:00:00
#PBS -o feature_counts_untrimmed_acute.out
#PBS -e feature_counts_untrimmed_acute.err



module load subreadfeaturecounts 

featureCounts -T 8 -a ~/a_final_dogs/making_the_necessary_files/saf_down_stream_Gene.saf  -F SAF -f -p -s 2 --minOverlap 20 -O -B -o ~/a_final_dogs/positive_iDOGS.txt ~/scratch/nuevo/att_1/bams/*.bam
