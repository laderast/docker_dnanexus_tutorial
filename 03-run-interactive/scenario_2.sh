#pull the gatk docker container
docker pull broadinstitute/gatk

#run docker container in interactive mode
#map data directory as a volume
docker run -it \
 -v $(pwd)/../data:/data broadinstitute/gatk \
 bash

## anything after this gets run in the docker container
## our docker_dnanexus_tutorial/data/ folder appears as data/
ls

pwd

gatk SelectVariants \
   -V /data/mock.vcf \
   -O /data/scenario_2.snp.vcf \
   --select-type-to-include "SNP"

## install samtools

apt-get update
apt-get install samtools

exit

# commit as image file
docker ps -a
docker commit <container-id> -m