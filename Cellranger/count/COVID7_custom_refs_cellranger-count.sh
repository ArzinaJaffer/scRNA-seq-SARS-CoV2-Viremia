#! /usr/bin/env bash

#BSUB -J CR3.0.0
#BSUB -n 56
#BSUB -R "span[hosts=1]"
#BSUB -W 999:59
#BSUB -o Covid7_Cov%J.out
#BSUB -e Covid7_Cov%J.err
#BSUB -N

/home/ajaffer/cellranger_3.0.1/cellranger-3.0.1/cellranger count --id=7_COVID_B9_May2020_Cov2 \
                 --transcriptome=/home/ajaffer/COVID_GEO_GSE145926/Cov_genome_2/mkref/refdata-cellranger-GRCh38-3.0.0_COVID \
                 --fastqs=/home/ajaffer/COVID_May11_2020/7_COVID_B9/outs/fastq_path/HM7V5DMXX/COVID_7_Blinded_B9_NovaSeqMay2020 \
                 --sample=COVID_7_Blinded_B9_NovaSeqMay2020 \
                 --localcores=56

/home/ajaffer/cellranger_3.0.1/cellranger-3.0.1/cellranger count --id=7_COVID_B9_May2020_Cov3 \
                 --transcriptome=/home/ajaffer/COVID_GEO_GSE145926/Cov_genome_3/refdata-cellranger-GRCh38-3.0.0_COVID \
                 --fastqs=/home/ajaffer/COVID_May11_2020/7_COVID_B9/outs/fastq_path/HM7V5DMXX/COVID_7_Blinded_B9_NovaSeqMay2020 \
                 --sample=COVID_7_Blinded_B9_NovaSeqMay2020 \
                 --localcores=56