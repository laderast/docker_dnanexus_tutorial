dx run app-swiss-army-knife -iimage_file=images/gatk.tar.gz \
  -iin="mock.vcf" \
  -icmd="gatk SelectVariants -V mock.vcf -O selected.snp.vcf  --select-type-to-include \"SNP\""