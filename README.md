# NGS Data Analysis Pipeline

Academic NGS data analysis workflow documenting FASTQ data handling, quality control, read preprocessing, reference genome alignment, BAM processing, and variant calling.

## Overview

This repository documents a practical NGS data analysis workflow studied during academic bioinformatics training.

The workflow covers:

**FASTQ/SRA → Quality Control → Read Preprocessing → Reference Alignment → BAM Processing → Variant Calling**

## 1. FASTQ Data Handling

Sequencing data can be obtained from the NCBI Sequence Read Archive (SRA) and converted into FASTQ format.

The FASTQ files can then be inspected to understand their structure and sequencing read information.

Tools covered:

- SRA Toolkit
- fasterq-dump
- gzip
- head
- cat
- wc
- awk

## 2. Quality Control

Raw sequencing reads are assessed for sequence quality before downstream analysis.

Tools covered:

- FastQC
- fastp
- MultiQC

FastQC is used for quality assessment, fastp for read trimming and filtering, and MultiQC for summarizing quality-control reports.

## 3. Reference Genome Alignment

Preprocessed sequencing reads can be aligned against a reference genome using BWA-MEM.

The alignment workflow is:

**FASTQ → SAM → BAM → Sorted BAM → Indexed BAM**

SAMtools is used for BAM conversion, sorting, indexing, and alignment statistics.

Tools covered:

- BWA-MEM
- SAMtools

## 4. Variant Calling

Variants can be identified from aligned sequencing reads using BCFtools.

The workflow includes generating a pileup from aligned reads followed by variant calling.

The resulting variants are stored in VCF format.

Tools covered:

- BCFtools
- SAMtools
- VCF

## Repository Structure

```text
NGS-Data-Analysis-Pipeline/
├── 01_FASTQ_SRA/
│   ├── download_fastq.sh
│   └── inspect_fastq.sh
├── 02_Quality_Control/
│   ├── fastqc.sh
│   ├── fastp.sh
│   └── multiqc.sh
├── 03_Reference_Alignment/
│   └── bwa_samtools.sh
├── 04_Variant_Calling/
│   └── bcftools_variant_calling.sh
├── docs/
│   └── workflow.md
├── .gitignore
├── README.md
└── requirements.txt
