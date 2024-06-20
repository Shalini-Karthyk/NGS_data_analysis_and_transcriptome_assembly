#!/usr/bin/env bash
# trim.sh
#file path "/home/karthyk.s/BINF6308/module-10-Shalini-Karthyk/GenomeAssembly/"

# Creating output directories
mkdir -p Paired
mkdir -p Unpaired

#Funtion for the fastq files to trim

function trim {
    nice -n19 java -jar /usr/local/programs/Trimmomatic-0.36/trimmomatic-0.36.jar PE \
    -threads 1 -phred33 \
    /home/karthyk.s/BINF6308/module-10-Shalini-Karthyk/GenomeAssembly/SRR522244_1.fastq \
    /home/karthyk.s/BINF6308/module-10-Shalini-Karthyk/GenomeAssembly/SRR522244_2.fastq \
    /home/karthyk.s/BINF6308/module-10-Shalini-Karthyk/GenomeAssembly/Paired/SRR522244_1.fastq \
    /home/karthyk.s/BINF6308/module-10-Shalini-Karthyk/GenomeAssembly/Unpaired/SRR522244_1.fastq \
    /home/karthyk.s/BINF6308/module-10-Shalini-Karthyk/GenomeAssembly/Paired/SRR522244_2.fastq \
    /home/karthyk.s/BINF6308/module-10-Shalini-Karthyk/GenomeAssembly/Unpaired/SRR522244_2.fastq \
    HEADCROP:0 \
    ILLUMINACLIP:/usr/local/programs/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 \
    LEADING:20 TRAILING:20 SLIDINGWINDOW:4:30 MINLEN:36
}
trim 1>trim.log 2>trim.err
