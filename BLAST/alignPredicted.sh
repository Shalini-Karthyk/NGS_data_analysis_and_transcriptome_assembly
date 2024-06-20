#!/usr/bin/env bash
# alignPredicted.sh


# here you are using many sequences, each will be run and compared to swissprot db
# let's make sure to run with -outfmt 6.  NOTICE we are now using blastp
blastp -query Trinity.fasta.transdecoder.pep  \
    -db swissprot  \
    -outfmt "6 qseqid sacc qlen slen length nident pident evalue stitle" \
    -evalue 1e-10 -num_threads 4 \
    1> alignPredicted.txt 2>alignPredicted.err
