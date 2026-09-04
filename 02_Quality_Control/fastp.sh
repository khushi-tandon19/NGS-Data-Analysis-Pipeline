#!/bin/bash

mkdir -p ../data/trimmed
mkdir -p ../results/fastp

fastp \
    -i ../data/raw/sample_R1.fastq.gz \
    -I ../data/raw/sample_R2.fastq.gz \
    -o ../data/trimmed/sample_R1.trimmed.fastq.gz \
    -O ../data/trimmed/sample_R2.trimmed.fastq.gz \
    -h ../results/fastp/sample_fastp.html \
    -j ../results/fastp/sample_fastp.json \
    -w 4
