#!/bin/bash

# Please execute the script in the directory where it is located

initial_dir=$(pwd)

echo ">>> Building fastqc docker image:"
cd $initial_dir/fastqc
docker build -t "fastqc:0.11.5" .

echo ">>> Building multiqc docker image:"
cd $initial_dir/multiqc
docker build -t "multiqc:1.3" .

echo ">>> Building famegahitstqc docker image:"
cd $initial_dir/megahit
docker build -t "megahit:1.1.2" .

echo ">>> Building kraken docker image:"
cd $initial_dir/kraken
docker build -t "kraken:1.0" .

echo ">>> Building bbmap docker image:"
cd $initial_dir/bbmap
docker build -t "bbmap:36.28" .

echo ">>> Building ena_raw_downloader docker image:"
cd $initial_dir/ena_raw_downloader
docker build -t "ena_raw_downloader:latest" .