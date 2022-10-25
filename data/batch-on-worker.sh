#!/bash/bin

cmd_to_run="ls *.vcf.gz | xargs -I% sh -c "bcftools stats % > %.stats.txt"

dx run swiss-army-knife \
  -iin="data/chr1.vcf.gz" \
  -iin="data/chr2.vcf.gz" \
  -iin="data/chr3.vcf.gz" \
  -icmd=${cmd_to_run}