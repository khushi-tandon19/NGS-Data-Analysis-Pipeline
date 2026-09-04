#!/bin/bash

ACCESSION="SRR_ACCESSION"

mkdir -p ../data/raw

fasterq-dump "$ACCESSION" --split-files --outdir ../data/raw

gzip ../data/raw/*.fastq
