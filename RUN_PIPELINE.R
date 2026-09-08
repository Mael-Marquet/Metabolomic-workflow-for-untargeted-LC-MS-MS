##################################################
# METABOLOMICS WORKFLOW - PIPELINE EXECUTION
##################################################
#
# This is the MAIN ENTRY POINT for running the complete
# metabolomics analysis pipeline.

# Set working directory to script location
script_dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(script_dir)

source("Main_Script.R")

message("\n✓ Pipeline execution completed!")
