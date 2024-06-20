#!/usr/bin/env bash
# removeStop.sh


infile="/home/karthyk.s/BINF6308/module-11-Shalini-Karthyk/ProteinClassification/Trinity.fasta.transdecoder.pep/"

for file in infile
do
    sed 's/*//' Trinity.fasta.transdecoder.pep | head -n 5000 1>>proteins.fasta
    1>removeStop.log 2>removeStop.err
done
