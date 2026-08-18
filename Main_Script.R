#######################################################################################################################
####################################### Instructions and Installation of necessary libraries ##########################

# Checking the installation, installing and loading the necessary libraries

##################################################
# PACKAGE CHECK + INSTALL + LOAD FUNCTION
##################################################

check_and_load <- function(pkg, version = NULL, bioc = FALSE, desc = "") {
  
  # Vérification installation
  
  if (!requireNamespace(pkg, quietly = TRUE)) {
    
    message(paste0("Installing package : ", pkg))
    
    if (bioc) {
      
      if (!requireNamespace("BiocManager", quietly = TRUE)) { # Checks whether a package is installed without loading it into the session
        install.packages("BiocManager")
      }
      
      BiocManager::install(pkg, ask = FALSE, update = FALSE)
      
    } else {
      
      install.packages(pkg)
      
    }
  }
  
  # Version check (optional)
  
  if (!is.null(version)) {
    
    current_version <- as.character(packageVersion(pkg))
    
    if (current_version != version) {
      
      warning(paste0(
        "Package ", pkg, " version mismatch : ",
        current_version, " (installed) vs ", version, " (expected)"
      ))
      
    }
  }
  
  # Loading
  
  suppressPackageStartupMessages(library(pkg, character.only = TRUE))
  
  # User information
  
  message(paste0("Loaded : ", pkg, 
                 ifelse(!is.null(version), paste0(" (", version, ")"), ""),
                 " → ", desc))
}

##################################################
# CRAN PACKAGES
##################################################

check_and_load("shiny", "1.12.1", FALSE, "Web application framework")
check_and_load("dplyr", "1.2.1", FALSE, "Data manipulation grammar")
check_and_load("ggplot2", "4.0.1", FALSE, "Data visualization")
check_and_load("tidyr", "1.3.2", FALSE, "Data reshaping")
check_and_load("stringr", "1.6.0", FALSE, "String manipulation")
check_and_load("tibble", "3.3.1", FALSE, "Modern data frames")
check_and_load("readxl", "1.4.5", FALSE, "Read Excel files")
check_and_load("jsonlite", "2.0.0", FALSE, "JSON parsing")
check_and_load("viridis", "0.6.5", FALSE, "Colorblind-friendly palettes")
check_and_load("ggrepel", "0.9.6", FALSE, "Non-overlapping labels")
check_and_load("ggtext", "0.1.2", FALSE, "Text Rendering Support for ggplot2")
check_and_load("factoextra", "2.2.0", FALSE, "Multivariate visualization")
check_and_load("matrixStats", "1.5.0", FALSE, "Efficient matrix stats")
check_and_load("e1071", "1.7.17", FALSE, "ML & stats tools")
check_and_load("patchwork", "1.3.2", FALSE, "Combine ggplots")
check_and_load("FactoMineR", "2.16", FALSE, "Multivariate analysis")
check_and_load("vegan", "2.7.2", FALSE, "Ecological statistics : PERMANOVA")
check_and_load("colourpicker", "1.3.0", FALSE, "Color picker for Shiny")
check_and_load("ggdendro", "0.2.0", FALSE, "Dendrogram plotting")
check_and_load("circlize", "0.4.17", FALSE, "Circular visualization")
check_and_load("cluster", "2.1.8.3", FALSE, "Clustering algorithms")
check_and_load("ranger", "0.18.0", FALSE, "Random Forest Algorithm")
check_and_load("gridExtra", "2.3", FALSE, "Combining multiple ggplot2 plots into a single image")
check_and_load("lme4", "1.1.38", FALSE, "Linear, Generalized Linear, and Nonlinear Mixed Models")
check_and_load("lmerTest", "3.2.0", FALSE, "Tests in Linear Mixed Effects Models : overload lme4")
check_and_load("future", "1.69.0", FALSE, "Future parallel processing")
check_and_load("future.callr", "1.0.0", FALSE, "Callr backend for future")
check_and_load("parallelly", "1.46.1", FALSE, "Parallel backend utilities")
check_and_load("future.apply", "1.20.1", FALSE, "Parallel Implementations of Common 'apply'")
check_and_load("VIM", "7.0.0", FALSE, "Missing data visualization/imputation")
check_and_load("reactable", "0.4.5", FALSE, "Interactive tables for data visualization")
check_and_load("caret", "7.0.1", FALSE, "Machine learning utilities")
check_and_load("openxlsx", "4.2.8.1", FALSE, "Process of writing and styling Excel xlsx files from R")
check_and_load("igraph", "2.2.1", FALSE, "Graph-based feature grouping")


##################################################
# BIOCONDUCTOR PACKAGES
##################################################

check_and_load("mzR", "2.44.0", TRUE, "Mass spectrometry data access")
check_and_load("MSnbase", "2.36.0", TRUE, "MS data processing")
check_and_load("xcms", "4.8.0", TRUE, "LC-MS preprocessing")
check_and_load("BiocParallel", "1.44.0", TRUE, "Parallel computing")
check_and_load("impute", "1.84.0", TRUE, "Missing value imputation")
check_and_load("imputeLCMD", "2.1", TRUE, "Missing value imputation (LC-MS)")
check_and_load("ComplexHeatmap", "2.26.1", TRUE, "Advanced heatmaps")
check_and_load("ropls", "1.42.0", TRUE, "OPLS / PLS multivariate models")
check_and_load("Spectra", "1.20.1", TRUE, "Manage and Access MS data")
check_and_load("MsCoreUtils", "1.22.1", TRUE, "Mass spectrometry utilities")
check_and_load("MsBackendMgf", "1.12.0", TRUE, "Import/export of MS/MS spectra in MGF format")
check_and_load("MsBackendMsp", "1.16.0", TRUE, "Import/export of MS/MS spectra in MSP format")

#######################################################################################################################
############################################### Loading modules functions #############################################

# Locates the source file and sets the working directory

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

source(file = "Modules.R")


#######################################################################################################################
###################################  Initialization + FileTree + Metadata  #############################################


source(file = "Initialization.R")


##########################################################################################################
##########################################################################################################



# ==============================================================================
# ==============================================================================
#                               PRE-PROCESSING
# ==============================================================================
# ==============================================================================



##########################################################################################################
##########################################################################################################
##########################################################################################################
##################################### Peak Picking + Isotopic Grouping ###################################

# Function

peak_picking_results <- perform_peak_picking_centwave(file_list_tot = file_list_tot, param_folder = param_folder)


# Results

if (!is.null(peak_picking_results)) {
  xdata_peaks <- peak_picking_results$xdata_peaks
  standards <- peak_picking_results$standards
}

# CHECKPOINT — AFTER PEAK PICKING
##
###

save.image(file = file.path(Save_secu_folder, "After_Peak_Picking.RData"), compress = "gzip", safe = T)


##########################################################################################################
####################################### Retention Time Alignment #########################################

# Function

alignment_results <- perform_obiwarp_alignment(
  xdata_peaks = xdata_peaks,
  qc_names = qc_names,
  param_folder = param_folder,
  standards = standards
)

# Results

if (!is.null(alignment_results)) {
  xdata_aligned <- alignment_results$aligned_data
}


# CHECKPOINT — AFTER ALIGNMENT
##
###

save.image(file = file.path(Save_secu_folder, "After_Alignment.RData"), compress = "gzip", safe = T)


##########################################################################################################
########################################   Peak Grouping  ################################################

# Function

grouping_results <- perform_feature_grouping(
  xdata_aligned = xdata_aligned,
  metadata_table = metadata_table,
  param_folder = param_folder,
  chart_folder = chart_folder,
  standards = standards
)

# Results

if (!is.null(grouping_results)) {
  xdata_grouped <- grouping_results$grouped_data
}

# CHECKPOINT — AFTER GROUPING
##
###

save.image(file = file.path(Save_secu_folder, "After_Grouping.RData"), compress = "gzip", safe = T)


##########################################################################################################
####################################### Overview of Pre-processing : Standards  ##########################


# Function

visualization_results <- create_individual_standard_pdfs(
  peak_picking_results = peak_picking_results,
  alignment_results = alignment_results,
  grouping_results = grouping_results,
  chart_folder = chart_folder,
  standards = standards
)


##########################################################################################################
########################################     Gap Filling     #############################################

# Function

gap_filling_results <- perform_gap_filling(xdata_grouped, param_folder, standards)

# Results

if (!is.null(gap_filling_results)) {
  xdata_filled <- gap_filling_results$xdata_filled
}

# CHECKPOINT — AFTER GAP FILLING
##
###

save.image(file = file.path(Save_secu_folder, "After_Gap_Filling.RData"), compress = "gzip", safe = T)


##########################################################################################################
###################################        Adduct and Isotope Research     ###############################

# Function

find_adducts_result <- find_adducts(xdata_filled, blank_names)

# Results

if (!is.null(find_adducts_result)) {
  feature_metadata_Wadduct <- find_adducts_result$feature_definitions
  raw_intensity_matrix <- as.data.frame(find_adducts_result$merged_feature_intensities)
}

# CHECKPOINT — AFTER GAP FILLING
##
###

save.image(file = file.path(Save_secu_folder, "After_Adduct_Research.RData"), compress = "gzip", safe = T)


##########################################################################################################
####################################### MS2 spectra exportation (.MSP, .MGF)  ############################

# Function

export_MS2_spectra_res <- export_MS2_spectra(xdata_filled = xdata_filled,
                                         param_folder = param_folder,
                                         data_folder = data_folder) 


if (!is.null(export_MS2_spectra_res)) {
  ms2_consensus <- export_MS2_spectra_res$ms2_consensus
  
}


##########################################################################################################
################################ Intensity Matrix and Feature_metadata Preparation #######################

# Creating columns : feature_idx and feature code names

feature_metadata <- feature_metadata_Wadduct %>% filter(fused == FALSE) %>% 
  mutate(feat_code = paste0("M",round(mzmed, 4),"T",round(rtmed, 2)))


if(!is.null(export_MS2_spectra_res)){
  
  # GNPS raw matrix creation
  
  feature_metadata_GNPS2 <- feature_metadata[intersect(rownames(feature_metadata), ms2_consensus@backend@spectraData$FEATURE_ID),
                                             c("mzmed", "mzmin", "mzmax", "rtmed", "rtmin", "rtmax")] # Restrict the feature metadata to features with MS2 spectra
  
  
  raw_intensity_matrix_GNPS2 <- raw_intensity_matrix[intersect(rownames(raw_intensity_matrix), ms2_consensus@backend@spectraData$FEATURE_ID), ] # Restrict the feature abundance matrix to features with MS2 spectra
  
  raw_intensity_matrix_GNPS2 <- cbind(Row.names = rownames(raw_intensity_matrix_GNPS2), # Combine with the feature value table
                                      feature_metadata_GNPS2, raw_intensity_matrix_GNPS2)
  
}

# Cleaning sample names

colnames(raw_intensity_matrix) <- str_remove(colnames(raw_intensity_matrix), "\\.mzML$")


# Data save

saveRDS(feature_metadata, file = paste0(data_folder, "/1_Pre-processing/feature_metadata_plus_indexs.rds")) # Saving peak indices as a list

write.csv(feature_metadata %>% select(-peakidx),   # Removal of peak indices (list form can not be exported)
          file = paste0(data_folder, "/1_Pre-processing/feature_metadata_Wadduct.csv"), row.names = TRUE)

write.csv(raw_intensity_matrix, file = paste0(data_folder, "/1_Pre-processing/raw_intensity_matrix.csv"), row.names = TRUE)

if(!is.null(export_MS2_spectra_res)){
  write.table(raw_intensity_matrix_GNPS2, file = paste0(data_folder, "/1_Pre-processing/MS2_export/raw_intensity_matrix_GNPS2.txt"), sep = "\t",
              quote = FALSE, row.names = FALSE)
}


##########################################################################################################
##########################################################################################################


# CHECKPOINT — AFTER PRE-PROCESSING
##
###


save.image(file = file.path(Save_secu_folder, "After_Pre_Processing.RData"), compress = "gzip", safe = T)



##########################################################################################################
##########################################################################################################




# ==============================================================================
# ==============================================================================
#                               PROCESSING
# ==============================================================================
# ==============================================================================




##########################################################################################################
##########################################################################################################
##########################################################################################################
################################ Selection of the valid retention time range  ############################

# Function

RT_results <- filter_by_RT_window(
  raw_intensity_matrix = raw_intensity_matrix,
  feature_metadata = feature_metadata,
  param_folder = param_folder,
  data_folder = data_folder
)

# Results

if (!is.null(RT_results)) {
  RT_filtered_data <- RT_results$filtered_data
  rt_parameters <- RT_results$rt_parameters
}

step_df <- RT_filtered_data


##########################################################################################################
############################       Quality Control : Internal Standard     ###############################

# Function

standard_intensity_injection <- plot_standard_intensity_injection(input_data = step_df,
                                                                  feature_metadata = feature_metadata,
                                                                  metadata_table = metadata_table, 
                                                                  standards = standards, 
                                                                  param_folder = param_folder, 
                                                                  data_folder = data_folder)
  
  
##########################################################################################################
#####################     Quality Control : Total Intensity (after Pre-Processing)     ###################

# Function

quali_contr_pre_process_results <- plot_total_intensity_injection(
  input_data = step_df,
  metadata_table = metadata_table,
  blank_names = blank_names,
  bio_names = bio_names,
  qc_names = qc_names,
  param_folder = param_folder,
  data_folder = data_folder,
  save_text = "Pre_processing"
)

##########################################################################################################
########################### Filtering of samples known as “extreme outliers”  ############################
  
# Function

outlier_results <- filter_sample_outliers(
  input_data = step_df,
  blank_names = blank_names,
  bio_names = bio_names,
  qc_names = qc_names,
  data_folder = data_folder,
  chart_folder = chart_folder
)

# Results

if (!is.null(outlier_results)) {
  Outliers_filtered_data <- outlier_results$filtered_data
  outliers <- outlier_results$outliers
  outlier_chart <- outlier_results$outlier_chart
  bio_without_outliers <- outlier_results$bio_without_outliers
  qc_without_outliers <- outlier_results$qc_without_outliers
}

step_df <- Outliers_filtered_data

##########################################################################################################
###################################    Percentage of missing values filter  ##############################

# Call the function

miss_val_results <- filter_by_missing_values(
  input_data = step_df,
  bio_names = bio_without_outliers,
  qc_names = qc_without_outliers,
  metadata_table = metadata_table,
  data_folder = data_folder,
  chart_folder = chart_folder
)

# Access results

if (!is.null(miss_val_results)) {
  step_df  <- miss_val_results$filtered_data
  miss_val_params <- miss_val_results$miss_val_params
  miss_val_chart <- miss_val_results$miss_val_chart
}


##########################################################################################################
##################################    Imputation of missing values    ####################################
  
# Function

imputation_results <- perform_imputation(
  step_df,
  qc_without_outliers,
  bio_without_outliers,
  param_folder,
  data_folder,
  chart_folder
)

# Results

if (!is.null(imputation_results)) {
  step_df <- imputation_results$imputed_data
  imputation_params <- imputation_results$imputation_params
  validation_results <- imputation_results$validation_results
  imputation_summary <- imputation_results$imputation_summary
}

##########################################################################################################
#  🚨🚨🚨  POST-IMPUTATION OUTPUT CHECKPOINT  🚨🚨🚨
##########################################################################################################
#  DATA STATUS : IMPUTED DATASET READY FOR STATISTICAL ANALYSIS
#
#  This is the official output point for downstream analyses.
#
#  All further processing steps (QC filtering, LOESS correction, normalization) act on
#  this dataset if required.

##########################################################################################################



##########################################################################################################
###################################  Pre-LOESS/Normalization permissive CV filtering  ####################

# Function

CV_results_pre_LOESS <- apply_permissive_CV_filter(
  input_data = step_df,
  qc_names = qc_without_outliers,
  metadata_table = metadata_table,
  param_folder = param_folder,
  data_folder = data_folder
)

# Results

if (!is.null(CV_results_pre_LOESS)) {
  step_df <- CV_results_pre_LOESS$filtered_data
}



##########################################################################################################
###################################  Intra-batch drift correction : LOESS  ###############################

# Function

loess_results <- apply_loess_drift_correction(
  input_data = step_df,
  metadata_table = metadata_table,
  qc_names = qc_without_outliers,
  param_folder = param_folder,
  data_folder = data_folder,
  chart_folder = chart_folder
)

# Results

if (!is.null(loess_results)) {
  step_df <- loess_results$adjusted_data
}

##########################################################################################################
###################################  Pre-Normalization strict CV filtering (TIC only)  ###################

tic_decision <- ask_about_TIC_normalization()

if (is.null(tic_decision)) {
  message("Normalization selection canceled by user.")
}

if(tic_decision == TRUE){
  
  # Function
  
  CV_results_pre_TIC <- apply_strict_CV_filter(
    input_data = step_df,
    qc_names = qc_without_outliers,
    metadata_table = metadata_table,
    param_folder = param_folder,
    data_folder = data_folder
  )
  
  # Results
  
  if (!is.null(CV_results_pre_TIC)) {
    step_df <- CV_results_pre_TIC$filtered_data
  }
}

##########################################################################################################
#########################################  Data Normalization  ###########################################

# Function

normalization_results <- perform_normalization(
  input_data = step_df,
  metadata_table = metadata_table,
  qc_names = qc_without_outliers,
  param_folder = param_folder,
  data_folder = data_folder,
  chart_folder = chart_folder,
  tic_decision = tic_decision
)

# Results

if(!is.null(normalization_results)) {
  step_df <- normalization_results$normalized_data
}

##########################################################################################################
######################      Post-Normalization strict CV filtering (TIC excluded)     ####################


if(tic_decision == FALSE){
  
  # Function
  
  CV_results_post_norma <- apply_strict_CV_filter(
    input_data = step_df,
    qc_names = qc_without_outliers,
    metadata_table = metadata_table,
    param_folder = param_folder,
    data_folder = data_folder
  )
  
  # Results
  
  if (!is.null(CV_results_post_norma)) {
    step_df <- CV_results_post_norma$filtered_data
  }
  
}


##########################################################################################################
#####################     Quality Control : Total Intensity (after Normalization)     ####################

# Function

quali_contr_norma_results <- plot_total_intensity_injection(
  input_data = step_df,
  metadata_table = metadata_table,
  blank_names = blank_names,
  bio_names = bio_without_outliers,
  qc_names = qc_without_outliers,
  param_folder = param_folder,
  data_folder = data_folder,
  save_text = "After_norma"
)


##########################################################################################################
#####################################    Data transformation   ###########################################
  
# Function

transformation_results <- perform_data_transformation(
  input_data = step_df,
  bio_names = bio_without_outliers,
  qc_names = qc_without_outliers,
  param_folder = param_folder,
  data_folder = data_folder,
  chart_folder = chart_folder,
  epsilon = 1e-9,
  tic_decision = tic_decision
)

# Results

if (!is.null(transformation_results)) {
  step_df <- transformation_results$transformed_data
}


##########################################################################################################
######################################    Data Scaling    ################################################

# Function

scaling_results <- perform_data_scaling(
  input_data = step_df,
  qc_names = qc_without_outliers,
  non_normal_prop_BIO = transformation_results$non_normal_prop_BIO,
  non_normal_prop_QC = transformation_results$non_normal_prop_QC,
  skewness_values = transformation_results$skewness_values,
  kurtosis_values = transformation_results$kurtosis_values,
  skew_kurto_plot = transformation_results$skew_kurto_plot,
  data_folder = data_folder
)

# Results

if (!is.null(scaling_results)) {
  Final_output <- scaling_results$scaled_data
  pre_scaled_matrix <- scaling_results$pre_scaled_matrix
}



##########################################################################################################
###########################    Quality Control : PCA on QC samples  ######################################

# Function 

res_pca_qc <- run_pca_qc(input_data = Final_output,
                         metadata_table = metadata_table,
                         qc_names = qc_without_outliers, 
                         bio_names = bio_without_outliers,
                         data_folder = data_folder,
                         param_folder = param_folder,
                         chart_folder = chart_folder)



# CHECKPOINT — AFTER SCALING
##
###

save.image(file = file.path(Save_secu_folder, "After_Scaling.RData"), compress = "gzip", safe = T)


##########################################################################################################
##########################################################################################################


# ==============================================================================
# ==============================================================================
#                               ANNOTATION
# ==============================================================================
# ==============================================================================


##########################################################################################################
####################################### In-house Annotation ##############################################


In_house_annot_res <- annotate_inhouse(
  export_MS2_spectra_res$ms2_consensus,
  param_folder,
  data_folder
)


##########################################################################################################
####################################### GNPS Annotation ##################################################


GNPS_annot_res <- annotate_features_GNPS(
  param_folder          = param_folder,
  data_folder           = data_folder
)


##########################################################################################################
##################################   Compound Discoverer Annotation    ###################################

# Function

CD_annot_res <- perform_annotation_Compound_Discoverer(
  feature_metadata = feature_metadata,
  data_folder = data_folder,
  param_folder = param_folder
)


##########################################################################################################
##################################   Creating the summary annotation table  ##############################


has_inhouse <- !is.null(In_house_annot_res) &&
  nrow(In_house_annot_res$annotation_results) > 0

has_gnps <- !is.null(GNPS_annot_res) &&
  nrow(GNPS_annot_res) > 0

has_cd <- !is.null(CD_annot_res) &&
  nrow(CD_annot_res$Compound_Discoverer_annotation_results) > 0

has_annotation <- has_inhouse || has_gnps || has_cd


if (has_annotation) {
  
  # Initialization 
  
  Annotation_summary_table <- feature_metadata %>%
    rownames_to_column(var = "feature_id") %>%
    mutate(feature_idx = as.integer(sub("^FT", "", feature_id))) %>%
    select(feature_idx, feature_id, Feature_name_code = feat_code)
  
  # In house
  
  if (!is.null(In_house_annot_res) && nrow(In_house_annot_res$annotation_results) > 0) {
    
    Annotation_summary_table <- Annotation_summary_table %>%
      left_join(
        In_house_annot_res$annotation_results %>%
          select(feature_id, In_house_name = best_match),
        by = "feature_id"
      )
  }
  
  # GNPS2
  
  if (!is.null(GNPS_annot_res) && nrow(GNPS_annot_res) > 0) {
    Annotation_summary_table <- Annotation_summary_table %>%
      left_join(
        GNPS_annot_res %>%
          select(feature_id, GNPS_name = Compound_Name),
        by = c("feature_idx" = "feature_id")
      )
    
  }
  
  # Compound Discoverer
  
  if (!is.null(CD_annot_res) && nrow(CD_annot_res$Compound_Discoverer_annotation_results) > 0) {
    
    Annotation_summary_table <- Annotation_summary_table %>%
      left_join(
        CD_annot_res$Compound_Discoverer_annotation_results %>%
          select(Feature_name, Compound_Discoverer_name = Matched_metabolite),
        by = c("feature_id" = "Feature_name")
      )
  }
  
  # Creating a column with a unique name
  
  annotation_cols <- intersect(
    c("In_house_name",
      "GNPS_name",
      "Compound_Discoverer_name"),
    colnames(Annotation_summary_table)
  )
  
  Annotation_summary_table <- Annotation_summary_table %>%
    mutate(
      Global_unique_name = dplyr::coalesce(
        !!!rlang::syms(c(
          annotation_cols,
          "Feature_name_code",
          "feature_id"
        ))
      ),
      Only_annot_unique_name = dplyr::coalesce(
        !!!rlang::syms(c(
          annotation_cols
        ))
      )
    )
  
  
  ##########################################################################################################
  ##################################   Adding annotations to the matrix  ###################################
  
  # Left_join to change the rownames : name_code
  
  pre_scaled_matrix <- as.data.frame(t(pre_scaled_matrix)) %>%
    tibble::rownames_to_column("feature_id") %>%
    left_join(
      Annotation_summary_table[, c("feature_id", "Feature_name_code")],
      by = "feature_id"
    )
  
  rownames(pre_scaled_matrix) <- make.unique(
    pre_scaled_matrix$Feature_name_code,
    sep = "_#"
  )
  
  pre_scaled_matrix <- pre_scaled_matrix %>%
    select(-any_of(c(
      "Feature_name_code",
      "feature_id"
    ))) %>% t()
  
  # Version with annotated features and features with name code : complete
  
  Final_output_annotated_complete <- as.data.frame(Final_output) %>%
    tibble::rownames_to_column("feature_id") %>%
    left_join(
      Annotation_summary_table[, c("feature_id", "Global_unique_name")],
      by = "feature_id"
    )
  
  rownames(Final_output_annotated_complete) <- make.unique(
    Final_output_annotated_complete$Global_unique_name,
    sep = "_#"
  )
  
  Final_output_annotated_complete <- Final_output_annotated_complete %>%
    select(-any_of(c(
      "Global_unique_name"
    )))
  
  
  # Version only with annotated features : subset
  
  
  Final_output_annotated <- as.data.frame(Final_output) %>%
    tibble::rownames_to_column("feature_id") %>%
    left_join(
      Annotation_summary_table[, c("feature_id", "Only_annot_unique_name")],
      by = "feature_id"
    ) %>%
    filter(!is.na(Only_annot_unique_name))
  
  rownames(Final_output_annotated) <- make.unique(
    Final_output_annotated$Only_annot_unique_name,
    sep = "_#"
  )
  
  Final_output_annotated <- Final_output_annotated %>%
    select(-any_of(c(
      "Only_annot_unique_name"
    )))
  
  
  
  # Save 
  
  write.csv(Annotation_summary_table, file = paste0(data_folder, "/3_Annotation/Annotation_summary_table.csv"),
            row.names = FALSE)
  
  ##########################################################################################################
  ##########################################################################################################
  
  # CHECKPOINT — AFTER ANNOTATION
  ##
  ###
  
  save.image(file = file.path(Save_secu_folder, "After_Annotation.Rdata"), compress = "gzip", safe = T)
  
  message("Annotation completed successfully.")
  
} else {
  
  message("No annotation was performed. Skipping annotation summary and annotated outputs.")
  
}


##########################################################################################################
##########################################################################################################



# ==============================================================================
# ==============================================================================
#                               STATISTICAL ANALYSIS
# ==============================================================================
# ==============================================================================



##########################################################################################################
##########################################################################################################
##########################################################################################################
##################################      Statistical Analysis     #########################################

# Function

options(error = browser) 
run_all_hypotheses(metadata_table = metadata_table,
                   pre_scaled_matrix = pre_scaled_matrix,
                   Final_output = Final_output, 
                   Final_output_annotated = if (exists("Final_output_annotated")) Final_output_annotated else NULL, 
                   Final_output_annotated_complete = if (exists("Final_output_annotated_complete")) Final_output_annotated_complete else NULL, 
                   Annotation_summary_table = if (exists("Annotation_summary_table")) Annotation_summary_table else NULL,
                   chart_folder = chart_folder,
                   data_folder = data_folder, 
                   param_folder = param_folder,
                   outliers = outliers)


##########################################################################################################
##########################################################################################################
##########################################################################################################
#############################   🚨🚨🚨   DASHBOARD VIEWING  🚨🚨🚨   #####################################

#--------------------------
# Use it however you like, as many times as you like, by re-running these lines

# If your R environment is no longer the same as the one used in your study,
# first reload the required libraries, then use the load() function.
# Example: load("<your_path>/Rdata_checkpoint/...")

#--------------------------

# Function

hypothesis_RDS_path <- file.path(data_folder, "Hypothesis_RDS")

hypothesis_RDS <- select_and_run_dashboard(folder_path = hypothesis_RDS_path)

run_global_stats_dashboard(hypothesis_RDS, if (exists("feature_table")) feature_table else NULL)

