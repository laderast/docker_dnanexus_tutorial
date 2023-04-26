#!/bin/bash
filename=$(dx describe $1 --json | jq .name | tr -d '"')
echo $filename

dx run app-swiss-army-knife -iimage_file="images/gatk.tar.gz" \
        --tag "gatk-job"  --destination "users/tladeras" -y \
        -iin=$1 -icmd="gatk SelectVariants -V ${filename} -O ${filename}.snp.vcf --select-type-to-include \"SNP\"" 