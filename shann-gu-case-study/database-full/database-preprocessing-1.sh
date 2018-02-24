# Script helps convert some of the library data to the forms we need

## Convert process-yaml-database/<process>.yaml to process-yaml/<process>.yaml

sed -i '/justification:/d' processes-yaml-database/*.yaml
sed -i '/unit:/d' processes-yaml-database/*.yaml
sed -i '/ref:/d' processes-yaml-database/*.yaml
sed -i '/trl:/d' processes-yaml-database/*.yaml
sed -i '/level:/d' processes-yaml-database/*.yaml
sed -i '/main:/d' processes-yaml-database/*.yaml
mkdir processes-yaml
Rscript CONVERT-library-yaml.R

## List all the unique processes in process-yaml/ library and for each resource write blank resource-yaml/<resource>.yaml files. Also prints a CSV lists of processes and resources which can be manually edited later.
mkdir resources-yaml
mkdir data-csv # To store resources.csv, processes.csv and transport.csv
Rscript identify-unique-resources.R
