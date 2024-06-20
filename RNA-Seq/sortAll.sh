#!/usr/bin/env bash
# sortAll.sh

fastqPath="/scratch/AiptasiaMiSeq/fastq/"
left=".R1.fastq"
right=".R2.fastq"
sam_path="sam/"
bam_path="bam/"

mkdir -p $bam_path
mkdir -p $sam_path

function sortReads {
    for samp in $fastqPath*$left
    do
        # Remove the path from the filename and assign to pathRemoved
        pathRemoved="${samp/$fastqPath/}"
        # Remove the left-read suffix from $pathRemoved and assign to suffixRemoved
        sampleName="${pathRemoved/$left/}"
        samtools sort \
        $sam_path$sampleName.sam \
        -o $bam_path$sampleName.sorted.bam 
    done
}
sortReads 1>sortAll.log 2>sortAll.err
