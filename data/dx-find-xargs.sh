#!/bin/bash
dx find data --name "*.bam" --brief | \
  xargs -I % sh -c "dx run app-swiss-army-knife -y -iin="%" \
  -icmd='samtools view -c \${in_name} > \${in_prefix-counts.txt}' \
  --tag samjob --destination results/' 