# FLEP-seq Preprocessing Pipeline

FLEP-seq (full-length elongating and polyadenylated RNA sequencing) allows calculation of the kinetics of cotranscriptional splicing and detects polyadenylated transcripts with unspliced introns retained at specific positions posttranscriptionally.

This pipeline includes basecalling and preprocessing of the FLEP-seq data. 

## Inputs

| File format | Information contained in file | File description | 
|---------- |---------- |---------- |
| fast5 | nanopore raw signal | The standard sequencing output for Oxford Nanopore sequencers | 

## Output
| File format | Information contained in file | File description |
|---------- |---------- |---------- |
| sequencing_summary.txt | basecalling summery file | Ooutput of Guppy basecaller |
| fastq | long-read fastq file | Read pass the quality threshold |
| *.read.info.txt | long-read fastq file | Generated by `merge_read_info.R` |
| *.read.splicing_kinetics.pdf | splicing kinetics | Generated by `plot_intron_splicing_kinetics.R` |
