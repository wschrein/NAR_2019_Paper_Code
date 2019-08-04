
#!/bin/bash
#PBS -q hotel
#PBS -N jobname
#PBS -l nodes=1:ppn=8
#PBS -l walltime=2:00:00
#PBS -o output_align_piRNAs_ne
#PBS -e error_align_piRNAs_ne


# star was used to align reads to the genome with the following conditions:


module load star/2.5.2b

for i in *.fastq
do
STAR --runThreadN 8 --genomeDir ~/new_pi_testing/pi_genome/ --readFilesIn ~/new_pi_testing/${i} --alignIntronMax 1 --genomeChrBinNbits 5  --outFilterMismatchNoverLmax 0.05  --outFilterMatchNmin 16 --outFilterScoreMinOverLread 0 --outFilterMatchNminOverLread 0  --outFileNamePrefix ~/scratch/new_pi_outi/jan_2019/${i}
done

touch done_with_alignment

# this was the command that was used to get reads. This command comes from Alex Dobin (the author of the star aligner) 

for i in *.sam
do
samtools view -F 260 ${s} | cut -f 3 | sort | uniq -c | awk '{printf("%s\t%s\n", $2, $1)}' > ${s}counts.txt
done

# reads were then merged together and Deseq2 was used for differential expression
