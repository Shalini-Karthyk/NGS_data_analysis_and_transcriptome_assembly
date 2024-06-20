#!/usr/bin/env bash
# runSpades.sh
 
#Running Spades Assembler to the Paired reads

function runSpades {
    nice -n19 /usr/local/programs/SPAdes-3.14.1-Linux/bin/spades.py \
    --threads 4 \
    -o Rhodo \
    -1 Paired/SRR522244_1.fastq -2 Paired/SRR522244_2.fastq
}
runSpades 1>runSpades.log 2>runSpades.err
