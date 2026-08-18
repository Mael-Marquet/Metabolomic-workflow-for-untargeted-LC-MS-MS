
<p align="center">

<img src="assets/logo_gexim.png" height="300"/>

</p>

# Dynamic Metabolomics Workflow for Untargeted LC-MS/MS

**Author :** Maël Marquet — <mael.marquet@univ-grenoble-alpes.fr>  
**Affiliation :** GExiM (Grenoble Expertise in Metabolomics), TrEE
(Translational Microbiology - Evolution - Engineering), UMR 5525 TIMC
(Recherche Translationnelle et Innovation en Médecine et Complexité),
Université Grenoble Alpes  
**License :** MIT  
**Status :** Active development

------------------------------------------------------------------------

## Overview

This repository provides a dynamic and user-guided workflow for
untargeted LC-MS/MS metabolomics data processing and analysis. The
pipeline is designed to be reproducible, modular, and accessible to both
beginner and advanced R users.

The workflow covers the full analysis chain : from `.mzML` file import
to statistical analysis, with interactive Shiny-based guidance at key
steps.

------------------------------------------------------------------------

## Pipeline Steps

**1. Installation and loading of required libraries**

**2. Loading of the R script containing functions and modules**

**3. Initialization**

- Folder tree creation
- Metadata import (Excel or CSV)
- Metadata creation guidance via the Shiny interface
- Retrieval of `.mzML` file paths

**4. Pre-processing**

- Peak detection : `centWave`

- Retention time alignment : `obiwarp`

- Feature grouping : `PeakDensity`

**5. Processing**

- **Filtering :** Retention time range, Missing values, Pre-LOESS /
  permissive CV, Pre-normalization strict CV (TIC only),
  Post-normalization strict CV (TIC excluded)

- **Quality control :** Total intensity QC after pre-processing, Outlier
  filtering, Total intensity QC after normalization, PCA on QC samples

- **Correction & Normalization :** Missing value imputation, Intra-batch
  drift correction (LOESS), Data normalization

- **Transformation :** Data transformation and Scaling

**6. Feature annotation**

- Currently performed using the export table from Compound Discoverer

**7. Statistical analysis**

- **Univariate** : PCA, HCPC, Heatmap

- **Multivariate** : RF, OPLS-DA, PLS-DA, Volcano plot

**8. General summary**

------------------------------------------------------------------------

## Requirements

### R version

This workflow requires **R 4.5.2** (2025-10-31 ucrt) or later.

### CRAN packages

The following packages are automatically installed and loaded by the
main script:

| Package      | Version | Role                                      |
|--------------|---------|-------------------------------------------|
| shiny        | 1.12.1  | Interactive interface                     |
| dplyr        | 1.2.1   | Data manipulation                         |
| ggplot2      | 4.0.1   | Data visualization                        |
| tidyr        | 1.3.2   | Data reshaping                            |
| stringr      | 1.6.0   | String manipulation                       |
| tibble       | 3.3.1   | Modern data frames                        |
| readxl       | 1.4.5   | Read Excel files                          |
| jsonlite     | 2.0.0   | JSON parsing                              |
| viridis      | 0.6.5   | Colorblind-friendly palettes              |
| ggrepel      | 0.9.6   | Non-overlapping labels                    |
| ggtext       | 0.1.2   | Text Rendering Support for ggplot2        |
| factoextra   | 2.2.0   | Multivariate visualization                |
| matrixStats  | 1.5.0   | Efficient matrix statistics               |
| e1071        | 1.7.17  | ML & stats tools                          |
| patchwork    | 1.3.2   | Combine ggplots                           |
| FactoMineR   | 2.16    | Multivariate analysis                     |
| vegan        | 2.7.2   | Ecological statistics (PERMANOVA)         |
| colourpicker | 1.3.0   | Color picker for Shiny                    |
| ggdendro     | 0.2.0   | Dendrogram plotting                       |
| circlize     | 0.4.17  | Circular visualization                    |
| cluster      | 2.1.8.3 | Clustering algorithms                     |
| ranger       | 0.18.0  | Random Forest                             |
| gridExtra    | 2.3     | Combine plots                             |
| lme4         | 1.1.38  | Mixed effects models                      |
| lmerTest     | 3.2.0   | Tests for mixed models                    |
| future       | 1.69.0  | Future parallel processing                |
| future.callr | 1.0.0   | Callr backend for future                  |
| parallelly   | 1.46.1  | Parallel backend utilities                |
| future.apply | 1.20.1  | Parallel apply functions                  |
| VIM          | 7.0.0   | Missing data visualization and imputation |
| reactable    | 0.4.5   | Interactive tables                        |
| caret        | 7.0.1   | Machine learning utilities                |
| openxlsx     | 4.2.8.1 | Write and style Excel files               |
| igraph       | 2.2.1   | Graph-based feature grouping              |

### Bioconductor packages

| Package        | Version | Role                                         |
|----------------|---------|----------------------------------------------|
| mzR            | 2.44.0  | Mass spectrometry data access                |
| MSnbase        | 2.36.0  | MS data processing                           |
| xcms           | 4.8.0   | LC-MS preprocessing                          |
| BiocParallel   | 1.44.0  | Parallel computing                           |
| impute         | 1.84.0  | Missing value imputation                     |
| imputeLCMD     | 2.1     | Missing value imputation (LC-MS)             |
| ComplexHeatmap | 2.26.1  | Advanced heatmaps                            |
| ropls          | 1.42.0  | OPLS-DA / PLS-DA models                      |
| Spectra        | 1.20.1  | Manage and Access MS data                    |
| MsCoreUtils    | 1.22.1  | Mass spectrometry utilities                  |
| MsBackendMgf   | 1.12.0  | Import/export of MS/MS spectra in MGF format |
| MsBackendMsp   | 1.16.0  | Import/export of MS/MS spectra in MSP format |

All packages are installed automatically by the main script via the
`check_and_load()` function. No manual installation is required.

### Installing on a new computer (step-by-step)

If you are starting from a computer with nothing installed, follow these
steps in order.

**1. Install R**

Download and install R from
[CRAN](https://cran.r-project.org/) (choose your operating system —
Windows, macOS, or Linux). Use the latest version (R 4.5.2 or later).

**2. Install RStudio**

Download and install [RStudio Desktop](https://posit.co/download/rstudio-desktop/)
(free version). This is the interface you will use to run R code.

**3. Install Git**

Git is required to download (clone) the repository from GitHub.

- Windows : download and install [Git for Windows](https://git-scm.com/download/win)
- macOS : open Terminal and run `git --version` — this usually prompts
  installation automatically
- Linux : run `sudo apt install git` (Debian/Ubuntu) or the equivalent
  for your distribution

**4. Clone the repository**

Open RStudio, then go to **File > New Project > Version Control > Git**,
and paste the repository URL :

```
https://github.com/Mael-Marquet/Metabolomic-workflow-for-untargeted-LC-MS-MS.git
```

Choose a folder on your computer and click **Create Project**. RStudio
will download the repository and open it automatically.

*(Alternative : open a terminal, run
`git clone https://github.com/Mael-Marquet/Metabolomic-workflow-for-untargeted-LC-MS-MS.git`, then
open the `.Rproj` file inside the downloaded folder.)*

**5. Restore the exact package environment**

The repository includes a `renv.lock` file that records the exact
version of every package used during development, so your environment
matches the one this workflow was built and tested on.

The following files are already included in the repository — no manual
setup needed :

- `renv.lock` — the snapshot of all package versions
- `renv/` — the renv internal folder
- `.Rprofile` — automatically activates renv when the project is opened

Once the project is open in RStudio, run in the R console :

``` r
install.packages("renv")
renv::restore()
```

This installs every package at the correct version into a project-local
library. It can take a while the first time, depending on your
connection.

This step is optional — the `check_and_load()` function in the main
script can also install missing packages on its own. Use
`renv::restore()` only if you need a guaranteed identical environment
to the one used for development.

------------------------------------------------------------------------

## Input Files

The workflow expects the following input files:

### Raw data

- `.mzML` files for LC-MS/MS raw data

### Metadata file

- Format : **Excel (`.xlsx`)** or **CSV (`.csv`)**
- The Shiny interface provides guidance for creating and validating this
  file
- A guide containing instructions, along with an example, will be
  provided when the code is run.

------------------------------------------------------------------------

## How to Use

### Step-by-step

The full script can be executed at once using : `Ctrl + A` then
`Ctrl + Enter` (recommended if you’re a beginner)

1.  Open the main execution script `Main_Script.R`.
2.  Run the installation and loading section.
3.  Follow the interactive Shiny windows when they appear.
4.  Press **Submit** in each window to validate choices and save
    parameters.
5.  Continue through the pipeline step by step.

*It is still recommended to run step by step at least once to understand
each stage.*

------------------------------------------------------------------------

## Important Notes

- **Do not modify the code during execution** unless you know what you
  are doing.

- Always press **Submit** when the figure or result you want to save is
  displayed.

- Outputs are **saved automatically**.

- Safety R Data Checkpoints can be used to re-run specific steps without
  restarting from scratch.

- When a Shiny page becomes **grayed out**, the current step is
  finished. Close or leave the page and return to the R code to proceed
  with the next step.

To restore the data at a specific step :

``` r
load(file = "Rdata_checkpoint/'your_choice'.RData")
```

------------------------------------------------------------------------

## Outputs

The workflow automatically generates and saves:

- Processed feature tables
- Quality control plots (pre- and post-normalization)
- Normalization and drift correction results
- Statistical analysis figures (PCA, heatmap, volcano plot, etc.)
- Annotation tables
- General summary report

------------------------------------------------------------------------

## User Guidance

A Shiny-based interface is included to help users:

- Create or validate the metadata file
- Follow step-by-step execution instructions
- Understand the workflow structure
- Navigate advanced or partial execution safely

------------------------------------------------------------------------

## Limitations and Roadmap

- Feature annotation is currently limited to the **Compound Discoverer**
  export table (proprietary software, Thermo Fisher Scientific).
  Integration with open-source annotation tools (e.g., MZmine) is
  planned for future versions.
- Example datasets are not yet included in the repository but are
  planned.

------------------------------------------------------------------------

## License

This project is licensed under the **MIT License**. See the
[LICENSE](LICENSE) file for details.

------------------------------------------------------------------------

## Contact

**Maël Marquet**  
GExiM (Grenoble Expertise in Metabolomics)  
TrEE (Translational Microbiology - Evolution - Engineering)  
UMR 5525 TIMC, Université Grenoble Alpes  
<mael.marquet@univ-grenoble-alpes.fr>

For questions, suggestions, or collaboration, feel free to reach out by
email or open an issue on GitHub once the repository is made public.
