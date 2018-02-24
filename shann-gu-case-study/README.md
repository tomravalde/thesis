# Shann Gu case study

## TODO

- [X] Model runs, though does not solve because of infeasibilities. This maybe because the new resource names haven't been set with import/export limits etc.
- [X] I've removed all the 'shoulder' information. Model now solves (MIP Solution: 92.6).
- [X] Add shoulder season process rate information to the processes-yaml YAML files, so model is solvable
- [ ] Useful plots of results
	- [ ] Set different colours for positive and negative values in heat maps
- [ ] Correct the qualities of the resources-yaml/ files.
- [ ] Add randomised prices to resources (buying and selling) and processes (capital and maintenance)
	- [X] Randomised captial pricing returns different results
- [ ] Update processes and resources
	- [X] Remove the fuelOil.yaml resource? (As it's the same as oil? So update processes as necessary.) << I've replaced 'oil' resource with fuelOil
	- [X] processes which require 'fuel'
		- wastewater-algaeCultivation-openPond*.yaml (MJ)
		- wastewater-algaeCultivation-municipalWastewater*.yaml (MJ)
		- wastewater-algaeCultivation-manurePhotobioreactor*.yaml (MJ)
		- district-cogen-heating.yaml (MJ)
		- [ ] TODO: add dummy process which converts some fuels into 'fuel'???
	- [X] methane: kg generally, but MJ for microCHP0fuelCell-methane, review-methanogenic-digestion, SAF-MBR_wastewater, anaerobicDigestion_municipalWasteWater, anaerobicDigestion_sewageSludge_manure << all okay, just some data was mislabelled as kg
	- [X] methanol: kg and MJ could be mixed up (I've currently set it at kg) << sorted
	- [X] syngas: kg and MJ could be mixed up << converted gasification-syngas-elec*.yaml from MJ --> kg
	- [X] gasNatural: kg and MJ could be mixed up << Checked: not actually mixed up, just a couple of processes mislabelled as MJ
	- [X] NB: differences between the different types of gas (e.g. gasNatural = kg, gasWaste = MJ)
	- [ ] Update any changes from  tech-review/yaml/ (develop path) within the modelling data
	- [X] CHP.yaml, boiler_gas.yaml are probably from the original Shann Gu case study. Change to gasNatural, and from MJ --> kg (and remove gas.yaml)
	- [ ] liquidFuel. Should this be more precisely defined? << TODO: add dummy process to convert liquid fuels to 'liquidFuel'
	- [X] LPG: changed definition from energy --> mass
- [ ] Transport processes/equations: do we need to apply the rate multiplication to the quantity coefficient only (and not the rate coefficient)?

## Content

This repository contains material for the case study which applies the PRaQ model to the Shann Gu urban development, and will include:

- [modelling/](modelling): Data, GAMS code and notes for the modelling work.
- [paper/](paper): Paper source (for publication and thesis chapter content), and scripts to build the paper. This also includes databases of literature (from two fields: resource management modelling, and urban metabolism modelling), and code to analyse that literature.

The directory also includes subdirectories which contain datasets which could be used in the modelling. To use these, the subdirectory must be copied to [modelling/data](modelling/data):

- [database-full/](database-full): Data and scripts to convert data into the correct format. Run [database-preprocessing-1.sh](database-full/database-preprocessing-1.sh) before manually editing the files in [resources-yaml](database-full/resources-yaml) as necessary. Finally run [data-preprocessing-2.sh](database-full/database-preprocessing-2.sh).
- [database-reduced/](database-reduced): As above, but a reduced version of the database.
- The source of the database of urban resource management processes is [here](https://github.com/tomravalde/urban-metabolism-process-database)

## Project outputs

- Model results for various scenarios
- Paper for publication (which may include elements of the model formulation chapter)
- Thesis chapter (largely based on the paper)

## Using the model

### Editing the parameters

There maybe multiple datasets that a user wishes to use for a particular model. These can all be defined within the [modelling/](modelling) directory (e.g. as [data-design](modelling/data-design)). However, to be used by the model, it must be named as [modelling/data](modelling/data). There is an overview of the data in the table below.

(There are various datasets recorded outside of the modelling/ directory (e.g. [database-full](database-full)), which could be copied to within the database directory.)

| File                             | Type                                | Notes                                                                                                                                                  |
|----------------------------------|-------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| processes-yaml                   | directory (user-defined)            | A YAML file for each conversion process, recording resource inputs/outputs, and operation rates                                                        |
| processes-praq-gams              | directory (automatically generated) | GAMS files generated from the process-yaml YAML files                                                                                                  |
| resources-yaml                   | directory (user-defined)            | A YAML file for each resource, recording its qualities and cost                                                                                        |
| transport-yaml                   | directory (user-defined)            | A YAML file for each transport process, recording resource inputs/outputs, and operation rates                                                         |
| transport-praq-gams              | directory (automatically generated) | GAMS files generated from the transport-yaml YAML files                                                                                                |
| YAML-GAMS-processes.sh           | shell script (user-run)             | converts YAML files in processes-yaml and transport-yaml into GAMS files, and stores them in processes-praq-gams and processes-praq-yaml, respectively |
| YAML-to-GAMS-process-builder.R   | R script (dependency)               | script for use in YAML-GAMS-processes.sh shell script                                                                                                  |
| YAML-to-GAMS-transport-builder.R | R script (dependency)               | script for use in YAML-GAMS-processes.sh shell script                                                                                                  |
| ShannGu-processes.csv            | CSV (user-defined)                  | Records process costs                                                                                                                                  |
| qualities.csv                    | CSV (user-defined)                  | Records resource qualities                                                                                                                             |
| ShannGu-resources-Summer.csv     | CSV (user-defined)                  | Records zonal demand, import/export limits, and emissions                                                                                              |
| ShannGu-resources-Summer.csv     | CSV (user-defined)                  | Records zonal demand, import/export limits, and emissions                                                                                              |
| times.csv                        | CSV (user-defined)                  | Records length for each time period                                                                                                                    |
| transport.csv                    | CSV (user-defined)                  | Records maximum operation fates for each transport process << NOT NECESSARY? (Already contained in <transport-process>.yaml?)                          |
| zone-matrix.csv                  | CSV (user-defined)                  | Records the distance between any pair of zones                                                                                                         |

### Generating the model

First, use a YAML file (e.g. [config.yaml](modelling/config.yaml)) to specify which directories (of resources and processes), CSV files, and CSV file columns (both for other parameters) a modelling scenario should use.

To combine all the data into a GAMS script, navigate to within the [modelling/](modelling) directory, and then run the R script [build-both-spatial.R](modelling/build-both-spatial.R), specifying the name of the configuration file. This will use the required data from [data/](modelling/data) to generate [praq-spatial.gms](praq-spatial.gms).

> `$ cd ~/ImpCol/PhD/shann-gu-case-study/modelling`

> `$ Rscript build-both-spatial.R config.yaml`

### Running the model

Within Tom's machine, navigate to the [modelling/](modelling) directory

> `$ cd ~/ImpCol/PhD/shann-gu-case-study/modelling`

Copy the model to Tom's Chem-Eng Cluster account:

> `$ sh copy-to-cluster.sh`

> This command copies `data/`, `formulation/` and `praq-spatial.gms` to a `ShannGu/` directory on the cluster

Login to Tom's Cluster account

> `$ ssh tr608@ps-lfe01.ps.ic.ac.uk`

In the cluster, navigate to the ShannGu directory, and run the model

> `$ cd ShannGu/`

> `$ gams praq-spatial.gms`

### Getting and analysing results

Go back to your own machine to get the results from the cluster (from within the [modelling/](modelling) directory)

> `$ ./process-results <scenario-name>`

This will create two directories:

- `modelling/results-<directory-name>/` (not kept under version control), containing contain up-to-date results, in CSV format, which can be analysed with R. For example, `modelling/results-processing.R` loads in the results as data frames, keeping only the nonzero entries. It will also make a copy fo the `<scenario-name>.yaml` configuration file in the directory.
- `modelling/results-<scenario-name>-plots`, which stores PDF plots of the results (generated by `modelling/results-processing.R`)

## Building the paper

Navigate to within the [paper/](paper) directory, and run `sh build-elsevier.sh` at the command line.

## TODO

- [ ] Reflect on previous version of the paper
	- [ ] ISNGI
	- [ ] Shann Gu workshop
- [ ] Formulate problem
	- [ ] Zones
	- [ ] Times
	- [ ] Demands
		- [ ] Levels of sophistication
	- [ ] Cases: Grid, design, wildcard
- [ ] Gather and clean data
	- [ ] Processes
		- [ ] Add transport processes
		- [ ] Add dummy processes
		- [ ] Add costs or other information?
	- [ ] Resources
		- [ ] Unify into different types
		- [ ] Assign qualities
		- [ ] Costs?
		- [ ] Exergy data
- [ ] Modelling
	- [ ] Scripts to build GAMS/CSV library of resources and processes
	- [ ] Script to build a model instance
		- [ ] Compare outcomes with different objectives (emissons, cost, exergy, energy, water, waste, etc.)
	- [ ] Script to copy the code to the cluster (add in all relevant files)
		- [ ] Pareto objectives
		- [ ] Sensitivity analysis
		- [ ] Phased infrastructure planning
		- [ ] More realistic/detailed Shann Gu related constraints
- [ ] Write paper
- [ ] Write Chapter

## More information

Please contact [Tom Ravalde](mailto:thomas.ravalde08@imperial.ac.uk)
