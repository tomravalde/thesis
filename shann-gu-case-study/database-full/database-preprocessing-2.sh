## Convert process-yaml/<process>.yaml to process-praq-gams/<process>.gms
mkdir processes-praq-gams
Rscript YAML-to-GAMS-process-builder.R

## Convert transport-yaml/<transport>.yaml to transport-praq-gams/<transport>.gms
mkdir transport-praq-gams
Rscript YAML-to-GAMS-transport-builder.R
# Script helps convert some of the library data to the forms we need
