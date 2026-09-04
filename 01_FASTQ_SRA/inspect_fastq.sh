#!/bin/bash

FASTQ="sample_R1.fastq"

echo "Number of lines:"
wc -l "$FASTQ"

echo "Number of reads:"
echo $(( $(wc -l < "$FASTQ") / 4 ))

echo "First FASTQ record:"
head -n 4 "$FASTQ"

echo "First 10 sequence records:"
awk 'NR%4==1 || NR%4==2' "$FASTQ" | head -n 20
