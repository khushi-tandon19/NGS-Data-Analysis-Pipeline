#!/bin/bash

REFERENCE="../data/reference/reference.fasta"
BAM="../results/alignment/sample.sorted.bam"

mkdir -p ../results/variants

# Generate pileup and call variants
bcftools mpileup -f "$REFERENCE" "$BAM" -Ou | \
bcftools call -mv -Oz \
-o ../results/variants/sample.vcf.gz

# Index VCF
bcftools index ../results/variants/sample.vcf.gz

# Create readable VCF
bcftools view ../results/variants/sample.vcf.gz \
> ../results/variants/sample_variants.vcf
