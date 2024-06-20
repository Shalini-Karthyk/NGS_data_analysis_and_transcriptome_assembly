# NGS_data_analysis_and_transcriptome_assembly

## Overview
This project focuses on developing a comprehensive pipeline for processing paired Illumina reads and performing RNA-Seq data analysis. The pipeline includes read interleaving, trimming, aligning, sorting, indexing, and transcriptome assembly, followed by protein prediction and functional annotation.

## Project Details
### Interleaving Illumina Reads
- **Script:** `interleave.py`
- **Input Files:** `Aip02.R1.fastq`, `Aip02.R2.fastq`
- **Output File:** `Interleaved.fasta`
- **Description:** A Python program utilizing BioPython to parse FASTQ files and ensure each read in the R1 file matches its corresponding read in the R2 file, outputting to an interleaved FASTA file.

### RNA-Seq Data Processing
1. **Trimming:** 
   - **Tool:** Trimmomatic
2. **Alignment:** 
   - **Tools:** HISAT2, GMAP, STAR
3. **Sorting and Indexing:** 
   - **Tool:** SAMtools

### Transcriptome Assembly
- **Approaches:**
  - Genome-guided assembly using HISAT2 and StringTie
  - De-novo assembly using Trinity
- **Tools:** 
  - **Trinity** for transcriptome assembly
  - **TransDecoder** for protein prediction
  - **hmmscan** for annotation

### Functional Annotation
- **Annotation Databases:**
  - **SwissProt**
  - **KEGG**
  - **Gene Ontology (GO)**
- **Tools:** 
  - **BLAST** for sequence similarity searches
  - Python and R for data integration and functional analysis

## Technologies and Tools Used
- **Programming Languages:** Python, R
- **Bioinformatics Tools:** BioPython, Trimmomatic, HISAT2, GMAP, STAR, SAMtools, Trinity, TransDecoder, hmmscan, BLAST
- **Databases:** SwissProt, KEGG, Gene Ontology (GO)

## Pipeline Workflow
1. **Read Interleaving:**
   - Process paired Illumina reads using `interleave.py` to create `Interleaved.fasta`.
2. **RNA-Seq Data Processing:**
   - Trim raw reads using Trimmomatic.
   - Align trimmed reads to the reference genome using HISAT2/GMAP/STAR.
   - Sort and index aligned reads using SAMtools.
3. **Transcriptome Assembly:**
   - Perform genome-guided assembly with HISAT2 and StringTie.
   - Conduct de-novo assembly with Trinity.
   - Predict proteins from assembled transcripts using TransDecoder.
4. **Functional Annotation:**
   - Annotate assembled transcriptomes with SwissProt, KEGG, and GO data.
   - Integrate and merge annotation data using Python and R to create a comprehensive annotation file for functional analysis.

## Conclusion
This project demonstrates a complete pipeline for NGS data analysis and transcriptome assembly, enabling accurate functional annotation and analysis of RNA-Seq data. The use of multiple bioinformatics tools and databases ensures a robust and comprehensive approach to transcriptome analysis.

