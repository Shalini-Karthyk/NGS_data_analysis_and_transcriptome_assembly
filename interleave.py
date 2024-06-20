#!/usr/bin/env python3
# interleave.py
# Import Seq, SeqRecord, and SeqIO
from Bio import SeqIO
# Import itertools to take a slice of list
interleaved_reads = list()
leftReads = SeqIO.parse("/scratch/AiptasiaMiSeq/fastq/Aip02.R1.fastq", "fastq")
rightReads = SeqIO.parse("/scratch/AiptasiaMiSeq/fastq/Aip02.R2.fastq", "fastq")

# Iterate over the with Zip
for left,right in zip(leftReads,rightReads):
    interleaved_reads.append(left)
    interleaved_reads.append(right)

# Writing in the file
SeqIO.write(interleaved_reads, "Interleaved.fasta", "fasta")
