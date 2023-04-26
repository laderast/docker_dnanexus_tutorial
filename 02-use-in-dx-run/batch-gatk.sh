#!/bin/bash
dx find data --name "chr*.vcf" --brief | xargs -I% sh -c "bash run-gatk.sh %"
