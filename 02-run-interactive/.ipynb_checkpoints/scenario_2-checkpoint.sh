
docker pull broadinstitute/gatk

docker run -it \
 -v $(pwd)/../data:/data broadinstitute/gatk \
 bash


# anything after this gets run in the docker container
ls

pwd

gatk SelectVariants \
   -V /data/mock.vcf \
   -O /data/scenario_2.snp.vcf \
   --select-type-to-include "SNP"

exit
