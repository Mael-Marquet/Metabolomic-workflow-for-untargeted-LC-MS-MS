##################################################
# METABOLOMICS WORKFLOW - PIPELINE EXECUTION
##################################################
#
# This is the MAIN ENTRY POINT for running the complete
# metabolomics analysis pipeline.

# Set working directory to script location

file_arg <- grep("--file=", commandArgs(trailingOnly = FALSE), value = TRUE)
if (length(file_arg) > 0) {
  script_dir <- dirname(sub("--file=", "", file_arg))
} else if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
  script_dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
} else {
  script_dir <- getwd()
}

setwd(script_dir)

source("Main_Script.R")

message("\n✓ Pipeline execution completed !")
