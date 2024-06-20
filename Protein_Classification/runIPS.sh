#!/usr/bin/env bash
# runIPS.sh

PATH="/usr/local/programs/jdk-11.0.9/bin/:$PATH"
export PATH

function scan {
nice -n19 interproscan.sh \
    --input proteins.fasta \
    --formats tsv \
    --goterms \
    --iprlookup \
    --pathways \
    --outfile proteins.tsv \
    -cpu 4 \
    -dp
}
scan 1>scan.log 2>scan.err
