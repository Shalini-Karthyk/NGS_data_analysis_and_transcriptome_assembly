#!/usr/bin/env bash
# alignAll.sh

pair_path="/home/karthyk.s/BINF6308/module-06-Shalini-Karthyk/RNA-Seq/Paired"
fastqPath="/scratch/AiptasiaMiSeq/fastq/"
left=".R1.fastq"
right=".R2.fastq"
sam_path="sam/"
mkdir -p $sam_path
function alignReads {
    for samp in $fastqPath*$left
    do
        # Remove the path from the filename and assign to pathRemoved
        pathRemoved="${samp/$fastqPath/}"
        # Remove the left-read suffix from $pathRemoved and assign to suffixRemoved
        sampleName="${pathRemoved/$left/}"
        nice -n19 gsnap \
        -A sam \
        -D . \
        -d AiptasiaGmapDb \
        -s AiptasiaGmapIIT.iit \
        Paired/${sampleName}$left \
        Paired/${sampleName}$right \
        1>$sam_path/${sampleName}.sam
    done
}
alignReads 1>alignAll.log 2>alignAll.err
