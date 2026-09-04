#!/bin/bash

mkdir -p ../results/multiqc

multiqc ../results/fastqc ../results/fastp \
    --outdir ../results/multiqc \
    --filename multiqc_report.html
