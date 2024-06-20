# NGS_data_analysis_and_transcriptome_assembly

The project entails developing a Python program named interleave.py to process paired Illumina reads from two files, Aip02.R1.fastq and Aip02.R2.fastq, and output the results to an interleaved FASTA file named Interleaved.fasta. Utilizing BioPython to parse the FASTQ files, the program ensures that each read in the R1 file matches its corresponding read in the R2 file.

Additionally, the project involves comprehensive RNA-Seq data processing, including trimming, aligning, sorting, and indexing using tools such as Trimmomatic, HISAT2, GMAP, and STAR. For transcriptome assembly, both genome-guided and de-novo approaches are employed using Trinity, followed by protein prediction and annotation with TransDecoder and hmmscan, which utilize BLAST for sequence similarity searches.

Lastly, the project includes annotating assembled transcriptomes by integrating SwissProt, KEGG, and Gene Ontology (GO) data. This requires pulling and merging data from multiple bioinformatics sources, leveraging both Python and R to create a comprehensive annotation file, thereby enabling functional analysis and species-independent categorization of protein IDs.
