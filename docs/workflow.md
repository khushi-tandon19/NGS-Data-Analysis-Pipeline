# NGS Analysis Workflow

## Workflow Overview

The workflow follows a standard reference-based NGS analysis sequence:

**FASTQ/SRA → Quality Control → Read Preprocessing → Reference Alignment → BAM Processing → Variant Calling**

## 1. FASTQ Data Handling

Sequencing data can be obtained from the NCBI Sequence Read Archive (SRA) and converted into FASTQ format.

The FASTQ files are then inspected to understand their structure and calculate the number of sequencing reads.

Main tools and commands:

- SRA Toolkit
- fasterq-dump
- head
- wc
- awk

## 2. Quality Control

Raw sequencing reads are assessed for sequence quality before downstream analysis.

FastQC is used to generate quality-control reports.

The reads can then be preprocessed using fastp for trimming and filtering.

MultiQC can be used to summarize quality-control reports from multiple samples.

Main tools:

- FastQC
- fastp
- MultiQC

## 3. Reference Genome Alignment

Preprocessed reads are aligned against a reference genome using BWA-MEM.

The alignment produces a SAM file, which is converted into BAM format using SAMtools.

The BAM file is then sorted and indexed.

Workflow:

**FASTQ → SAM → BAM → Sorted BAM → Indexed BAM**

Main tools:

- BWA-MEM
- SAMtools

## 4. Variant Calling

Variants can be identified from aligned sequencing reads using BCFtools.

The workflow includes generating a pileup from the aligned reads followed by variant calling.

The resulting variants are stored in VCF format.

Main tools:

- BCFtools
- SAMtools
- VCF

## 5. Output Files

Typical outputs from the workflow include:

- FastQC reports
- fastp quality-control reports
- MultiQC summary report
- SAM/BAM alignment files
- BAM index files
- VCF variant files

Large sequencing and alignment files are not included in this repository because of their file size.

## Academic Scope

This workflow represents practical academic training in NGS data analysis and command-line bioinformatics. The repository focuses on understanding the analysis steps, command structure, file formats, and commonly used tools.
