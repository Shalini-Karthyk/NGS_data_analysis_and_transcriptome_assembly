#!/usr/bin/env bash
# indexAll.sh

fastqPath="/scratch/AiptasiaMiSeq/fastq/"
left=".R1.fastq"
right=".R2.fastq"
bam_path="bam/"

mkdir -p $bam_path

function indexReads {
    for samp in $fastqPath*$left
    do
        # Remove the path from the filename and assign to pathRemoved
        pathRemoved="${samp/$fastqPath/}"
        # Remove the left-read suffix from $pathRemoved and assign to suffixRemoved
        sampleName="${pathRemoved/$left/}"
        samtools index $bam_path$sampleName.sorted.bam
    done
}
indexReads 1>indexAll.log 2>indexAll.err
