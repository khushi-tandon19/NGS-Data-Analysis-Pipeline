#!/bin/bash

REFERENCE="../data/reference/reference.fasta"
R1="../data/trimmed/sample_R1.trimmed.fastq.gz"
R2="../data/trimmed/sample_R2.trimmed.fastq.gz"

mkdir -p ../results/alignment

# Index reference genome
bwa index "$REFERENCE"

# Align paired-end reads
bwa mem -t 4 "$REFERENCE" "$R1" "$R2" > ../results/alignment/sample.sam

# Convert SAM to BAM
samtools view -b ../results/alignment/sample.sam \
    > ../results/alignment/sample.bam

# Sort BAM
samtools sort ../results/alignment/sample.bam \
    -o ../results/alignment/sample.sorted.bam

# Index sorted BAM
samtools index ../results/alignment/sample.sorted.bam

# Alignment statistics
samtools flagstat ../results/alignment/sample.sorted.bam \
    > ../results/alignment/sample.flagstat.txt
