
#! /usr/bin/env bash

#BSUB -J fastq-dump
#BSUB -n 8
#BSUB -R "span[hosts=1]"
#BSUB -W 999:59
#BSUB -o fastq_dump3_COVID%J.out
#BSUB -e fastq_dump3_COVID%J.err
#BSUB -N

/home/ajaffer/sratoolkit.2.10.5-centos_linux64/bin/fastq-dump --split-files SRR11181959

/home/ajaffer/sratoolkit.2.10.5-centos_linux64/bin/fastq-dump --split-files SRR11181954