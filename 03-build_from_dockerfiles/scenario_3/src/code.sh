
gatk SelectVariants \
  -V /data/mock.vcf \
  -O /data/scenario_3.snp.vcf \
  --select-type-to-include "SNP"


gatk SelectVariants \
  -V /data/mock.vcf \
  -O /data/scenario_3.indel.vcf \
  --select-type-to-include "INDEL"

