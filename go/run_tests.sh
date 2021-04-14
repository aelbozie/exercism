#!/bin/bash
set -eo pipefail

for folder in $(ls -d -- */);
do
cd "$folder";
echo -e "\e[1;32m==========testing $folder==========\e[0;0m";
go test -v --bench . --benchmem;
cd ..  ;
done
