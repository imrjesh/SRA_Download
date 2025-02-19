#!/bin/bash
set -e
SRR=$1
cd /lscratch/$SLURM_JOB_ID
mkdir -p tmp
fasterq-dump -e $SLURM_CPUS_PER_TASK \
             -t /lscratch/$SLURM_JOBID/tmp \
             $SRR
pigz -p $SLURM_CPUS_PER_TASK *.fastq
mv *.fastq.gz /path to store fastq files/PRJNA314463/fastq/
