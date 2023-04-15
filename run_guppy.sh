#BSUB -J 01_guppy
#BSUB -n 20
#BSUB -o %J.stdout
#BSUB -e %J.stderr
#BSUB -R span[hosts=1]
#BSUB -q gpu


export PATH=/work/bio-mowp/software/ont-guppy-4.0.11/bin:$PATH

guppy_basecaller \
  -i fast5 \
  -s guppy_out \
  -c dna_r9.4.1_450bps_hac.cfg \
  --recursive \
  --disable_pings \
  --fast5_out \
  --qscore_filtering \
  --device "cuda:all:100%"
