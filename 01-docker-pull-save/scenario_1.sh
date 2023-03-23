# pull our docker image
docker pull broadinstitute/gatk

# show that we've downloaded docker image
docker images

# Run the container on the command line
docker run broadinstitute/gatk gatk --help

# Run the container on the command line
docker run \
 -v $(pwd)/../data:/data broadinstitute/gatk \
   gatk SelectVariants \
   -V /data/mock.vcf \
   -O /data/scenario_1.snp.vcf \
   --select-type-to-include "SNP"

#add a tag to the image
docker tag broadinstitute/gatk gatk-new

#save the image to a file
docker save gatk | gzip > gatk.tar.gz

docker rmi gatk

#load the image into docker again
zcat gatk.tar.gz | docker load

docker run gatk-new gatk --help
