#!/usr/bin/env bash
# runQuast.sh


function quast {
   nice -n19 /usr/bin/quast.py Rhodo/scaffolds.fasta \
   -o quast_output \
   --scaffolds  \
   --threads 4  \
   -f \
   -R /data/METHODS/Fall/Module10/GCF_000012905.2_ASM1290v2_genomic.fna
}
quast 1>runQuast.log 2>runQuast.err
