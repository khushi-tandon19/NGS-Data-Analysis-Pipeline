#!/bin/bash

mkdir -p ../results/fastqc

fastqc ../data/raw/*.fastq.gz \
    --outdir ../results/fastqc \
    --threads 4
