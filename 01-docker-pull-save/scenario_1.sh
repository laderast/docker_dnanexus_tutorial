
docker pull broadinstitute/gatk

docker image ls

docker run broadinstitute/gatk gatk --help

docker run \
 -v $(pwd)/../data:/data broadinstitute/gatk \
   gatk SelectVariants \
   -V /data/mock.vcf \
   -O /data/scenario_1.snp.vcf \
   --select-type-to-include "SNP"

docker tag broadinstitute/gatk gatk

docker save gatk | gzip > gatk.tar.gz

docker rmi gatk

zcat gatk.tar.gz | docker load

docker run gatk gatk --help
