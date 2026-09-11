########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

# Metadata Example Creation

create_metadata_example <- function(metadata_folder) {
  
  example_df <- data.frame(
    
    
    MassiveID     = c("MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673",
                      "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673",
                      "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673",
                      "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673",
                      "MSV000080673", "MSV000080673", "MSV000080673", "MSV000080673"),
    
    Country       = c("France", "France", "France", "France", "France",
                      "France", "France", "France", "France", "France",
                      "France", "France", "France", "France", "France",
                      "France", "France", "France", "France", "France",
                      "France", "France", "France", "France"),
    
    YearOfAnalysis = c("2025", "2025", "2025", "2025", "2025",
                       "2025", "2025", "2025", "2025", "2025",
                       "2025", "2025", "2025", "2025", "2025",
                       "2025", "2025", "2025", "2025", "2025",
                       "2025", "2025", "2025", "2025"),
    
    MassSpectrometer = c("Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634",
                       "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634",
                       "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634",
                       "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634",
                       "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634", "Q Exactive Plus|MS:1002634"),
    
    SampleCollectionMethod = c("swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)",
                         "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)",
                         "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)",
                         "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)",
                         "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)", "swabs, solution (95% EtOH)"),
    
    SampleExtractionMethod = c("methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)",
                         "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)",
                         "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)",
                         "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)",
                         "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)", "methanol-water (4:1)"),
    
    IonizationSourceAndPolarity = c("electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)",
                               "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)",
                               "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)",
                               "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)",
                               "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)", "electrospray ionization (positive)"),
    
    ChromatographyAndPhase = c("reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)",
                                    "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)",
                                    "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)",
                                    "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)",
                                    "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)", "reverse phase (C18)"),
    
    NCBITaxonomy          = c("9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens",
                               "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens",
                               "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens",
                               "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens",
                               "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens", "9606|Homo sapiens"),
    
    UBERONBodyPartName    = c("blood plasma", "blood plasma", "blood plasma", "blood plasma", "blood plasma",
                               "blood plasma", "blood plasma", "blood plasma", "blood plasma", "blood plasma",
                               "blood plasma", "blood plasma", "blood plasma", "blood plasma", "blood plasma",
                               "blood plasma", "blood plasma", "blood plasma", "blood plasma", "blood plasma",
                               "blood plasma", "blood plasma", "blood plasma", "blood plasma"),
    
    HealthStatus          = c("chronic illness", "chronic illness", "chronic illness", "chronic illness", "chronic illness",
                               "chronic illness", "chronic illness", "chronic illness", "chronic illness", "chronic illness",
                               "chronic illness", "chronic illness", "chronic illness", "chronic illness", "chronic illness",
                               "chronic illness", "chronic illness", "chronic illness", "chronic illness", "chronic illness",
                               "chronic illness", "chronic illness", "chronic illness", "chronic illness"),
   
    DOIDCommonName        = c("cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis",
                               "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis",
                               "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis",
                               "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis",
                               "cystic fibrosis", "cystic fibrosis", "cystic fibrosis", "cystic fibrosis"),
    			
    filename       = c("QC01.mzML", "1M0.mzML", "QCdil16_a.mzML", "QCdil8_a.mzML", "QCdil4_a.mzML",
                       "5M0.mzML", "Blank01.mzML", "2M0.mzML", "QC02.mzML", "4M0.mzML",
                       "3M0.mzML", "1M3.mzML", "5M3.mzML", "QC03.mzML", "Blank02.mzML",
                       "2M3.mzML", "6M0.mzML", "3M6.mzML", "4M6.mzML", "QC04.mzML",
                       "5M12.mzML", "6M6.mzML", "3M12.mzML", "QC05.mzML"),
    
    SampleName     = c("QC01", "1M0", "QCdil16_a", "QCdil8_a", "QCdil4_a",
                       "5M0", "Blank01", "2M0", "QC02", "4M0",
                       "3M0", "1M3", "5M3", "QC03", "Blank02",
                       "2M3", "6M0", "3M6", "4M6", "QC04",
                       "5M12", "6M6", "3M12", "QC05"),
    
    SampleType     = c("pool_QC", "Bio", "pool_Qcdil", "pool_Qcdil", "pool_Qcdil",
                       "Bio", "blank_analysis", "Bio", "pool_QC", "Bio",
                       "Bio", "Bio", "Bio", "pool_QC", "blank_analysis",
                       "Bio", "Bio", "Bio", "Bio", "pool_QC",
                       "Bio", "Bio", "Bio", "pool_QC"),
    
    Group          = c(NA_character_, "Not Treated", NA_character_, NA_character_, NA_character_,
                       "Not Treated", NA_character_, "Not Treated", NA_character_, "Not Treated",
                       "Not Treated", "Treated", "Treated", NA_character_, NA_character_,
                       "Treated", "Not Treated", "Treated", "Treated", NA_character_,
                       "Treated", "Treated", "Treated", NA_character_),
    
    Batch          = c(1,1,1,1,1, 1,1,1,1,2, 2,1,1,2,2, 1,2,2,2,2, 1,2,2,2),
    
    OrderInjection = c(1,3,5,7,9, 11,13,15,17,19, 21,23,25,27,29, 31,33,35,37,39, 41,43,45,47),
    
    PairedID       = c(NA_real_,1,NA_real_,NA_real_,NA_real_, 5,NA_real_,2,NA_real_,4,
                       3,1,5,NA_real_,NA_real_, 2,6,3,4,NA_real_, 5,6,3,NA_real_),
    
    Longitudinal_TimePoint = c(NA_real_, "M0", NA_real_, NA_real_, NA_real_,
                               "M0", NA_real_, "M0", NA_real_, "M0",
                               "M0", "M3", "M3", NA_real_, NA_real_,
                               "M3", "M0", "M6", "M6", NA_real_,
                               "M12", "M6", "M12", NA_real_),
    
    Hypothesis_1   = c(NA_character_,"Responder",NA_character_,NA_character_,NA_character_,"Responder",NA_character_,
                       "Non-Responder",NA_character_,"Responder","Responder","Responder","Non-Responder",NA_character_,
                       NA_character_, "Non-Responder","Non-Responder","Non-Responder","Responder",
                       NA_character_,"Non-Responder","Responder","Responder",NA_character_),
    
    Hypothesis_2   = c(NA_character_,"Mild",NA_character_,NA_character_,NA_character_,"Mild",NA_character_,"Severe",
                       NA_character_,"Severe","Moderate",NA_character_,NA_character_,NA_character_,
                       NA_character_, NA_character_,"Moderate",NA_character_,NA_character_,NA_character_,
                       NA_character_,NA_character_,NA_character_,NA_character_),
    
    stringsAsFactors = FALSE
  )
  
  # ── Column categories ─────────────────────────────────────────────────────
  # required_cols     : checked/read by get_metadata_table() -> the app will fail without them
  # recommended_cols  : everything else -> ReDU/GNPS2 format, useful for a MassIVE deposit
  #                     but not used by the R code
  
  required_cols <- c("filename", "Country", "YearOfAnalysis", "SampleName", "SampleType",
                     "Group", "OrderInjection", "PairedID", "Longitudinal_TimePoint",
                     "Batch", "Hypothesis_1")
  
  recommended_cols <- setdiff(names(example_df), required_cols)
  
  col_index <- function(cols) which(names(example_df) %in% cols)
  
  wb <- openxlsx::createWorkbook()
  openxlsx::addWorksheet(wb, "Metadata_Example")
  
  # ── Header styles ─────────────────────────────────────────────────────────
  
  header_style_required <- openxlsx::createStyle(
    fontColour     = "#FFFFFF",
    fgFill         = "red2",
    halign         = "CENTER",
    textDecoration = "bold",
    border         = "TopBottomLeftRight"
  )
  
  header_style_recommended <- openxlsx::createStyle(
    fontColour     = "#FFFFFF",
    fgFill         = "cyan4",
    halign         = "CENTER",
    textDecoration = "bold",
    border         = "TopBottomLeftRight"
  )
  
  openxlsx::writeData(wb, "Metadata_Example", example_df, headerStyle = header_style_required)
  
  openxlsx::addStyle(wb, "Metadata_Example", header_style_required,
                     rows = 1, cols = col_index(required_cols), gridExpand = TRUE)
  openxlsx::addStyle(wb, "Metadata_Example", header_style_recommended,
                     rows = 1, cols = col_index(recommended_cols), gridExpand = TRUE)
  
  # ── Align all cells to the centre ───────────────────────────────────
  
  openxlsx::addStyle(wb, "Metadata_Example",
                     style      = openxlsx::createStyle(halign = "CENTER", border = "TopBottomLeftRight",
                                                        borderColour = "#AAAAAA"),
                     rows       = 2:2000,
                     cols       = 1:ncol(example_df),
                     gridExpand = TRUE)
  
  # ── Conditional formatting by SampleType ────────────────────────────────────
  
  sample_type_col        <- which(names(example_df) == "SampleType")
  sample_type_col_letter <- openxlsx::int2col(sample_type_col)
  
  cf_styles <- list(
    "Bio"            = openxlsx::createStyle(bgFill = "#EAF4FB"),
    "pool_QC"        = openxlsx::createStyle(bgFill = "#FFF9E6"),
    "blank_analysis" = openxlsx::createStyle(bgFill = "#FCE8E8"),
    "pool_Qcdil"     = openxlsx::createStyle(bgFill = "#EDE8FC")
  )
  
  for (type in names(cf_styles)) {
    openxlsx::conditionalFormatting(
      wb, "Metadata_Example",
      cols  = 1:ncol(example_df),
      rows  = 2:2000,
      rule  = paste0('$', sample_type_col_letter, '2="', type, '"'),
      style = cf_styles[[type]]
    )
  }
  
  # ── Data validation : SampleType drop-down list (fixed column reference) ──
  
  openxlsx::dataValidation(
    wb, "Metadata_Example",
    cols  = sample_type_col, rows = 2:2000,
    type  = "list",
    value = '"Bio,pool_QC,blank_analysis,pool_Qcdil"'
  )
  
  # ── Final formatting ─────────────────────────────────────────────────────
  
  openxlsx::setColWidths(wb, "Metadata_Example", cols = 1:ncol(example_df), widths = "auto")
  openxlsx::freezePane(wb, "Metadata_Example", firstRow = TRUE)
  
  out_path <- file.path(metadata_folder, "Metadata_Example.xlsx")
  openxlsx::saveWorkbook(wb, out_path, overwrite = TRUE)
  message("✔ Metadata example saved → ", out_path)
}

########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Function to select the pre-processing method (XCMS or GNPS2 Everything Bagel)
#'  and load the Everything Bagel aligned_features table if selected
#'
#' @param param_folder Folder path to save parameters
#' @param data_folder  Folder to save the loaded table
#' @return List with is_EB (logical) and, if TRUE, the loaded aligned_features
#'         data frame. NULL if canceled by the user.
#'

select_preprocessing_method <- function(param_folder, data_folder) {
  
  # Internal function for the Shiny interface
  
  run_preprocessing_gui <- function() {
    
    options(shiny.maxRequestSize = 50 * 1024^2)  # 50 Mo max
    
    ui <- fluidPage(
      tags$head(tags$style(HTML("
        body { font-family: 'Segoe UI', Arial, sans-serif; }
        .well { background-color: #f7f9fb; border-radius: 8px; }
        h4 { color: #2c3e50; }
        .btn-success { background-color: #27ae60; border-color: #27ae60; }
        a { color: #2980b9; }
      "))),
      titlePanel(" Pre-processing method selection"),
      sidebarLayout(
        sidebarPanel(
          checkboxInput(
            inputId = "is_EB",
            label   = tags$b("Use the Everything Bagel (GNPS2) feature finder instead of XCMS ?"),
            value   = TRUE
          ),
          conditionalPanel(
            condition = "input.is_EB == true",
            br(),
            fileInput(
              inputId = "eb_file",
              label   = "Upload the Everything Bagel feature table (aligned_features.tsv)",
              accept  = c(".csv", ".tsv", ".txt", ".xlsx", ".xls")
            ),
            fileInput(
              inputId = "eb_mgf_file",
              label   = "Upload the Everything Bagel file (aligned_features.mgf)",
              accept  = c(".mgf")
            )
          ),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4(icon("dna"), " XCMS"),
          p("XCMS is a widely used R package for feature detection, retention-time alignment, ",
            "and grouping of LC-MS data. It typically requires iterative manual parameter tuning ",
            "to reach good performance."),
          
          conditionalPanel(
            condition = "input.is_EB == true",
            hr(),
            h4(icon("bolt"), " Everything Bagel (EB) - GNPS2"),
            p("The Everything Bagel feature finder is an open-source, ultra-fast feature finding ",
              "tool for untargeted LC-MS metabolomics, built in Rust and integrated in the GNPS2 ",
              "infrastructure."),
            p("EB automatically determines its own parameters from the input data, removing the ",
              "need for manual optimization, and combines feature detection, retention-time ",
              "alignment, gap-filling, and feature grouping (isotope, adduct and in-source ",
              "fragment calling) in a single fast workflow."),
            p("Benchmarked against XCMS and MassCube, EB reached comparable or better sensitivity ",
              "and quantitative accuracy while using up to 150 times fewer CPU-hours and up to ",
              "113 times less wall time."),
            p("The aligned_features table contains the quantified consensus feature table, while ",
              "the aligned_features.mgf file contains the consensus MS/MS spectra grouped to each ",
              "feature, used downstream for library annotation and molecular networking."),
            p("EB is accessible as a command-line tool, a desktop app, a web app (",
              tags$a(href = "https://featurefinding.gnps2.org", "featurefinding.gnps2.org", target = "_blank"),
              "), and a GNPS2 Nextflow workflow."),
            tags$div(style = "margin-top:10px; font-size:90%; color:#7f8c8d;",
                     "Reference : Shin et al., The Everything Bagel Feature Finder, bioRxiv 2026. ",
                     tags$a(href = "https://doi.org/10.64898/2026.08.17.744735",
                            "https://doi.org/10.64898/2026.08.17.744735", target = "_blank"))
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        
        if (!isTRUE(input$is_EB)) {
          stopApp(list(is_EB = FALSE))
        } else {
          if (is.null(input$eb_file)) {
            showNotification("Please upload the Everything Bagel aligned_features table first.", type = "error")
            return(NULL)
          }
          if (is.null(input$eb_mgf_file)) {
            showNotification("Please upload the Everything Bagel aligned_features.mgf file first.", type = "error")
            return(NULL)
          }
          stopApp(list(
            is_EB     = TRUE,
            file_path = input$eb_file$datapath,
            file_name = input$eb_file$name,
            mgf_path  = input$eb_mgf_file$datapath,
            mgf_name  = input$eb_mgf_file$name
          ))
        }
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  register(SerialParam())
  
  # Run the GUI and retrieve the user choice
  
  choice <- run_preprocessing_gui()
  
  if (is.null(choice)) {
    message("Pre-processing method selection canceled by user.")
    return(NULL)
  }
  
  # Check if the user chose XCMS instead of Everything Bagel
  
  if (!isTRUE(choice$is_EB)) {
    message("XCMS selected for pre-processing.")
    return(list(is_EB = FALSE))
  }
  
  
  # Load the aligned_features table
  
  ext <- tolower(tools::file_ext(choice$file_name))
  
  aligned_features <- switch(
    ext,
    "xlsx" = readxl::read_excel(choice$file_path),
    "xls"  = readxl::read_excel(choice$file_path),
    "tsv"  = read.delim(choice$file_path, sep = "\t", check.names = FALSE, stringsAsFactors = FALSE),
    "txt"  = read.delim(choice$file_path, sep = "\t", check.names = FALSE, stringsAsFactors = FALSE),
    "csv"  = read.csv(choice$file_path, check.names = FALSE, stringsAsFactors = FALSE),
    stop("Unsupported file extension for the Everything Bagel aligned_features table : ", ext)
  )
  aligned_features <- as.data.frame(aligned_features)
  
  message("Everything Bagel aligned_features table loaded : ", nrow(aligned_features), " features.\n")
  
  
  # Load consensus MS/MS spectra
  
  consensus_mgf <- Spectra(choice$mgf_path, source = MsBackendMgf())
  
  message("Consensus MGF loaded : ", length(consensus_mgf), " MS/MS spectra.\n")
  
  
  # Export : loaded aligned_features table and consensus MGF
  
  export_dir <- file.path(data_folder, "1_Pre-processing", "Everything_Bagel")
  dir.create(export_dir, recursive = TRUE, showWarnings = FALSE)
  
  write.csv(aligned_features, file.path(export_dir, "EB_aligned_features.csv"), row.names = FALSE)
  message("Aligned features table exported : ", file.path(export_dir, "EB_aligned_features.csv"), "\n")
  
  mgf_export_path <- file.path(export_dir, "EB_consensus_mgf.mgf")
  file.copy(choice$mgf_path, mgf_export_path, overwrite = TRUE)
  message("Consensus MGF exported : ", mgf_export_path, "\n")
  
  
  # Save parameters
  
  param_dir <- file.path(param_folder, "1_Pre-processing", "Everything_Bagel")
  dir.create(param_dir, recursive = TRUE, showWarnings = FALSE)
  
  write_json(
    list(is_EB = TRUE, eb_file = choice$file_name, eb_mgf_file = choice$mgf_name),
    pretty = TRUE, auto_unbox = TRUE,
    path = file.path(param_dir, "Preprocessing_method_Param.json")
  )
  
  
  # Return results
  
  list(is_EB = TRUE, aligned_features = aligned_features, ms2_consensus = consensus_mgf)
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Get standards parameters
#'
#' @param defaults Optional list of default parameters
#' @return List of standard parameters
#' 

get_standards <- function(defaults = list()) {
  
  `%||%` <- function(a, b) if (!is.null(a)) a else b
  
  # Default standards
  
  if (length(defaults) == 0) {
    defaults <- list(
      DL_Leucine_d10 = list(rt = c(120, 160), mz = c(142.16, 142.17), theo = 142.164672),
      L_Tryptophan_2_4_5_6_7_d5 = list(rt = c(365, 395), mz = c(210.123, 210.133), theo = 210.128537),
      DL_Phenyl_d5_alanine = list(rt = c(270, 320), mz = c(171.113, 171.121), theo = 171.117638)
    )
  }
  
  ui <- fluidPage(
    titlePanel("Standard Parameters Input"),
    sidebarLayout(
      sidebarPanel(
        numericInput("n_std", tags$span(style = "font-weight:bold; font-size:20px;",
                                        "Number of standards in your study :"), value = length(defaults), min = 1, step = 1),
        uiOutput("standards_ui"),
        actionButton("submit", "Submit", class = "btn-success")
      ),
      mainPanel(
        h4(tags$b("Usage")),
        p("Here, standards are used to verify peak picking, alignment and grouping. On their own, they do not provide a complete picture of the compounds, but they do give a rough idea. It is therefore advisable to distribute the standards across the entire m/z range of the measurements."),
        p("If you do not have any internal standards, this does not affect the rest of the workflow (although it is recommended). Please simply leave at least one standard."),
        br(),
        h4("Parameter Description"),
        tags$b("Standard name"),
        p("Defines the name of the reference compound used."),
        tags$b("Retention time (RT)"),
        p("Defines the expected retention time window in seconds where the compound is detected."),
        tags$b("m/z range"),
        p("Defines the observed mass-to-charge ratio interval used to detect the compound signal."),
        tags$b("Theoretical m/z"),
        p("Defines the expected exact mass-to-charge ratio of the compound based on its chemical formula.")
      )
    )
  )
  
  server <- function(input, output, session) {
    output$standards_ui <- renderUI({
      n <- input$n_std
      std_names <- names(defaults)
      lapply(1:n, function(i) {
        std <- if(i <= length(defaults)) std_names[i] else paste0("Standard_", i)
        tagList(
          textInput(paste0("name_", i), "Standard Name :", value = std),
          numericInput(paste0("rt_min_", i), "RT min [s] :", value = if(i <= length(defaults)) defaults[[std]]$rt[1] else 0),
          numericInput(paste0("rt_max_", i), "RT max [s] :", value = if(i <= length(defaults)) defaults[[std]]$rt[2] else 0),
          numericInput(paste0("mz_min_", i), "m/z min :", value = if(i <= length(defaults)) defaults[[std]]$mz[1] else 0),
          numericInput(paste0("mz_max_", i), "m/z max :", value = if(i <= length(defaults)) defaults[[std]]$mz[2] else 0),
          numericInput(paste0("theo_", i), "Theoretical m/z :", value = if(i <= length(defaults)) defaults[[std]]$theo else 0),
          div(style = "border-top: 1px solid #888; margin-top: 10px; margin-bottom: 10px;")
        )
      })
    })
    
    observeEvent(input$submit, {
      n <- input$n_std
      res <- list()
      for(i in 1:n){
        name <- input[[paste0("name_", i)]]
        res[[name]] <- list(
          rt = c(input[[paste0("rt_min_", i)]], input[[paste0("rt_max_", i)]]),
          mz = c(input[[paste0("mz_min_", i)]], input[[paste0("mz_max_", i)]]),
          theo = input[[paste0("theo_", i)]]
        )
      }
      stopApp(res)
    })
    
    observeEvent(input$exit, { stopApp(NULL) })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}



########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Peak Picking and Standards Visualization Function
#'
#' @param file_list_tot List of mzML file paths
#' @param param_folder Folder path to save parameters
#' @param defaults Optional list of default parameters
#' @param standards List of standard parameters
#' @return List containing peak picking results and standard plots
#' 

perform_peak_picking_centwave <- function(file_list_tot, param_folder, defaults = list(), standards) {
  
  `%||%` <- function(a, b) if (!is.null(a)) a else b
  
  # Read mzML files
  
  xdata <- readMSData(file_list_tot, mode = "onDisk")
  
  # Check xdata m/z dispersion on standards to suggest a ppm value
  
  check_ppm_dispersion <- function(xdata, rt_range, mz_range, iso_ppm, roi_gap_ppm = 3) {
    
    eic <- chromatogram(xdata, rt = rt_range, mz = mz_range, aggregationFun = "max")
    
    broad <- xdata |> filterMsLevel(1L) |> filterRt(rt_range) |> filterMz(mz_range)
    pks <- as(broad, "data.frame")
    if (nrow(pks) == 0) return(list(ppm = NA, eic = eic, apex_pks = pks, roi_cor = NULL))
    apex_mz <- pks$mz[which.max(pks$i)]
    
    # zoom around apex_mz directly from pks (already loaded) instead of re-filtering xdata
    
    window <- apex_mz * iso_ppm * 1e-6
    apex_pks <- pks[pks$mz >= apex_mz - window & pks$mz <= apex_mz + window, ]
    if (nrow(apex_pks) == 0) return(list(ppm = NA, eic = eic, apex_pks = apex_pks, roi_cor = NULL))
    
    apex_pks <- do.call(rbind, lapply(split(apex_pks, apex_pks$rt), function(z) z[which.max(z$i), ]))
    ppm_obs <- diff(quantile(apex_pks$mz, probs = c(0.05, 0.95))) / mean(apex_pks$mz) * 1e6
    
    # cluster mz points into candidate ROI: start a new ROI when the ppm gap to the previous point is too large 
    
    mz_sort_order <- order(apex_pks$mz)
    ppm_gap_to_prev <- c(0, diff(apex_pks$mz[mz_sort_order]) / apex_pks$mz[mz_sort_order][-1] * 1e6)
    apex_pks$roi <- NA_integer_
    apex_pks$roi[mz_sort_order] <- cumsum(ppm_gap_to_prev > roi_gap_ppm) + 1
    
    # correlation of per-sample intensity between ROI: high correlation => likely the same compound
    
    roi_cor <- NULL
    n_roi_clusters <- length(unique(apex_pks$roi))
    if (n_roi_clusters > 1) {
      intensity_by_sample_roi <- aggregate(i ~ file + roi, data = apex_pks, FUN = max)
      intensity_wide <- reshape(intensity_by_sample_roi, idvar = "file", timevar = "roi", direction = "wide")
      log_intensity_matrix <- log10(as.matrix(intensity_wide[, -1, drop = FALSE]))
      colnames(log_intensity_matrix) <- paste0("ROI", seq_len(n_roi_clusters))
      roi_cor <- list(
        correlation_matrix = cor(log_intensity_matrix, use = "pairwise.complete.obs"),
        shared_sample_count = crossprod(!is.na(log_intensity_matrix))
      )
    }
    
    list(ppm = unname(ppm_obs), eic = eic, apex_pks = apex_pks, roi_cor = roi_cor)
  }
  
  # Plot helper, reused both for the live preview and for the final recorded plots
  
  plot_ppm_diag <- function(std_name, d) {
    
    roi_present <- !is.null(d$roi_cor)
    n_roi <- if (roi_present) nrow(d$roi_cor$correlation_matrix) else 1
    roi_colors <- c("#E41A1C", "#377EB8", "#4DAF4A", "#FF7F00", "#984EA3", "#A65628")[seq_len(n_roi)]
    n_panels <- if (roi_present) 4 else 2
    panel_heights <- if (roi_present) c(1, 1, 1, 1.3) else c(1, 1)
    
    par(mfrow = c(1, 1))  # reset any leftover layout state before starting
    layout(matrix(seq_len(n_panels), ncol = 1, byrow = TRUE),
           heights = panel_heights)
    par(mar = c(4, 4, 3, 1))
    
    # panel 1: EIC, drawn manually (base R) 
    
    sample_rt <- lapply(seq_len(ncol(d$eic)), function(j) rtime(d$eic[1, j]))
    sample_int <- lapply(seq_len(ncol(d$eic)), function(j) intensity(d$eic[1, j]))
    plot(range(unlist(sample_rt)), range(unlist(sample_int), na.rm = TRUE), type = "n",
         xlab = "Retention time (s)", ylab = "Intensity", main = paste("EIC -", std_name))
    for (j in seq_along(sample_rt)) lines(sample_rt[[j]], sample_int[[j]], col = adjustcolor("black", 0.4))
    grid()
    
    # panel 2: mass peaks colored by intensity 
    
    log_intensity <- log10(d$apex_pks$i)
    log_intensity[!is.finite(log_intensity)] <- min(log_intensity[is.finite(log_intensity)])
    intensity_palette <- colorRampPalette(c("blue", "cyan", "green", "yellow", "orange", "red"))(256)
    intensity_breaks <- seq(min(log_intensity), max(log_intensity), length.out = 257)
    point_color_by_intensity <- intensity_palette[cut(log_intensity, breaks = intensity_breaks, include.lowest = TRUE, labels = FALSE)]
    plot(d$apex_pks$rt, d$apex_pks$mz, pch = 19, cex = 0.7, col = point_color_by_intensity,
         xlab = "Retention time (s)", ylab = "m/z",
         main = paste0("mass peaks (intensity) - ", std_name, " (", round(d$ppm, 1), " ppm)"))
    grid()
    
    if (!roi_present) return(invisible())
    
    # panel 3: mass peaks colored by ROI, so grouping is visible 
    
    point_color_by_roi <- roi_colors[d$apex_pks$roi]
    plot(d$apex_pks$rt, d$apex_pks$mz, pch = 19, cex = 0.7, col = point_color_by_roi,
         xlab = "Retention time (s)", ylab = "m/z", main = paste0("mass peaks (ROI) - ", std_name))
    grid()
    legend("topright", legend = paste0("ROI", seq_len(n_roi)), col = roi_colors, pch = 19, bty = "n", cex = 1, horiz = TRUE)
    
    # panel 4: readable ROI x ROI correlation matrix 
    
    correlation_matrix <- d$roi_cor$correlation_matrix
    shared_sample_count <- d$roi_cor$shared_sample_count
    n_roi <- nrow(correlation_matrix)
    
    cells <- expand.grid(row = 1:n_roi, col = 1:n_roi) # one row per cell of the matrix: row/col are matrix indices, x/y are plot coordinates
    cells$x <- cells$col                    # col index -> x position, direct
    cells$y <- n_roi - cells$row + 1        # row index -> y position, flipped (row 1 = top of plot)
    
    cells$corr  <- correlation_matrix[cbind(cells$row, cells$col)]
    cells$n     <- shared_sample_count[cbind(cells$row, cells$col)]
    cells$diag  <- cells$row == cells$col
    
    color_scale <- colorRampPalette(c("#377EB8", "white", "#E41A1C"))(200)
    cells$color <- ifelse(cells$diag, "grey90", color_scale[round((cells$corr + 1) / 2 * 199) + 1])
    cells$label <- ifelse(cells$diag, "", sprintf("%.2f\n(n=%d)", cells$corr, cells$n))
    
    plot(c(0, n_roi + 1), c(0, n_roi + 1), type = "n", xaxt = "n", yaxt = "n", xlab = "", ylab = "", asp = 1,
         main = paste0("ROI correlation across samples - ", std_name))
    rect(cells$x - 0.5, cells$y - 0.5, cells$x + 0.5, cells$y + 0.5, col = cells$color, border = "white")
    text(cells$x, cells$y, cells$label, cex = 1.3, font = 2)
    
    text(1:n_roi, n_roi + 0.9, colnames(correlation_matrix), cex = 1.2, font = 2, col = roi_colors)
    text(0.3, n_roi - (1:n_roi) + 1, colnames(correlation_matrix), cex = 1.2, font = 2, col = roi_colors, srt = 90)
    
    }
  
  review_ppm_dispersion <- function(xdata, standards) {
    
    ui <- fluidPage(
      titlePanel("Interactive plot of m/z (ppm) distribution for internal standards"),
      sidebarLayout(
        sidebarPanel(
          selectInput("std_sel", "Standard displayed :", choices = names(standards)),
          sliderInput("iso_ppm", "Search window (ppm) :", min = 1, max = 50, value = 15, step = 1),
          sliderInput("roi_gap_ppm", "ROI clustering gap (ppm) :", min = 1, max = 20, value = 3, step = 1),
          hr(),
          h4("Observed dispersion (all standards)"),
          tableOutput("ppm_table"),
          uiOutput("recommended_ppm"),
          hr(),
          numericInput("final_ppm", "\U0001F50D Select the ppm value to be used by the peak detection algorithm :",
                       value = NA, min = 1, step = 1),
          hr(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(plotOutput("diag_plot", height = "95vh"))
      )
    )
    
    server <- function(input, output, session) {
      
      register(SerialParam())
      
      # Recomputed each time iso_ppm changes -> this is the "loop" the operator explores
      
      iso_ppm_db <- debounce(reactive(input$iso_ppm), 5000)
      roi_gap_db <- debounce(reactive(input$roi_gap_ppm), 5000)
      
      ppm_diag_reactive <- reactive({
        req(iso_ppm_db(), roi_gap_db())
        res <- lapply(standards, function(s) check_ppm_dispersion(xdata, s$rt, s$mz, iso_ppm_db(), roi_gap_db()))
        names(res) <- names(standards)
        res
      })
      
      
      output$ppm_table <- renderTable({
        d <- ppm_diag_reactive()
        data.frame(Standard = names(d), `ppm observe` = round(sapply(d, function(x) x$ppm), 1), check.names = FALSE)
      })
      
      output$recommended_ppm <- renderUI({
        
        d <- ppm_diag_reactive()
        
        ppm_values <- sapply(d, function(x) x$ppm)
        
        ppm_values <- ppm_values[is.finite(ppm_values)]
        
        if(length(ppm_values) == 0){
          return(NULL)
        }
        
        suggested <- round(max(ppm_values) + 1)
        
        tags$div(
          style = "font-weight:bold; color:#0066cc;",
          paste0("Recommended ppm value : ", suggested)
        )
      })
      
      output$diag_plot <- renderPlot({
        d <- ppm_diag_reactive()[[input$std_sel]]
        if (is.null(d) || nrow(d$apex_pks) == 0) {
          plot.new(); title(paste("No data points for ", input$std_sel))
          return(invisible())
        }
        plot_ppm_diag(input$std_sel, d)
      })
      
      # Only here does the app actually stop -> results + plots are built and returned
      
      observeEvent(input$submit, {
        
        # Safety
        if(is.na(input$final_ppm)){
          showNotification(
            "Please select the ppm value used by the peak detection algorithm.",
            type = "error",
            duration = 5
          )
          return(NULL)
        }
        
        d <- ppm_diag_reactive()
        plots <- list()
        for (std in names(d)) {
          if (nrow(d[[std]]$apex_pks) == 0) next
          plot_ppm_diag(std, d[[std]])
          plots[[std]] <- recordPlot()
        }
        par(mfrow = c(1, 1))
        
        stopApp(list(
          ppm_Centwave = input$final_ppm,
          iso_ppm = iso_ppm_db(),
          roi_gap_ppm = roi_gap_db(),
          ppm_diag = d,
          plots = plots
        ))
      })
      
      observeEvent(input$exit, { stopApp(NULL) })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Usage
  
  result_ppm_dispersion <- review_ppm_dispersion(xdata, standards)
  if (is.null(result)) { message("Stopped by user.") ; return(NULL) }
  
  ppm_Centwave <- result_ppm_dispersion$ppm_Centwave
  ppm_diag_standard <- result_ppm_dispersion$ppm_diag
  ppm_diag_plots <- result_ppm_dispersion$plots
  
  defaults$ppm <- ppm_Centwave
  
  # Get CentWave parameters
  
  get_centwave_params <- function(defaults) {
    
    ui <- fluidPage(
      
      tags$head(
        tags$style(HTML("
          .param-section-title {
            margin-top: 26px;
            margin-bottom: 10px;
            padding-left: 10px;
            border-left: 4px solid #2C7BE5;
            font-weight: 600;
            font-size: 15px;
            letter-spacing: 0.4px;
            text-transform: uppercase;
            color: #2c3e50;
          }
          .param-section-title:first-of-type { margin-top: 4px; }
 
          .param-hint {
            font-size: 12.5px;
            color: #8a93a0;
            margin-bottom: 18px;
          }
 
          details.param-card {
            background: #fbfcfd;
            border: 1px solid #e3e7ec;
            border-radius: 8px;
            margin-bottom: 8px;
            overflow: hidden;
          }
 
          details.param-card summary {
            cursor: pointer;
            list-style: none;
            padding: 10px 14px;
            font-size: 14px;
            font-weight: 600;
            color: #1f2d3d;
            background: #f1f4f8;
            display: flex;
            align-items: center;
          }
          details.param-card summary::-webkit-details-marker { display: none; }
          details.param-card summary::before {
            content: '\u25B8';
            color: #2C7BE5;
            margin-right: 8px;
            display: inline-block;
            transition: transform 0.15s ease;
          }
          details.param-card[open] summary::before { transform: rotate(90deg); }
          details.param-card[open] summary { border-bottom: 1px solid #e3e7ec; }
 
          .param-card-body {
            padding: 12px 16px;
            font-size: 13.5px;
            line-height: 1.55;
            color: #3a3f44;
          }
          .param-card-body ul { margin: 6px 0 0 18px; padding: 0; }
          .param-card-body li { margin-bottom: 4px; }
        "))
      ),
      
      titlePanel("Peak Picking : CentWave + Predicted Isotope Parameters"),
      sidebarLayout(
        sidebarPanel(
          
          p("\u2757 Parameters marked with this symbol may require adjustment depending on your dataset."),
          hr(),
          numericInput("ppm", "\u2757 ppm tolerance (in ppm)",
                       value = defaults$ppm %||% 7, min = 0, step = 1),
          numericInput("peak_min", "Peak width min (s)",
                       value = defaults$peakwidth[1] %||% 4, min = 1, step = 1),
          numericInput("peak_max", "Peak width max (s)",
                       value = defaults$peakwidth[2] %||% 60, min = 1, step = 1),
          numericInput("snthresh", "\u2757 Signal-to-noise threshold",
                       value = defaults$snthresh %||% 3, min = 1, step = 1),
          numericInput("snthreshIsoROIs", "S/N threshold for isotope detection",
                       value = defaults$snthreshIsoROIs %||% 3, min = 1, step = 1),
          
          numericInput("noise", "\u2757 Noise threshold",
                       value = defaults$noise %||% 3e5, min = 100, step = 5e4),
          div(style = "color: #888; font-size: 12px; margin-top: -10px;",
              textOutput("noise_sci")),
          
          numericInput("prefilter_k", "Prefilter k",
                       value = defaults$prefilter[1] %||% 3, min = 1, step = 1),
          
          numericInput("prefilter_I", "\u2757 Prefilter I",
                       value = defaults$prefilter[2] %||% 3e5, min = 0, step = 5e4),
          div(style = "color: #888; font-size: 12px; margin-top: -10px;",
              textOutput("prefilter_I_sci")),
          
          numericInput("mzdiff", "\u2757 Minimum m/z difference",
                       value = defaults$mzdiff %||% -0.001, step = 0.0001),
          selectInput("mzCenterFun", "m/z center function",
                      choices = c("wMean", "mean", "apex", "wMeanApex3"),
                      selected = defaults$mzCenterFun %||% "wMean"),
          numericInput("maxIso", "Max isotopes",
                       value = defaults$maxIso %||% 3, min = 1, max = 5, step = 1),
          numericInput("maxCharge", "Max charge state",
                       value = defaults$maxCharge %||% 3, min = 1, max = 5, step = 1),
          selectInput("polarity", "\u2757 Polarity",
                      choices = c("positive", "negative"),
                      selected = defaults$polarity %||% "positive"),
          checkboxInput("fitgauss", "Fit Gaussian",
                        value = defaults$fitgauss %||% FALSE),
          checkboxInput("verboseColumns", "Verbose columns",
                        value = defaults$verboseColumns %||% TRUE),
          checkboxInput("mzIntervalExtension", "m/z interval extension",
                        value = defaults$mzIntervalExtension %||% FALSE),
          
          br(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Parameter Description"),
          p(class = "param-hint", "Click a parameter below to expand its detailed explanation."),
          
          div(class = "param-section-title", "Detection & Thresholds"),
          
          tags$details(class = "param-card",
                       tags$summary("ppm tolerance"),
                       div(class = "param-card-body",
                           p("Maximum tolerated m/z deviation (in parts per million) between consecutive scans during ",
                             "region of interest (ROI) construction. A ROI is extended scan by scan as long as the ",
                             "difference between the current m/z and the running mean m/z of the ROI stays below this value. ",
                             "Typical values : 5–10 ppm for Orbitrap, 15–25 ppm for TOF instruments. ",
                             tags$span("Too high : distinct signals get merged into one ROI ; too low : real traces get fragmented.",
                                       style = "color:red;"))
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Signal-to-noise threshold"),
                       div(class = "param-card-body",
                           p("Minimum signal-to-noise ratio a peak candidate must reach after CWT filtering to be retained. ",
                             "Noise is estimated locally within each ROI. ",
                             "Values of 3–10 are common ; increase if noise is being detected as peaks, ",
                             "decrease if weak genuine peaks are being missed.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("S/N threshold for isotope detection"),
                       div(class = "param-card-body",
                           p("Same concept as snthresh, but applied during the ", tags$em("second"), " centWave run ",
                             "dedicated to predicted isotope ROIs. Since isotope peaks are typically weaker than the ",
                             "monoisotopic peak, this value is generally set lower than or equal to snthresh.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Noise threshold"),
                       div(class = "param-card-body",
                           p("Absolute minimum intensity below which a centroid is discarded at the very first step ",
                             "(before ROI construction). This eliminates low-level chemical noise early and speeds up processing. ",
                             tags$b("Setting this value equal to or slightly below Prefilter I is a common starting point."),
                             " Inspect the raw mass spectrum to estimate a reasonable threshold.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Prefilter (k, I)"),
                       div(class = "param-card-body",
                           p("Pre-filter applied to mass traces : a ROI is only retained if it contains at least ",
                             tags$b("k"), " data points with intensity ≥ ", tags$b("I"), ". ",
                             "Example : (3, 3e5) requires at least 3 points above 3×10⁵ to validate a trace. ",
                             "This filter is very effective at reducing the number of ROIs processed and therefore computation time. ",
                             tags$b("The I value should be consistent with the noise threshold."))
                       )
          ),
          
          div(class = "param-section-title", "Peak Shape & Integration"),
          
          tags$details(class = "param-card",
                       tags$summary("Peak width (min / max)"),
                       div(class = "param-card-body",
                           p("Expected range of chromatographic peak durations in seconds. These bounds guide the ",
                             "continuous wavelet transform (CWT) : only wavelet scales corresponding to this duration ",
                             "range are tested. Too narrow → broad peaks are missed ; too wide → increased false positives. ",
                             "Check on an extracted ion chromatogram (EIC) of a well-resolved compound before setting these values.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Minimum m/z difference"),
                       div(class = "param-card-body",
                           p("Minimum m/z difference required between two peaks with overlapping retention times. ",
                             "During post-processing, if two overlapping peaks differ in m/z by less than this value, ",
                             "only the more intense one is kept. ",
                             "A negative value allows overlap and is the xcms default for high-resolution data ",
                             "(Orbitrap, Q-ToF), since close m/z signals can be trusted as genuinely distinct. ",
                             "A positive value forces stricter separation and suits lower-resolution instruments.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("m/z center function"),
                       div(class = "param-card-body",
                           p("Method used to compute the representative m/z of each chromatographic peak:"),
                           tags$ul(
                             tags$li(tags$b("wMean"), ": intensity-weighted mean of all m/z values across the peak (recommended default)."),
                             tags$li(tags$b("mean"), ": simple arithmetic mean of the peak's m/z values."),
                             tags$li(tags$b("apex"), ": m/z value at the peak apex only."),
                             tags$li(tags$b("wMeanApex3"), ": intensity-weighted mean of the apex m/z and its two neighbouring points.")
                           )
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Fit Gaussian"),
                       div(class = "param-card-body",
                           p("If enabled, a Gaussian model is fitted to each detected peak. ",
                             "This primarily affects the reported retention time position (rt), not peak shape. ",
                             "May improve RT precision on well-resolved peaks, but introduces a risk of overfitting ",
                             "on noisy or asymmetric peaks. ",
                             tags$b("Disabled by default ; only enable if RT accuracy is critical."))
                       )
          ),
          
          div(class = "param-section-title", "Isotopes & Charge"),
          
          tags$details(class = "param-card",
                       tags$summary("Max isotopes"),
                       div(class = "param-card-body",
                           p("Maximum number of isotope peaks predicted per detected peak in the first centWave run. ",
                             "For each monoisotopic peak M, the expected positions of M+1, M+2, …, M+maxIso are calculated ",
                             "based on charge state and isotopic spacing (~1.003355 Da -> ", tags$span(tags$sup("13"), "C)"), 
                             "These positions define the ROIs for the second centWave run. ",
                             "3–5 is sufficient for most small organic molecules ; increase for peptides or heavy compounds.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Max charge state"),
                       div(class = "param-card-body",
                           p("Maximum charge state considered when predicting isotope positions. ",
                             "At z = 1, isotopic spacing is ~1 Da ; at z = 2, ~0.5 Da, etc. ",
                             "For standard metabolomics (small molecules, positive mode), z = 1–2 is sufficient. ",
                             "Increase for lipidomics or proteomics data where higher charge states are expected.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Polarity"),
                       div(class = "param-card-body",
                           p("Ionisation polarity of the acquired data. ",
                             "Used to orient adduct prediction during isotope searching. ",
                             "Must match the acquisition polarity of the mzML files being processed.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("m/z interval extension"),
                       div(class = "param-card-body",
                           p("Controls the width of the m/z window around predicted isotope positions during the second centWave pass. ",
                             "If ", tags$b("TRUE"), " (xcms default), the window is slightly ", tags$b("widened"), " to account for ",
                             "measurement uncertainty — improves isotope detection sensitivity but may increase false positives. ",
                             "If ", tags$b("FALSE"), ", the window is strictly limited to the predicted m/z position.")
                       )
          ),
          
          div(class = "param-section-title", "Output"),
          
          tags$details(class = "param-card",
                       tags$summary("Verbose columns"),
                       div(class = "param-card-body",
                           p("Adds extra metadata columns to the peak table output (e.g. integration parameters, ROI statistics). ",
                             "Useful for parameter optimisation and diagnostic purposes, but increases output size. ",
                             "Can be disabled once parameters are validated for production runs.")
                       )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      output$noise_sci <- renderText({
        req(input$noise)
        paste("\u2192", formatC(input$noise, format = "e", digits = 2))
      })
      
      output$prefilter_I_sci <- renderText({
        req(input$prefilter_I)
        paste("\u2192", formatC(input$prefilter_I, format = "e", digits = 2))
      })
      
      observeEvent(input$submit, {
        stopApp(list(
          ppm = input$ppm,
          peakwidth = c(input$peak_min, input$peak_max),
          snthresh = input$snthresh,
          snthreshIsoROIs = input$snthreshIsoROIs,
          prefilter = c(input$prefilter_k, input$prefilter_I),
          mzdiff = input$mzdiff,
          noise = input$noise,
          mzCenterFun = input$mzCenterFun,
          maxIso = input$maxIso,
          maxCharge = input$maxCharge,
          polarity = input$polarity,
          fitgauss = input$fitgauss,
          verboseColumns = input$verboseColumns,
          mzIntervalExtension = input$mzIntervalExtension
        ))
      })
      
    }
    
    shiny::runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Get parameters
  
  pp_parameters <- get_centwave_params(defaults)
  
  if (is.null(pp_parameters)) {
    message("Peak picking canceled by user.")
    return(NULL)
  }
  
  # Create CentWaveParam object
  
  pp <- CentWavePredIsoParam(                                 # Peak detection (first centwave run) + isotope detection (second centwave run)
    ppm = pp_parameters$ppm,                                  # Tolerance in ppm
    peakwidth = pp_parameters$peakwidth,                      # Peak width range in seconds (Time window : peak duration)
    snthresh = pp_parameters$snthresh,                        # Signal-to-noise threshold, a lower value allows for less strictness
    snthreshIsoROIs = pp_parameters$snthreshIsoROIs,          # Signal to noise ratio cutoff to be used in the second centWave run to identify peaks for predicted isotope ROIs.
    prefilter = pp_parameters$prefilter,                      # Mass range filter (k, I) : Mass traces are only retained if they contain at least k peaks with intensity ⁠>= I⁠
    mzdiff = pp_parameters$mzdiff,                            # Minimum difference in m/z between two adjacent peaks for them to be considered as two distinct peaks : negative to allow overlap
    fitgauss = pp_parameters$fitgauss,                        # If already centroided, less useful/overfitting
    noise = pp_parameters$noise,                              # Centroids with intensity ⁠< noise⁠ are omitted from ROI detection
    mzCenterFun = pp_parameters$mzCenterFun,                  # wMean : Intensity-weighted mean m/z of peak points
    maxIso = pp_parameters$maxIso,                            # n isotopes
    maxCharge = pp_parameters$maxCharge,                      # Maximum charge state to consider
    polarity = pp_parameters$polarity,                        # Polarity of the data
    verboseColumns = pp_parameters$verboseColumns,            # Additional peak meta data columns should be returned
    mzIntervalExtension = pp_parameters$mzIntervalExtension   # Uses a more restrictive m/z search range, centred on the predicted isotope position
  )
  
  # Parallelisation
  
  register(
    SnowParam(
      workers = max(2, parallelly::availableCores(omit = 2L)),
      type="SOCK"
    )
  )
  
  # Perform peak picking
  
  xdata_peaks <- findChromPeaks(xdata, param = pp)
  
  # Standard plots function
  
  plot_standards <- function(xdata_peaks, standards) {
    
    n_files <- length(fileNames(xdata_peaks))
    cols <- viridis(n_files)
    
    plots_list <- list()
    
    for (std in names(standards)) {
      
      # Create a new plot for each standard
      
      plotChromPeaks(
        xdata_peaks,
        file = 1,
        col = cols[1],
        xlim = standards[[std]]$rt,
        ylim = standards[[std]]$mz,
        main = paste("Standard :", std, "- After Peak Picking"),
        xlab = "Retention time (s)",
        ylab = expression(italic(m)/z)
      )
      
      # Add other files if they exist
      
      if (n_files > 1) {
        for (i in 2:n_files) {
          plotChromPeaks(
            xdata_peaks,
            file = i,
            col = cols[i],
            xlim = standards[[std]]$rt,
            ylim = standards[[std]]$mz,
            add = TRUE
          )
        }
      }
      
      # Add theoretical m/z line and legend
      
      abline(h = standards[[std]]$theo, lty = 2, lwd = 2, col = "black")
      legend("topright",
             legend = paste("Theoretical m/z =", standards[[std]]$theo),
             lty = 2, lwd = 2, col = "black", bty = "n")
      
      # Plot listing
      
      plots_list[[std]] <- recordPlot()
      
    }
    
    return(plots_list)
  }
  
  # Generate standard plots
  
  plots_pp_list <- plot_standards(xdata_peaks, standards)
  
  # Save parameters
  
  pp_list <- as.list(pp)
  write_json(pp_list, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "1_Pre-processing/CentWavePredIsoParam.json"))
  
  # Return results
  
  list(
    xdata_peaks = xdata_peaks,
    standards = standards,
    standard_plots_PP = plots_pp_list,
    ppm_diag_plots = ppm_diag_plots,
    parameters = pp_list
  )
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Obiwarp Alignment Function with Standards Visualization
#'
#' @param xdata_peaks XCMSnSet object with peak data
#' @param qc_names Vector of QC sample names
#' @param param_folder Folder path to save parameters
#' @param standards List of standards with their parameters
#' @return List containing aligned data and standard plots
#' 

perform_obiwarp_alignment <- function(xdata_peaks, qc_names, param_folder, standards) {
  
  # Get Obiwarp parameters
  
  get_obiwarp_params <- function(defaults = list()) {
    
    `%||%` <- function(a, b) if (!is.null(a)) a else b
    
    ui <- fluidPage(
      
      tags$head(
        tags$style(HTML("
          hr {
            border: none;
            border-top: 1px solid #e3e7ec;
            margin: 24px 0;
          }
 
          .info-note {
            background: #eef5ff;
            border-left: 4px solid #2C7BE5;
            border-radius: 6px;
            padding: 12px 16px;
            margin-bottom: 4px;
            font-size: 13.5px;
            line-height: 1.55;
            color: #2c3e50;
          }
          .info-note b {
            display: block;
            margin-bottom: 4px;
            font-size: 14px;
          }
 
          .param-section-title {
            margin-top: 26px;
            margin-bottom: 10px;
            padding-left: 10px;
            border-left: 4px solid #2C7BE5;
            font-weight: 600;
            font-size: 15px;
            letter-spacing: 0.4px;
            text-transform: uppercase;
            color: #2c3e50;
          }
          .param-section-title:first-of-type { margin-top: 4px; }
 
          .param-hint {
            font-size: 12.5px;
            color: #8a93a0;
            margin-bottom: 18px;
          }
 
          details.param-card {
            background: #fbfcfd;
            border: 1px solid #e3e7ec;
            border-radius: 8px;
            margin-bottom: 8px;
            overflow: hidden;
          }
 
          details.param-card summary {
            cursor: pointer;
            list-style: none;
            padding: 10px 14px;
            font-size: 14px;
            font-weight: 600;
            color: #1f2d3d;
            background: #f1f4f8;
            display: flex;
            align-items: center;
          }
          details.param-card summary::-webkit-details-marker { display: none; }
          details.param-card summary::before {
            content: '\u25B8';
            color: #2C7BE5;
            margin-right: 8px;
            display: inline-block;
            transition: transform 0.15s ease;
          }
          details.param-card[open] summary::before { transform: rotate(90deg); }
          details.param-card[open] summary { border-bottom: 1px solid #e3e7ec; }
 
          .param-card-body {
            padding: 12px 16px;
            font-size: 13.5px;
            line-height: 1.55;
            color: #3a3f44;
          }
          .param-card-body ul { margin: 6px 0 0 18px; padding: 0; }
          .param-card-body li { margin-bottom: 4px; }
        "))
      ),
      
      titlePanel("Alignment : Obiwarp Parameters"),
      sidebarLayout(
        sidebarPanel(
          
          p("\u2757 Parameters marked with this symbol may require adjustment depending on your dataset."),
          hr(),
          
          numericInput("binSize", "\u2757 Bin size (m/z dimension)",
                       value = defaults$binSize %||% 0.05, min = 0.01, step = 0.01),
          selectInput("distFun", "Distance function",
                      choices = c("cor", "cor_opt", "cov", "prd", "euc"),
                      selected = defaults$distFun %||% "cor_opt"),
          numericInput("response", "\u2757 Responsiveness (0-100)",
                       value = defaults$response %||% 50, min = 0, max = 100, step = 1),
          checkboxInput("localAlignment", "Local alignment",
                        value = defaults$localAlignment %||% FALSE),
          numericInput("rtimeDifferenceThreshold", 
                       "Retention time gap threshold (× median scan interval)",
                       value = defaults$rtimeDifferenceThreshold %||% 5, min = 0, step = 1),
          
          br(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Selection of the reference sample"),
          
          div(class = "info-note",
              tags$b("QC reference"),
              p("The reference sample selected for this stage is a pooled QC sample, used as a quality control reference
            for downstream alignment. The reference QC was chosen as the most representative QC sample,
            defined as the one with a median number of detected peaks across all QC injections, in order to minimize the
            influence of outliers in signal complexity.")
          ),
          
          hr(),
          h4("Parameter Description"),
          p(class = "param-hint", "Click a parameter below to expand its detailed explanation."),
          
          div(class = "param-section-title", "Profile Matrix & Distance"),
          
          tags$details(class = "param-card",
                       tags$summary("Bin size (m/z dimension)"),
                       div(class = "param-card-body",
                           p("Defines the bin width in the m/z dimension used to build the profile matrix on which ",
                             "OBI-Warp alignment operates. Each sample's chromatogram is discretised into m/z bins of this size ",
                             "before pairwise comparison. Smaller values preserve more m/z detail but increase memory usage ",
                             "and computation time significantly. ",
                             "Typical values : 0.01–0.1 for high-resolution instruments (Orbitrap), 0.5–1 for lower-resolution data (TOF, QqQ).")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Distance function"),
                       div(class = "param-card-body",
                           p("Defines the similarity metric used to compare two profile matrices during alignment:"),
                           tags$ul(
                             tags$li(tags$b("cor"), ": Pearson correlation between intensity vectors of consecutive scans."),
                             tags$li(tags$b("cor_opt"), ": optimised Pearson correlation (faster implementation, recommended default)."),
                             tags$li(tags$b("cov"), ": covariance — sensitive to absolute intensity differences, less robust to scaling."),
                             tags$li(tags$b("prd"), ": product of intensities — emphasises high-intensity regions."),
                             tags$li(tags$b("euc"), ": Euclidean distance — sensitive to intensity magnitude, less suited for LC-MS data with varying total signal.")
                           ),
                           p(tags$span("cor_opt calculate only 10% diagonal band of distance matrix ; better runtime.",
                                       style = "color:blue;"))
                       )
          ),
          
          div(class = "param-section-title", "Warping & Retention Time Correction"),
          
          tags$details(class = "param-card",
                       tags$summary("Responsiveness (0–100)"),
                       div(class = "param-card-body",
                           p("Controls the flexibility of the warping function applied to correct retention times. ",
                             tags$b("response = 0"), ": purely linear correction — only the start and end anchor points are used, ",
                             "resulting in a rigid, global shift. ",
                             tags$b("response = 100"), ": maximum flexibility — all bijective anchor points are used, ",
                             "allowing the alignment to follow fine-grained local RT drifts. ",
                             "Intermediate values balance between global robustness and local adaptability. ",
                             tags$span("High values can overfit on noisy anchor points ; start with 20–50 and increase if systematic local drift is visible.",
                                       style = "color:#FD7E14;"))
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Local alignment"),
                       div(class = "param-card-body",
                           p("If disabled (default), OBI-Warp performs ", tags$b("global alignment"), ": every part of the chromatogram ",
                             "is warped, including regions with no shared peaks. ",
                             "If enabled, ", tags$b("local alignment"), " only adjusts regions where anchor points were confidently identified, ",
                             "leaving unmatched regions unadjusted. ",
                             "Local alignment can be beneficial for complex datasets with large RT regions containing no signal, ",
                             "but may leave some regions uncorrected.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Retention time gap threshold"),
                       div(class = "param-card-body",
                           p("Defines the threshold for detecting gaps in the sequence of consecutive scan retention times within a sample. ",
                             "A gap is identified when the RT difference between two consecutive MS1 spectra exceeds ",
                             tags$b("rtimeDifferenceThreshold × the median RT interval"), " observed across all consecutive scans of that sample. ",
                             "Spectra acquired ", tags$em("after"), " such a gap are ", tags$b("not adjusted"), " — their original retention times are preserved. ",
                             "The default value of 5 is appropriate for standard LC-MS data. ",
                             tags$b("For Waters instruments with lock-mass scans, or for DDA/LC-MS/MS data where MS2 scans interrupt MS1 acquisition, ",
                                       "this threshold may need to be increased to avoid false gap detection."))
                       )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        stopApp(list(
          binSize = input$binSize,
          distFun = input$distFun,
          response = input$response,
          localAlignment = input$localAlignment,
          rtimeDifferenceThreshold = input$rtimeDifferenceThreshold
        ))
      })
      
    }
    
    shiny::runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Get parameters
  
  obi_params <- get_obiwarp_params()
  
  if (is.null(obi_params)) {
    message("Alignment canceled by user.")
    return(NULL)
  }
  
  # Find reference QC for alignment
  
  peaks_df <- as.data.frame(chromPeaks(xdata_peaks))
  peak_counts <- table(peaks_df$sample)
  
  xdata_peaks_sample_names <- sampleNames(xdata_peaks)
  names(peak_counts) <- xdata_peaks_sample_names[as.numeric(names(peak_counts))]
  
  qc_names_mzML <- paste0(qc_names, ".mzML")
  qc_counts <- peak_counts[qc_names_mzML]
  
  qc_ref_align <- names(qc_counts)[which.min(abs(qc_counts - median(qc_counts, na.rm = TRUE)))]
  idx_med_QC <- match(qc_ref_align, xdata_peaks_sample_names)
  
  
  # Create ObiwarpParam object
  
  obiwarp_param <- ObiwarpParam(
    binSize = obi_params$binSize,                                      # bin size (in mz dimension) to be used for the profile matrix generation
    centerSample = idx_med_QC,                                         # index of the center sample in the experiment. It defaults to floor(median(1:length(fileNames(object))))
    distFun = obi_params$distFun,                                      # cor_opt for better runtime
    response = obi_params$response,                                    # Responsiveness of warping. 0 will give a linear warp based on start and end points. 100 will use all bijective anchors
    localAlignment = obi_params$localAlignment,                        # Local rather than global alignment
    rtimeDifferenceThreshold = obi_params$rtimeDifferenceThreshold     # Threshold to identify a gap in the sequence of retention times of (MS1) spectra of a sample/file (intra-sample)
  )
  
  # Perform alignment
  
  n_cores <- max(1, parallel::detectCores() - 2)
  
  if (.Platform$OS.type == "unix") {
    # Mac/Linux: fork, no network involved -> cannot be blocked by a firewall
    bp_param <- MulticoreParam(workers = n_cores)
  } else {
    # Windows: only SnowParam is available, so we test it in a subprocess that can be terminated
    callr_ok <- requireNamespace("callr", quietly = TRUE) ||
      isTRUE(tryCatch({ install.packages("callr"); requireNamespace("callr", quietly = TRUE) },
                      error = function(e) FALSE))
    
    snow_ok <- if (callr_ok) {
      tryCatch({
        callr::r(function() {
          library(BiocParallel)
          p <- SnowParam(workers = 1)
          bpstart(p)
          bpstop(p)
          TRUE
        }, timeout = 5)
      }, error = function(e) FALSE)
    } else FALSE
    
    bp_param <- if (isTRUE(snow_ok)) SnowParam(workers = n_cores) else SerialParam()
  }
  
  register(bp_param)
  
  xdata_aligned <- adjustRtime(xdata_peaks, param = obiwarp_param)
  
  # Standard plots function 
  
  plot_align_standards <- function(xdata_peaks, standards) {
    
    n_files <- length(fileNames(xdata_peaks))
    cols <- viridis(n_files)
    
    plots_list <- list()
    
    for (std in names(standards)) {
      
      # Create a new plot for each standard
      plotChromPeaks(
        xdata_peaks,
        file = 1,
        col = cols[1],
        xlim = standards[[std]]$rt,
        ylim = standards[[std]]$mz,
        main = paste("Standard :", std, "- After Alignment"),
        xlab = "Retention time (s)",
        ylab = expression(italic(m)/z)
      )
      
      # Add other files if they exist
      
      if (n_files > 1) {
        for (i in 2:n_files) {
          plotChromPeaks(
            xdata_peaks,
            file = i,
            col = cols[i],
            xlim = standards[[std]]$rt,
            ylim = standards[[std]]$mz,
            add = TRUE
          )
        }
      }
      
      # Add theoretical m/z line and legend
      
      abline(h = standards[[std]]$theo, lty = 2, lwd = 2, col = "black")
      legend("topright",
             legend = paste("Theoretical m/z =", standards[[std]]$theo),
             lty = 2, lwd = 2, col = "black", bty = "n")
      
      # Plot listing
      
      plots_list[[std]] <- recordPlot()
    }
    
    return(plots_list)
  }
  
  # Generate standard plots after alignment
  
  plots_align_list <- plot_align_standards(xdata_aligned, standards)
  
  # Save parameters
  
  obiwarp_list <- as.list(obiwarp_param)
  write_json(obiwarp_list, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "1_Pre-processing/obiwarp_param.json"))
  
  # Return results
  
  list(
    aligned_data = xdata_aligned,
    alignment_parameters = obiwarp_list,
    standard_plots_align = plots_align_list,
    reference_qc = qc_ref_align
  )
}

########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Complete Feature Grouping Function with Standards Visualization
#'
#' @param xdata_aligned XCMSnSet object with aligned peak data
#' @param param_folder Folder path to save parameters
#' @param chart_folder Folder path to save charts
#' @param standards List of standards with their parameters
#' @return List containing grouped data and grouping plots
#' 

perform_feature_grouping <- function(xdata_aligned, metadata_table, param_folder,
                                     chart_folder, standards) {
  
  # Get PeakDensity parameters
  
  get_peakdensity_params <- function(defaults = list()) {
    
    `%||%` <- function(a, b) if (!is.null(a)) a else b
    
    ui <- fluidPage(
      
      tags$head(
        tags$style(HTML("
          .param-section-title {
            margin-top: 26px;
            margin-bottom: 10px;
            padding-left: 10px;
            border-left: 4px solid #2C7BE5;
            font-weight: 600;
            font-size: 15px;
            letter-spacing: 0.4px;
            text-transform: uppercase;
            color: #2c3e50;
          }
          .param-section-title:first-of-type { margin-top: 4px; }
 
          .param-hint {
            font-size: 12.5px;
            color: #8a93a0;
            margin-bottom: 18px;
          }
 
          details.param-card {
            background: #fbfcfd;
            border: 1px solid #e3e7ec;
            border-radius: 8px;
            margin-bottom: 8px;
            overflow: hidden;
          }
 
          details.param-card summary {
            cursor: pointer;
            list-style: none;
            padding: 10px 14px;
            font-size: 14px;
            font-weight: 600;
            color: #1f2d3d;
            background: #f1f4f8;
            display: flex;
            align-items: center;
          }
          details.param-card summary::-webkit-details-marker { display: none; }
          details.param-card summary::before {
            content: '\u25B8';
            color: #2C7BE5;
            margin-right: 8px;
            display: inline-block;
            transition: transform 0.15s ease;
          }
          details.param-card[open] summary::before { transform: rotate(90deg); }
          details.param-card[open] summary { border-bottom: 1px solid #e3e7ec; }
 
          .param-card-body {
            padding: 12px 16px;
            font-size: 13.5px;
            line-height: 1.55;
            color: #3a3f44;
          }
          .param-card-body ul { margin: 6px 0 0 18px; padding: 0; }
          .param-card-body li { margin-bottom: 4px; }
        "))
      ),
      
      titlePanel("Grouping : PeakDensity Parameters"),
      sidebarLayout(
        sidebarPanel(
          
          p("\u2757 Parameters marked with this symbol may require adjustment depending on your dataset."),
          hr(),
          
          numericInput("bw", "Bandwidth (smoothing kernel)",
                       value = defaults$bw %||% 3, min = 0.1, step = 0.1),
          numericInput("minFraction", "\u2757 Minimum fraction of samples per feature",
                       value = defaults$minFraction %||% 0.25, min = 0, max = 1, step = 0.01),
          numericInput("minSamples", "\u2757 Minimum number of samples per group",
                       value = defaults$minSamples %||% 5, min = 1, step = 1),
          numericInput("binSize", "\u2757 Bin size (m/z slice)",
                       value = defaults$binSize %||% 0.0035, min = 0.0001, step = 0.0001),
          numericInput("ppm", "\u2757 ppm tolerance",
                       value = defaults$ppm %||% 7, min = 0, step = 0.1),
          
          br(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Parameter Description"),
          p(class = "param-hint", "Click a parameter below to expand its detailed explanation."),
          
          div(class = "param-section-title", "Retention Time Grouping"),
          
          tags$details(class = "param-card",
                       tags$summary("Bandwidth"),
                       div(class = "param-card-body",
                           p("Defines the standard deviation (in seconds) of the smoothing kernel passed to ",
                             tags$code("stats::density()"), ", applied to the RT distribution of peaks within each m/z slice. ",
                             "A kernel density estimate is built from the RT positions of all peaks across samples, ",
                             "and local maxima in this smoothed distribution define the candidate feature groups. ",
                             "A larger bandwidth merges peaks with greater RT spread into the same feature ; ",
                             "a smaller value is more selective but may split a single feature across multiple groups. ",
                             tags$span(
                               "In practice, bw should be set to a value slightly larger than the expected residual RT ",
                               "deviation between samples after alignment. Start with a small value (e.g. 2–5 s) and ",
                               "visually inspect the feature grouping results — if a single compound is split into multiple ",
                               "features across samples, increase bw; if unrelated compounds are merged, decrease it.",
                               style = "color:#FD7E14;"))
                       )
          ),
          
          div(class = "param-section-title", "Sample Prevalence Filters"),
          
          tags$details(class = "param-card",
                       tags$summary("Minimum fraction"),
                       div(class = "param-card-body",
                           p("Minimum proportion of samples within the biological/QC group (group 1) in which a peak must ",
                             "be detected for the feature to be retained. ",
                             "In the current pipeline, all samples except blanks are assigned to a single group — ",
                             "BIO and QC samples are treated together as group 1, while blank samples are assigned ",
                             tags$code("NA"), " and are entirely excluded from feature definition. ",
                             "For example, with minFraction = 0.25, at least 25% of the non-blank samples must contain ",
                             "a detected peak at that RT/m/z position. ",
                             tags$b("Since only one group is used here, this parameter acts as a simple global filter ",
                                    "on the fraction of non-blank samples."),
                             " Setting this too high discards low-prevalence features (e.g. present in only a few samples); ",
                             "too low retains many noise-derived features.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Minimum samples"),
                       div(class = "param-card-body",
                           p("Minimum absolute number of non-blank samples in which a peak must be detected, ",
                             "regardless of their fraction. Acts as a hard count floor : even if minFraction is satisfied, ",
                             "a feature detected in fewer samples than this threshold is rejected. ",
                             "In this pipeline, since blanks are set to ", tags$code("NA"),
                             " and therefore ignored, this count applies only to BIO and QC samples. ",
                             tags$b("Useful as a safety net when the total number of samples is small : ",
                                    "a fraction-based filter alone may accept features present in very few samples."))
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Combination of conditions"),
                       div(class = "param-card-body",
                           p("Both conditions are evaluated jointly using a logical ", tags$b("AND"), " within each sample group. ",
                             "A feature is retained if, in ", tags$b("at least one group"), ", the fraction of samples with a detected peak ",
                             "is ≥ minFraction ", tags$b("AND"), " the total count of samples with a peak across the full dataset ",
                             "is ≥ minSamples.")
                       )
          ),
          
          div(class = "param-section-title", "m/z Slicing"),
          
          tags$details(class = "param-card",
                       tags$summary("Bin size"),
                       div(class = "param-card-body",
                           p("Width of the m/z slices used to partition the full m/z range before applying density-based grouping. ",
                             "Within each slice, the RT positions of all detected peaks (across all samples) are pooled and ",
                             "a kernel density estimate is computed to identify co-eluting peak groups. ",
                             "A smaller bin size reduces the chance of grouping peaks from chemically distinct compounds with close m/z values, ",
                             "but increases computation time. ",
                             tags$b("For high-resolution instruments (Orbitrap), values of 0.001–0.01 Da are typical. ",
                                    "binSize and ppm work together : the effective slice width is max(binSize, ppm × mz / 1e6)."))
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Ppm tolerance"),
                       div(class = "param-card-body",
                           p("Adds a relative m/z-dependent component to the bin size. When ppm > 0, the effective slice width ",
                             "at a given m/z is max(binSize, ppm × mz / 1e6), meaning higher m/z values automatically receive wider grouping windows. ",
                             "This is physically motivated : mass accuracy degrades proportionally with m/z on most instruments. ",
                             "Setting ppm = 0 (default) uses a fixed ", tags$b("binSize"), " across the full m/z range. ",
                             tags$span("Use ppm when your dataset spans a wide m/z range and you observe that high-m/z features are being split artificially.",
                                       style = "color:#FD7E14;"))
                       )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        stopApp(list(
          bw = input$bw,
          minFraction = input$minFraction,
          minSamples = input$minSamples,
          binSize = input$binSize,
          ppm = input$ppm
        ))
      })
      
    }
    
    shiny::runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Get parameters
  
  pdp_params <- get_peakdensity_params()
  
  if (is.null(pdp_params)) {
    message("Feature grouping canceled by user.")
    return(NULL)
  }
  
  # PeakDensityParam : sampleGroups creation 
  
  files_order <- tools::file_path_sans_ext(basename(fileNames(xdata_aligned))) # Extract filenames without path and extension
  
  # Match file order with metadata_table
  
  idx <- match(files_order, metadata_table$SampleName) # index in metadata_table
  
  # Build sampleGroups vector : (Providing NA for all blanks in an experiment will for example avoid features to be defined for signals (chrom peaks) present only in blank samples.)
  
  sampleGroups <- rep(1, length(files_order))                  # initialize : assign group 1 to all samples
  sampleGroups[metadata_table$SampleType[idx] == "blank_analysis"] <- NA   # overwrite blanks with NA
  
  
  # Perform feature grouping
  
  pdp <- PeakDensityParam(                                        # Density-based on alignment
    sampleGroups = sampleGroups,                                  # Samples sharing the same group label are considered together when defining features, while samples assigned NA are ignored and do not contribute to feature definition steps
    bw = pdp_params$bw,                                           # Defining the bandwidth (standard deviation of the smoothing kernel) to be used
    minFraction = pdp_params$minFraction,                         # Minimum fraction of samples where a feature must be present
    minSamples = pdp_params$minSamples,                           # Minimum fraction of samples in at least 1 group where the peak must appear
    binSize = pdp_params$binSize,                                 # Defines the fixed width of the m/z slice used to group neighboring peaks. All peaks within a range of X m/z will be considered “close” for grouping.
    ppm = pdp_params$ppm                                          # m/z dependent: bin size adjusted by ppm, max = binSize + ppm * max m/z
  )
  
  xdata_grouped <- groupChromPeaks(xdata_aligned, param = pdp)
  
  # Save parameters
  
  pdp_list <- as.list(pdp)
  write_json(pdp_list, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "1_Pre-processing/PeakDensityParam.json"))
  
  # Create standard plots for grouping verification
  
  fd <- as.data.frame(featureDefinitions(xdata_grouped))
  
  create_grouping_plots <- function() {
    
    grouping_plots <- list()
    
    for (std in names(standards)) {
      
      # Subset features in the window
      
      fd_sub <- fd[
        fd$rtmed >= standards[[std]]$rt[1] & fd$rtmed <= standards[[std]]$rt[2] &
          fd$mzmed >= standards[[std]]$mz[1] & fd$mzmed <= standards[[std]]$mz[2],
        , drop = FALSE]
      
      # Create plot
      
      n_files <- length(fileNames(xdata_grouped))
      cols <- viridis(n_files)
      
      plotChromPeaks(
        xdata_grouped,
        file = 1,
        col = cols[1],
        xlim = standards[[std]]$rt,
        ylim = standards[[std]]$mz,
        xlab = "Retention time (s)",
        ylab = expression(italic(m)/z),
        main = paste("Standard :", std, "- Grouping")
      )
      
      if (n_files > 1) {
        for (i in 2:n_files) {
          plotChromPeaks(
            xdata_grouped,
            file = i,
            col = cols[i],
            xlim = standards[[std]]$rt,
            ylim = standards[[std]]$mz,
            add = TRUE
          )
        }
      }
      
      # Add features if any
      
      if (nrow(fd_sub) > 0) {
        points(fd_sub$rtmed, fd_sub$mzmed, pch = 4, col = "red", lwd = 2, cex = 1.2)
        
        for (r in seq_len(nrow(fd_sub))) {
          rect(
            xleft = as.numeric(fd_sub$rtmin[r]),
            xright = as.numeric(fd_sub$rtmax[r]),
            ybottom = as.numeric(fd_sub$mzmin[r]),
            ytop = as.numeric(fd_sub$mzmax[r]),
            border = "red", lty = 2, lwd = 2
          )
        }
      }
      
      # Add theoretical m/z line and legend
      
      abline(h = standards[[std]]$theo, lty = 2, lwd = 2, col = "black")
      legend(
        "topright",
        legend = c(
          paste("Theoretical m/z =", standards[[std]]$theo),
          "Feature centroid",
          "m/z and RT limits of \n a feature after grouping"
        ),
        col = c("black", "red", "red"),
        lty = c(2, NA, 2),
        lwd = c(2, NA, 2),
        pch = c(NA, 4, NA),
        pt.cex = c(NA, 1.2, NA),
        bty = "n"
      )
      
      # Plot listing
      
      grouping_plots[[std]] <- recordPlot()
      
    }
    
    return(grouping_plots)
  }
  
  create_density_plots_standard <- function() {
    
    density_plots <- list()
    
    for (std in names(standards)) {
      
      eic <- chromatogram(xdata_grouped, rt = standards[[std]]$rt, mz = standards[[std]]$mz)
      
      if (!any(hasChromPeaks(eic))) {
        warning(paste("No peaks for standard", std, "- skipped"))
        next
      }
      
      plotChromPeakDensity(eic, simulate = FALSE)
      title(main = paste("Standard :", std, "- Density (actual grouping, bw =", pdp_params$bw, ")"))
      density_plots[[std]] <- recordPlot()
    }
    
    return(density_plots)
  }
  
  # Plot Creation 
  
  grouping_plots <- create_grouping_plots()
  standard_density_plots <- create_density_plots_standard()
  
  # Return results
  
  list(
    grouped_data = xdata_grouped,
    grouping_parameters = pdp_list,
    grouping_plots = grouping_plots,
    standard_density_plots = standard_density_plots,
    feature_definitions = fd,
    Verif_sampleGroups = data.frame(file = files_order,
                                    idx = idx,
                                    type = metadata_table$SampleType[idx],
                                    group = sampleGroups)
  )
  
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Gap Filling Function with Standards Visualization
#'
#' @param xdata_grouped XCMSnExp object with grouped (corresponded) peak data
#' @param data_folder Folder path to save the peak filled summary
#' @param param_folder Folder path to save parameters
#' @return List containing gap-filled data and standard plots
#' 

perform_gap_filling <- function(xdata_grouped, data_folder, param_folder) {
  
  # Get FillChromPeaks parameters
  
  get_gapfilling_params <- function(defaults = list()) {
    
    `%||%` <- function(a, b) if (!is.null(a)) a else b
    
    ui <- fluidPage(
      
      tags$head(
        tags$style(HTML("
          .param-section-title {
            margin-top: 26px;
            margin-bottom: 10px;
            padding-left: 10px;
            border-left: 4px solid #2C7BE5;
            font-weight: 600;
            font-size: 15px;
            letter-spacing: 0.4px;
            text-transform: uppercase;
            color: #2c3e50;
          }
          .param-section-title:first-of-type { margin-top: 4px; }
 
          .param-hint {
            font-size: 12.5px;
            color: #8a93a0;
            margin-bottom: 18px;
          }
 
          details.param-card {
            background: #fbfcfd;
            border: 1px solid #e3e7ec;
            border-radius: 8px;
            margin-bottom: 8px;
            overflow: hidden;
          }
 
          details.param-card summary {
            cursor: pointer;
            list-style: none;
            padding: 10px 14px;
            font-size: 14px;
            font-weight: 600;
            color: #1f2d3d;
            background: #f1f4f8;
            display: flex;
            align-items: center;
          }
          details.param-card summary::-webkit-details-marker { display: none; }
          details.param-card summary::before {
            content: '\u25B8';
            color: #2C7BE5;
            margin-right: 8px;
            display: inline-block;
            transition: transform 0.15s ease;
          }
          details.param-card[open] summary::before { transform: rotate(90deg); }
          details.param-card[open] summary { border-bottom: 1px solid #e3e7ec; }
 
          .param-card-body {
            padding: 12px 16px;
            font-size: 13.5px;
            line-height: 1.55;
            color: #3a3f44;
          }
          .param-card-body ul { margin: 6px 0 0 18px; padding: 0; }
          .param-card-body li { margin-bottom: 4px; }
        "))
      ),
      
      titlePanel("Gap Filling : FillChromPeaksParam"),
      sidebarLayout(
        sidebarPanel(
          
          p("\u2757 Parameters marked with this symbol may require adjustment depending on your dataset."),
          hr(),
          
          numericInput("expandMz", "\u2757 m/z expansion factor",
                       value = defaults$expandMz %||% 0, min = 0, step = 0.1),
          numericInput("expandRt", "\u2757 RT expansion factor",
                       value = defaults$expandRt %||% 0, min = 0, step = 0.1),
          numericInput("ppm", "\u2757 ppm tolerance",
                       value = defaults$ppm %||% 0, min = 0, step = 1),
          numericInput("fixedMz", "Fixed m/z addition (Da)",
                       value = defaults$fixedMz %||% 0, min = 0, step = 0.001),
          numericInput("fixedRt", "Fixed RT addition (s)",
                       value = defaults$fixedRt %||% 0, min = 0, step = 1),
          
          br(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Parameter Description"),
          p(class = "param-hint", "Click a parameter below to expand its detailed explanation."),
          
          div(class = "param-section-title", "Integration Window"),
          
          tags$details(class = "param-card",
                       tags$summary("m/z expansion factor"),
                       div(class = "param-card-body",
                           p("Relative expansion applied to the m/z range of a feature (i.e. the mzmin/mzmax spanned by its detected peaks) ",
                             "before integrating the missing signal in samples with no assigned peak. The window is widened by ",
                             "expandMz \u00d7 (mzmax - mzmin) on each side. A value of 0 keeps the exact feature m/z width ; ",
                             "increase slightly (e.g. 0.2\u20130.5) if the feature's m/z range is very narrow and integration seems too strict.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("RT expansion factor"),
                       div(class = "param-card-body",
                           p("Relative expansion applied to the retention time range of a feature before integration, following the same logic ",
                             "as the m/z expansion factor. Useful when residual RT drift remains after alignment and the feature's RT window ",
                             "is too narrow to capture the missing signal in some samples.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("ppm tolerance"),
                       div(class = "param-card-body",
                           p("Additional m/z-dependent expansion, applied on top of expandMz, expressed in ppm of the feature's m/z. ",
                             "Adds robustness for high m/z features where a fixed expandMz might be insufficient. ",
                             "Set to 0 to rely only on expandMz / fixedMz.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Fixed m/z / RT addition"),
                       div(class = "param-card-body",
                           p("Constant value added to the integration window on top of the relative expansion, expressed in Da for fixedMz ",
                             "and in seconds for fixedRt. Unlike expandMz/expandRt, this addition does not scale with the feature's own width, ",
                             "which helps for very narrow features where a purely relative expansion would remain too small. ",
                             tags$b("Leave at 0 unless integration fails to recover an expected signal for a specific standard."))
                       )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        stopApp(list(
          expandMz = input$expandMz,
          expandRt = input$expandRt,
          ppm = input$ppm,
          fixedMz = input$fixedMz,
          fixedRt = input$fixedRt
        ))
      })
      
    }
    
    shiny::runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Get parameters
  
  gf_parameters <- get_gapfilling_params()
  
  if (is.null(gf_parameters)) {
    message("Gap filling canceled by user.")
    return(NULL)
  }
  
  # Create FillChromPeaksParam object
  
  fgp <- FillChromPeaksParam(               # Defines the m/z-rt region used to integrate signal for samples missing a peak for a feature
    expandMz = gf_parameters$expandMz,      # Feature-relative m/z window expansion
    expandRt = gf_parameters$expandRt,      # Feature-relative RT window expansion
    ppm = gf_parameters$ppm,                # Additional ppm-based m/z expansion
    fixedMz = gf_parameters$fixedMz,        # Constant m/z addition (Da)
    fixedRt = gf_parameters$fixedRt         # Constant RT addition (s)
  )
  
  # Perform gap filling
  
  n_missing_before <- sum(is.na(featureValues(xdata_grouped)))
  
  xdata_filled <- fillChromPeaks(xdata_grouped, param = fgp, msLevel = 1L)
  
  n_missing_after <- sum(is.na(featureValues(xdata_filled)))
  n_filled_peaks <- sum(chromPeakData(xdata_filled)$is_filled)
  
  
  # Quality Control 
  
  cp <- chromPeaks(xdata_filled)
  cpd <- chromPeakData(xdata_filled)
  fdef <- featureDefinitions(xdata_filled)
  
  summary_rows <- list()
  
  for (i in seq_len(nrow(fdef))) {
    idx <- fdef$peakidx[[i]]
    is_filled <- cpd$is_filled[idx]
    into <- cp[idx, "into"]
    
    filled_into <- into[is_filled]
    if (length(filled_into) == 0) next
    
    detected_into <- into[!is_filled]
    med_detected <- if (length(detected_into) > 0) median(detected_into, na.rm = TRUE) else NA
    med_filled <- median(filled_into, na.rm = TRUE)
    
    summary_rows[[length(summary_rows) + 1]] <- data.frame(
      feature = rownames(fdef)[i],
      n_detected = length(detected_into),
      n_filled = length(filled_into),
      median_detected_into = med_detected,
      median_filled_into = med_filled,
      ratio_detected_to_filled = med_detected / med_filled
    )
  }
  
  filled_summary <- do.call(rbind, summary_rows)
  filled_summary <- filled_summary[order(filled_summary$ratio_detected_to_filled), ]
  
  ratio_median <- round(median(filled_summary$ratio_detected_to_filled, na.rm = TRUE), 2)
  
  message("--- Filled peaks vs detected peaks intensity ---")
  message("Median ratio (detected/filled) across features : ", round(ratio_median, 1))
  if (ratio_median < 1) {
    message("\U00002757 WARNING : Gapfilled peaks are LARGER than detected peaks !")
    message("→ Gap filling may be creating artefacts")
    message("→ Consider reducing expandMz/expandRt parameters")
  }
  print(utils::head(filled_summary, 10))
  
  
  # Save data
  
  utils::write.csv(
    filled_summary,
    file.path(data_folder, "1_Pre-processing/GapFillingPeak_summary.csv"),
    row.names = FALSE
  )
  
  # Save parameters
  
  gf_list <- as.list(fgp)
  write_json(gf_list, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "1_Pre-processing/FillChromPeaksParam.json"))
  
  # Return results
  
  list(
    xdata_filled = xdata_filled,
    gapfilling_parameters = gf_list,
    n_missing_before = n_missing_before,
    n_missing_after = n_missing_after,
    n_filled_peaks = n_filled_peaks,
    filled_summary = filled_summary
  )
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Adduct and Isotope Search from Gap-Filled Feature Data
#'
#' @param xdata_filled XCMSnExp object after gap filling
#' @param data_folder Folder path to save the peak filled summary
#' @param param_folder Folder path to save parameters
#' @param blank_names List of blank names
#' @return list with annotated featureDefinitions and intensity matrices
#'

find_adducts <- function(xdata_filled, data_folder, param_folder, blank_names) {
  
  # Shared CSS for both Shiny apps
  
  param_css <- "
    .param-section-title {
      margin-top: 26px; margin-bottom: 10px; padding-left: 10px;
      border-left: 4px solid #2C7BE5; font-weight: 600; font-size: 15px;
      letter-spacing: 0.4px; text-transform: uppercase; color: #2c3e50;
    }
    .param-section-title:first-of-type { margin-top: 4px; }
    .param-hint { font-size: 12.5px; color: #8a93a0; margin-bottom: 18px; }
    details.param-card {
      background: #fbfcfd; border: 1px solid #e3e7ec; border-radius: 8px;
      margin-bottom: 8px; overflow: hidden;
    }
    details.param-card summary {
      cursor: pointer; list-style: none; padding: 10px 14px; font-size: 14px;
      font-weight: 600; color: #1f2d3d; background: #f1f4f8; display: flex; align-items: center;
    }
    details.param-card summary::-webkit-details-marker { display: none; }
    details.param-card summary::before {
      content: '\u25B8'; color: #2C7BE5; margin-right: 8px; display: inline-block;
      transition: transform 0.15s ease;
    }
    details.param-card[open] summary::before { transform: rotate(90deg); }
    details.param-card[open] summary { border-bottom: 1px solid #e3e7ec; }
    .param-card-body { padding: 12px 16px; font-size: 13.5px; line-height: 1.55; color: #3a3f44; }
    .param-card-body ul { margin: 6px 0 0 18px; padding: 0; }
    .param-card-body li { margin-bottom: 4px; }
  "
  
  # -------- Shiny app 1: ask for adduct/isotope search parameters --------
  
  get_adduct_params <- function() {
    
    ui <- fluidPage(
      tags$head(tags$style(HTML(param_css))),
      titlePanel("Adduct & Isotope Search Parameters"),
      sidebarLayout(
        sidebarPanel(
          radioButtons("polarity", "Ionization polarity", choices = c("pos", "neg"), selected = "pos"),
          numericInput("rt_tol", "\u2757 RT tolerance for co-elution (s)", value = 2, min = 0, step = 1),
          numericInput("ppm", "\u2757 ppm tolerance for mass matching", value = 5, min = 0, step = 1),
          numericInput("cor_threshold", "\u2757 Minimum intensity correlation", value = 0.85, min = 0, max = 1, step = 0.05),
          numericInput("max_isotopes", "\u2757 Max isotope rank to search (e.g. 3 = up to M+3)", value = 3, min = 1, step = 1),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Parameter Description"),
          p(class = "param-hint", "Click a parameter below to expand its detailed explanation."),
          div(class = "param-section-title", "Feature Grouping & Matching"),
          tags$details(class = "param-card", tags$summary("RT tolerance"),
                       div(class = "param-card-body",
                           p("Maximum retention time difference (in seconds) allowed between two features for them to be considered co-eluting and grouped together."))),
          tags$details(class = "param-card", tags$summary("ppm tolerance"),
                       div(class = "param-card-body",
                           p("Maximum relative mass difference (in ppm) allowed between two candidate neutral masses (adducts) or between two m/z (isotopes) for them to be considered a match."))),
          tags$details(class = "param-card", tags$summary("Minimum intensity correlation"),
                       div(class = "param-card-body",
                           p("Minimum Pearson correlation between two features' intensity profiles (across samples) required for them to be grouped as coming from the same compound."))),
          tags$details(class = "param-card", tags$summary("Max isotope rank"),
                       div(class = "param-card-body",
                           p("How many 13C isotopes to search for above the monoisotopic feature (e.g. 2 searches for M+1 and M+2).")))
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        stopApp(list(
          polarity = input$polarity,
          rt_tol = input$rt_tol,
          ppm = input$ppm,
          cor_threshold = input$cor_threshold,
          max_isotopes = input$max_isotopes
        ))
      })
    }
    
    shiny::runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  adduct_params <- get_adduct_params()
  
  if (is.null(adduct_params)) {
    message("Adduct search canceled by user.")
    return(NULL)
  }
  
  polarity      <- adduct_params$polarity
  rt_tol        <- adduct_params$rt_tol
  ppm           <- adduct_params$ppm
  cor_threshold <- adduct_params$cor_threshold
  max_isotopes  <- adduct_params$max_isotopes
  
  # Reference table: mass_shift = mass of the group actually added/removed (per event)
  # n_shift = number of times mass_shift applies (e.g. 2 for [M+2H]2+)
  # n_mol   = number of M units combined in the ion (e.g. 2 for [2M+H]+)
  # freq    = qualitative prior on how commonly this adduct is observed in practice
  
  adduct_table <- data.frame(
    adduct     = c("[M+H]+", "[M+Na]+", "[M+NH4]+", "[M+K]+", "[2M+H]+", "[2M+Na]+",
                   "[M+H-H2O]+", "[M+ACN+H]+", "[M+2H]2+",
                   "[M-H]-", "[M+FA-H]-", "[M+Cl]-", "[2M-H]-",
                   "[M+CH3COO]-", "[2M+FA-H]-"),
    mass_shift = c(1.007276, 22.989221, 18.033823, 38.963158, 1.007276, 22.989221,
                   -17.003289, 42.033825, 1.007276,
                   -1.007276, 44.998201, 34.969402, -1.007276,
                   59.013304, 44.998201),
    charge     = c(1, 1, 1, 1, 1, 1, 1, 1, 2, -1, -1, -1, -1, -1, -1),
    n_mol      = c(1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1, 2),
    n_shift    = c(1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1),
    polarity   = c("pos", "pos", "pos", "pos", "pos", "pos", "pos", "pos", "pos",
                   "neg", "neg", "neg", "neg", "neg", "neg"),
    freq       = c(3, 2, 2, 2, 2, 1, 2, 1, 1, 3, 2, 2, 1, 2, 1)
  )
  
  adduct_table <- adduct_table[adduct_table$polarity == polarity, ]
  freq_by_adduct <- setNames(adduct_table$freq, adduct_table$adduct)
  
  feature_defs        <- as.data.frame(featureDefinitions(xdata_filled))
  feature_intensities <- featureValues(xdata_filled, value = "into")
  n_features          <- nrow(feature_defs)
  
  # Median (not mean) intensity across samples: far more robust to outliers,
  # failed injections, and missing values than a mean would be.
  
  median_intensity <- apply(feature_intensities, 1, median, na.rm = TRUE)
  
  # Precompute the full pairwise correlation matrix once, instead of calling cor()
  # repeatedly inside nested loops. Same result, much faster for large feature tables.
  
  log_intensities <- log10(feature_intensities[, !colnames(feature_intensities) %in% paste0(blank_names, ".mzML")] + 1)
  cor_matrix <- suppressWarnings(cor(t(log_intensities), use = "pairwise.complete.obs", method = "pearson"))
  cor_matrix[is.na(cor_matrix)] <- -1 # Safety
  
  # Step 0 : flag duplicate features from peak splitting (same mz/rt, highly correlated)
  
  dup_mz_tol <- 5 / 1e6
  dup_rt_tol <- 2
  feature_defs$duplicate_of <- NA_integer_
  
  for (i in seq_len(n_features - 1)) {
    if (!is.na(feature_defs$duplicate_of[i])) next
    for (j in seq(i + 1, n_features)) {
      if (!is.na(feature_defs$duplicate_of[j])) next
      mz_diff <- abs(feature_defs$mzmed[i] - feature_defs$mzmed[j])
      rt_diff <- abs(feature_defs$rtmed[i] - feature_defs$rtmed[j])
      if (mz_diff <= feature_defs$mzmed[i] * dup_mz_tol &&
          rt_diff <= dup_rt_tol && cor_matrix[i, j] >= 0.98) {
        loser  <- if (median_intensity[i] >= median_intensity[j]) j else i
        keeper <- if (loser == i) j else i
        while (!is.na(feature_defs$duplicate_of[keeper])) keeper <- feature_defs$duplicate_of[keeper]
        feature_defs$duplicate_of[loser] <- keeper
      }
    }
  }
  
  # Step 1 : group co-eluting features (RT proximity + intensity correlation)
  
  rt_diff_matrix <- abs(outer(feature_defs$rtmed, feature_defs$rtmed, "-"))
  not_dup <- is.na(feature_defs$duplicate_of)
  
  adjacency <- (rt_diff_matrix <= rt_tol) & (cor_matrix >= cor_threshold) &
    outer(not_dup, not_dup, "&")
  diag(adjacency) <- FALSE
  
  graph <- igraph::graph_from_adjacency_matrix(adjacency, mode = "undirected")
  comp  <- igraph::components(graph) 
  
  feature_defs$group_id <- ifelse(comp$csize[comp$membership] >= 2, comp$membership, NA_integer_)
  
  # Step 2 : back-calculate candidate neutral mass under every adduct hypothesis
  # neutral_mass = (mz * |charge| - mass_shift * n_shift) / n_mol
  
  adduct_candidates <- do.call(rbind, lapply(seq_len(n_features), function(i) {
    if (is.na(feature_defs$group_id[i])) return(NULL)
    data.frame(
      feature_id = i,
      group_id = feature_defs$group_id[i],
      adduct = adduct_table$adduct,
      freq = adduct_table$freq,
      neutral_mass = (feature_defs$mzmed[i] * abs(adduct_table$charge) -
                        adduct_table$mass_shift * adduct_table$n_shift) / adduct_table$n_mol
    )
  }))
  
  # Step 3: within each group, find pairs of features whose candidate neutral masses agree.
  # Each matching pair generates an adduct hypothesis for both features.
  # The quality of the match is stored using ppm error and correlation.
  
  feature_adduct_hits <- vector("list", n_features)
  
  for (g in unique(adduct_candidates$group_id)) {
    
    group_candidates <- adduct_candidates[adduct_candidates$group_id == g, ]
    n_rows <- nrow(group_candidates)
    if (n_rows < 2) next
    
    for (i in seq_len(n_rows - 1)) {
      for (j in seq(i + 1, n_rows)) {
        
        if (group_candidates$feature_id[i] == group_candidates$feature_id[j]) next
        
        feature_i <- group_candidates$feature_id[i]
        feature_j <- group_candidates$feature_id[j]
        
        # direct chromatographic similarity check
        correlation <- cor_matrix[feature_i, feature_j]
        if (correlation < cor_threshold) next
        
        # mass agreement
        mean_mass <- mean(group_candidates$neutral_mass[c(i, j)])
        
        mass_diff <- abs(
          group_candidates$neutral_mass[i] -
            group_candidates$neutral_mass[j]
        )
        
        ppm_error <- mass_diff / mean_mass * 1e6
        
        if (ppm_error > ppm) next
        
        # store hypothesis for feature i
        feature_adduct_hits[[feature_i]] <- rbind(
          feature_adduct_hits[[feature_i]],
          data.frame(
            adduct = group_candidates$adduct[i],
            freq = group_candidates$freq[i],
            ppm_error = ppm_error,
            correlation = correlation,
            stringsAsFactors = FALSE
          )
        )
        
        # store hypothesis for feature j
        feature_adduct_hits[[feature_j]] <- rbind(
          feature_adduct_hits[[feature_j]],
          data.frame(
            adduct = group_candidates$adduct[j],
            freq = group_candidates$freq[j],
            ppm_error = ppm_error,
            correlation = correlation,
            stringsAsFactors = FALSE
          )
        )
      }
    }
  }
  
  
  feature_defs$adduct           <- NA_character_
  feature_defs$adduct_ppm_error <- NA_character_
  feature_defs$adduct_score     <- NA_real_
  
  
  for (i in seq_len(n_features)) {
    
    hits <- feature_adduct_hits[[i]]
    if (is.null(hits)) next
    
    # normalize evidence
    hits$freq_score <- hits$freq / max(adduct_table$freq)
    
    hits$ppm_score <- exp(-hits$ppm_error / ppm)
    
    hits$corr_score <- hits$correlation
    
    # global confidence score
    hits$total_score <-
      0.3 * hits$freq_score +
      0.4 * hits$ppm_score +
      0.3 * hits$corr_score
    
    # keep best hypothesis per adduct
    hits <- hits[order(-hits$total_score), ]
    hits <- hits[!duplicated(hits$adduct), ]
    
    feature_defs$adduct[i] <-
      paste(hits$adduct, collapse = "/")
    
    feature_defs$adduct_ppm_error[i] <-
      paste(round(hits$ppm_error, 2), collapse = "/")
    
    feature_defs$adduct_score[i] <-
      max(hits$total_score)
  }
  
  
  
  # Step 4: choose the primary feature inside each compound group.
  # The primary feature is the feature with the strongest adduct evidence.
  # Intensity is only used as a final tie breaker.
  
  feature_defs$is_primary <- FALSE
  feature_defs$primary_feature <- NA_integer_
  
  
  for (g in unique(na.omit(feature_defs$group_id))) {
    
    group_rows <- which(
      feature_defs$group_id == g &
        !is.na(feature_defs$adduct_score)
    )
    
    if (length(group_rows) < 2) next
    
    
    # primary score
    primary_score <- feature_defs$adduct_score[group_rows]
    
    # intensity only breaks very close ties
    ranking <- order(
      -primary_score,
      -median_intensity[group_rows]
    )
    
    primary_row <- group_rows[ranking[1]]
    
    
    feature_defs$is_primary[primary_row] <- TRUE
    
    # group_id is a connected component, not a clique: only assign features that
    # are directly correlated with the chosen primary, not every group member.
    correlated_rows <- group_rows[cor_matrix[group_rows, primary_row] >= cor_threshold]
    feature_defs$primary_feature[correlated_rows] <- primary_row
  }
  
  
  n_groups_detected <- length(unique(na.omit(feature_defs$primary_feature)))
  
  # Step 5: within each group, detect isotope clusters. Two features are isotopes of one
  # another if their m/z difference matches n x (13C-12C mass diff) within ppm tolerance.
  # Intensity must strictly decrease along the whole chain: M > M+1 > M+2, never just
  # M > M+n in isolation -- an M+2 candidate is only accepted if a valid M+1 was already
  # found for the same root, and each successive isotope must be less intense than the
  # previous rank in the chain (not just less intense than the root).
  # The lowest-mass feature of the cluster is the "root" (monoisotopic feature).
  
  isotope_mass_diff <- 1.003355
  feature_defs$isotope           <- NA_character_
  feature_defs$isotope_of        <- NA_integer_
  feature_defs$isotope_ppm_error <- NA_real_
  
  for (g in unique(na.omit(feature_defs$group_id))) {
    group_rows <- which(feature_defs$group_id == g)
    group_rows <- group_rows[order(feature_defs$mzmed[group_rows])]
    n_rows <- length(group_rows)
    if (n_rows < 2) next
    
    for (i in seq_len(n_rows - 1)) {
      for (j in seq(i + 1, n_rows)) {
        feature_i <- group_rows[i]
        feature_j <- group_rows[j]
        if (!is.na(feature_defs$isotope_of[feature_j])) next  # already linked to a closer root
        
        # group_id is a connected component, not a clique: A and C can end up in the
        # same group via a transitive chain (A-B and B-C correlated) without A-C
        # being directly correlated. Enforce the direct pairwise correlation here.
        if (cor_matrix[feature_i, feature_j] < cor_threshold) next
        
        mz_diff <- feature_defs$mzmed[feature_j] - feature_defs$mzmed[feature_i]
        isotope_rank <- round(mz_diff / isotope_mass_diff)
        if (isotope_rank < 1 || isotope_rank > max_isotopes) next
        
        mz_tolerance <- feature_defs$mzmed[feature_j] * ppm / 1e6
        mz_error <- abs(mz_diff - isotope_rank * isotope_mass_diff)
        if (mz_error > mz_tolerance) next
        
        # Monotonicity: compare to the previous rank in the chain, not just the root
        if (isotope_rank == 1) {
          reference_intensity <- median_intensity[feature_i]
        } else {
          previous_rank_feature <- which(feature_defs$isotope_of == feature_i &
                                           feature_defs$isotope == paste0("M+", isotope_rank - 1))
          if (length(previous_rank_feature) == 0) next  # skip M+2 etc. if the prior rank wasn't validated
          reference_intensity <- median_intensity[previous_rank_feature[1]]
        }
        if (median_intensity[feature_j] >= reference_intensity) next
        
        feature_defs$isotope[feature_j]           <- paste0("M+", isotope_rank)
        feature_defs$isotope_of[feature_j]        <- feature_i
        feature_defs$isotope_ppm_error[feature_j] <- round(mz_error / feature_defs$mzmed[feature_j] * 1e6, 2)
      }
    }
  }
  
  n_isotopes_detected <- sum(!is.na(feature_defs$isotope_of))
  
  # -------- Shiny app 2: ask whether to merge adducts / isotopes into their reference feature --------
  
  ask_merge <- function(n_groups_detected, n_isotopes_detected) {
    
    ui <- fluidPage(
      tags$head(tags$style(HTML(param_css))),
      titlePanel("Merge Adducts & Isotopes"),
      sidebarLayout(
        sidebarPanel(
          radioButtons("merge_adducts", "Merge adduct intensities into the primary feature?",
                       choices = c("Yes" = "yes", "No" = "no"), selected = "yes"),
          radioButtons("merge_isotopes", "Merge isotope intensities into the monoisotopic feature?",
                       choices = c("Yes" = "yes", "No" = "no"), selected = "yes"),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Summary"),
          p(paste(n_groups_detected, "compound group(s) with adducts detected.")),
          p(paste(n_isotopes_detected, "isotope feature(s) detected.")),
          div(class = "param-section-title", "What This Does"),
          tags$details(class = "param-card", tags$summary("Merging"),
                       div(class = "param-card-body",
                           p("Isotope intensities are summed into their monoisotopic feature first, sample by sample. Adduct intensities (including any merged isotopes) are then summed into the primary feature. Any feature merged into another is removed from the final intensity matrix.")))
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        stopApp(list(
          merge_adducts  = input$merge_adducts == "yes",
          merge_isotopes = input$merge_isotopes == "yes"
        ))
      })
    }
    
    shiny::runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  merge_choice <- ask_merge(n_groups_detected, n_isotopes_detected)
  should_merge_adducts  <- !is.null(merge_choice) && isTRUE(merge_choice$merge_adducts)
  should_merge_isotopes <- !is.null(merge_choice) && isTRUE(merge_choice$merge_isotopes)
  
  merged_feature_intensities <- feature_intensities
  
  
  # Merge duplicated feature
  for (keeper in unique(na.omit(feature_defs$duplicate_of))) {
    dup_rows <- which(feature_defs$duplicate_of == keeper)
    merged_feature_intensities[keeper, ] <- colSums(
      rbind(merged_feature_intensities[keeper, ], merged_feature_intensities[dup_rows, , drop = FALSE]),
      na.rm = TRUE
    )
  }
  
  # Merge isotopes into their monoisotopic feature
  if (should_merge_isotopes) {
    for (root in unique(na.omit(feature_defs$isotope_of))) {
      satellite_rows <- which(feature_defs$isotope_of == root)
      merged_feature_intensities[root, ] <- colSums(
        rbind(merged_feature_intensities[root, ], merged_feature_intensities[satellite_rows, , drop = FALSE]),
        na.rm = TRUE
      )
    }
  }
  
  # Merge adduct feature
  if (should_merge_adducts) {
    for (primary_row in unique(na.omit(feature_defs$primary_feature))) {
      adduct_rows <- which(feature_defs$primary_feature == primary_row & !feature_defs$is_primary)
      merged_feature_intensities[primary_row, ] <- colSums(
        rbind(merged_feature_intensities[primary_row, ], merged_feature_intensities[adduct_rows, , drop = FALSE]),
        na.rm = TRUE
      )
    }
  }
  
  # Features whose intensity has been folded into another feature are dropped from the final matrix
  is_merged_away <- rep(FALSE, n_features)
  if (should_merge_isotopes) is_merged_away[!is.na(feature_defs$isotope_of)] <- TRUE
  if (should_merge_adducts)  is_merged_away[!is.na(feature_defs$primary_feature) & !feature_defs$is_primary] <- TRUE
  is_merged_away[!is.na(feature_defs$duplicate_of)] <- TRUE
  
  feature_defs$fused <- is_merged_away
  final_feature_intensities <- merged_feature_intensities[!is_merged_away, , drop = FALSE]
  
  
  # Save merged intensity table (csv) and search parameters (json)
  
  dir.create(data_folder, recursive = TRUE, showWarnings = FALSE)
  dir.create(param_folder, recursive = TRUE, showWarnings = FALSE)
  
  merged_table_out <- data.frame(feature_id = rownames(final_feature_intensities),
                                 final_feature_intensities,
                                 row.names = NULL, check.names = FALSE)
  
  write.csv(merged_table_out,
            file = file.path(data_folder, "1_Pre-processing/merged_feature_intensities.csv"),
            row.names = FALSE)
  
  params_out <- list(
    polarity         = polarity,
    rt_tol           = rt_tol,
    ppm              = ppm,
    cor_threshold    = cor_threshold,
    max_isotopes     = max_isotopes,
    merge_adducts    = should_merge_adducts,
    merge_isotopes   = should_merge_isotopes
  )
  
  jsonlite::write_json(params_out,
                       path = file.path(param_folder, "1_Pre-processing/adduct_search_params.json"),
                       auto_unbox = TRUE, pretty = TRUE)
  
  
  # Return results
  
  list(
    feature_definitions        = feature_defs,
    feature_intensities        = feature_intensities,
    merged_feature_intensities = final_feature_intensities,
    adducts_merged             = should_merge_adducts,
    isotopes_merged            = should_merge_isotopes,
    n_groups_detected          = n_groups_detected,
    n_isotopes_detected        = n_isotopes_detected
  )
}

########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Function to extract MS2 spectra from grouped/aligned features and export them to MGF and/or MSP format
#'
#' @param xdata_filled XCMSnExp object with grouped/aligned and filled features (output of the correspondence step)
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder path to save the exported spectra files
#' @return List with:
#'         - `feature_ms2`: Spectra object containing the extracted MS2 spectra (one representative spectrum
#'                          per feature, selected on the largest total ion current), or NULL if the step was
#'                          skipped/canceled by the user
#'         - `export_parameters`: Parameters used for the extraction/export, or NULL if skipped/canceled
#'
#' @details This function assumes the following packages are already attached in the session :
#'          shiny, Spectra, MsBackendMgf, MsBackendMsp, xcms, future, future.apply, future.callr,
#'          doFuture, parallelly, tictoc, dplyr, jsonlite.

export_MS2_spectra <- function(xdata_filled, param_folder, data_folder) {
  
  # Internal function for the Shiny interface
  
  run_ms2_export_gui <- function() {
    
    ui <- fluidPage(
      titlePanel("MS2 Spectra Extraction (MGF / MSP export)"),
      sidebarLayout(
        sidebarPanel(
          checkboxInput(
            inputId = "do_extraction",
            label   = "Do you want to extract the MS2 spectra of your features (.mgf and .msp) ?",
            value   = FALSE
          ),
          conditionalPanel(
            condition = "input.do_extraction == true",
            br(),
            numericInput(
              inputId = "ppm_value",
              label   = "ppm tolerance",
              value   = 7,
              min     = 0,
              step    = 1
            ),
            selectInput(
              inputId  = "spectra_method",
              label    = "Spectrum selection method",
              choices  = c(
                "all"         = "all",
                "closest_rt"  = "closest_rt",
                "largest_tic" = "largest_tic",
                "largest_bpi" = "largest_bpi",
                "signal"      = "signal"
              ),
              selected = "largest_tic"
            ),
            numericInput(
              inputId = "min_prop",
              label   = "Minimum proportion of samples required for a fragment to be kept",
              value   = 0.75, min = 0.6, max = 1, step = 0.05
            ),
          ),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Why extract MS2 spectra ?"),
          p("Extracting the MS2 (fragmentation) spectra associated with each feature allows you to perform ",
            "putative annotation / identification of your metabolites, by submitting them to GNPS ",
            "Feature-Based Molecular Networking (FBMN), SIRIUS, or any other annotation tool ",
            "accepting .mgf or .msp files."),
          br(),
          tags$b(style = "color:red;", "WARNING :"),
          p(style = "color:red;",
            "This step can take several hours depending on the computing power of your machine. ",
            "Example : a matrix with 9000 features, including about 4772 MS2 spectra, took approximately ",
            "70 minutes with 10 cores and 32 Go of RAM. Be careful of RAM saturation with large datasets ",
            "and/or a high number of parallel workers."),
          br(),
          conditionalPanel(
            condition = "input.do_extraction == true",
            h4("Parameter description"),
            tags$b("ppm tolerance :"),
            p("Mass accuracy tolerance (in ppm) to expand the m/z range of each peak (on each side) by
               a value dependent on the peak's m/z. A smaller value is more ",
              "stringent (higher specificity), a larger value is more permissive (higher sensitivity to ",
              "mass drift of the instrument)."),
            br(),
            tags$b("Step 1 — Spectrum selection method (within each sample) :"),
            p("Even within a single sample, a chromatographic peak can have several MS2 scans ",
              "associated to it. This happens because dynamic exclusion only lasts for a limited ",
              "time window (often 10-30s) : if the peak elutes longer than that, the same precursor ",
              "can be re-selected once exclusion expires. Other reasons include different charge ",
              "states or isotopologues being triggered as separate precursor events, methods using ",
              "multiple/stepped collision energies on purpose, or the tolerant m/z/RT matching itself ",
              "picking up a nearby co-eluting/isobaric compound. This parameter defines which of these ",
              "candidate spectra is retained for that peak, in that sample :"),
            tags$ul(
              tags$li(tags$b("all"), " (default) : return all spectra for each chromatographic peak."),
              tags$li(tags$b("closest_rt"), " : return the spectrum with the retention time closest to the ",
                      "peak's retention time (at apex)."),
              tags$li(tags$b("largest_tic"), " : return the spectrum with the largest total signal (sum of ",
                      "peaks intensities)."),
              tags$li(tags$b("largest_bpi"), " : return the spectrum with the largest peak intensity ",
                      "(maximal peak intensity)."),
              tags$li(tags$b("signal"), " : only for object being a XCMSnExp : return the spectrum with the ",
                      "sum of intensities most similar to the peak's apex signal (\"maxo\") ; only supported ",
                      "for msLevel = 2.")
            ),
            br(),
            tags$b("Step 2 — Consensus spectrum construction (across samples) :"),
            p("After Step 1, one candidate spectrum remains per sample supporting that feature. Instead of picking a ",
              "single sample's spectrum, this second step merges all candidate spectra into one consensus ",
              "spectrum per feature : a fragment is kept only if it is found consistently, at the same m/z ",
              "(within the ppm tolerance above), across a sufficient proportion of the candidate spectra. ",
              "This filters out fragments that appear in only one or a few samples (noise, co-eluting ",
              "compounds, chimeric spectra) and keeps only the reproducible fragmentation pattern."),
            
            p(em("Note : the two steps above are sequential, not alternatives. Step 1 selects one ",
                 "candidate spectrum per sample ; Step 2 then merges those candidates into the ",
                 "feature's final consensus spectrum, using the proportion threshold above."))
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        if (!isTRUE(input$do_extraction)) {
          stopApp(list(do_extraction = FALSE))
        } else {
          stopApp(list(
            do_extraction       = TRUE,
            ppm_value           = input$ppm_value,
            spectra_method      = input$spectra_method,
            consensus_criterion = input$consensus_criterion,
            weight_tic          = input$weight_tic,
            weight_entropy      = input$weight_entropy,
            weight_n_peaks      = input$weight_n_peaks
          ))
        }
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Run the GUI and retrieve parameters
  
  MS2_export_list <- run_ms2_export_gui()
  
  # Check if the user canceled
  
  if (is.null(MS2_export_list)) {
    message("MS2 extraction canceled by user.")
    return(NULL)
  }
  
  # Check if the user chose to skip the extraction
  
  if (!isTRUE(MS2_export_list$do_extraction)) {
    message("MS2 extraction skipped by user.")
    return(NULL)
  }
  
  
  # Parallel backend setup
  
  n_workers <- max(2, parallelly::availableCores(omit = 3L))
  cat("Workers requested :", n_workers, "\n")
  
  plan(callr, workers = n_workers)   # no sockets, no admin rights needed
  
  cat("Active future plan   :", class(plan())[1], "\n")
  cat("Future workers       :", nbrOfWorkers(), "\n")
  cat("BiocParallel backend :", class(bpparam())[1], "\n")
  
  
  # MS2 spectra extraction (parallelized across features)
  
  all_feat <- seq_len(nrow(featureDefinitions(xdata_grouped)))
  chunks   <- split(all_feat, cut(seq_along(all_feat), breaks = nbrOfWorkers(), labels = FALSE))
  
  cat("Total features :", length(all_feat), "| Chunks :", length(chunks),
      "| ~", ceiling(length(all_feat) / nbrOfWorkers()), "features/worker\n")
  
  results_list <- future_lapply(
    chunks,
    function(ids) {
      featureSpectra(
        xdata_filled,
        msLevel     = 2L,
        expandRt    = 0,
        ppm         = MS2_export_list$ppm_value,
        skipFilled  = TRUE,
        features    = ids,
        return.type = "Spectra",
        method      = MS2_export_list$spectra_method
      )
    },
    future.globals  = list(xdata_filled = xdata_filled, MS2_export_list = MS2_export_list),
    future.packages = c("xcms", "Spectra")
  )
  
  # Combine chunks and drop the empty ones
  
  feature_ms2 <- Reduce(c, Filter(function(x) length(x) > 0, results_list))
  
  if (length(feature_ms2) == 0) {
    message("No MS2 spectra found for the selected features. Nothing exported.")
    return(NULL)
  }
  
  # Diagnostics
  
  n_ms1_total <- sum(xdata_grouped@featureData@data$msLevel == 1L)
  n_ms2_total <- sum(xdata_grouped@featureData@data$msLevel == 2L)
  message("MS1 acquired total : ", n_ms1_total, "\n")
  message("MS2 acquired total : ", n_ms2_total, "\n")
  
  feat_ids_with_ms2 <- unique(feature_ms2$feature_id)
  message("Features with MS2 : ", length(feat_ids_with_ms2), "/",
      nrow(featureDefinitions(xdata_grouped)),
      sprintf("(%.1f%%)", 100 * length(feat_ids_with_ms2) /
                nrow(featureDefinitions(xdata_grouped))), "\n")
  
  
  # Construction of a consensus spectrum per feature (merging the peaks of all candidates for the feature, across all samples)
  
  feat_factor <- factor(feature_ms2$feature_id, levels = unique(feature_ms2$feature_id))
  
  ms2_consensus <- combineSpectra(
    feature_ms2,
    f            = feat_factor,
    p            = rep(1, length(feature_ms2)),
    ppm          = MS2_export_list$ppm_value,
    peaks        = "intersect",
    minProp      = 0.75
  )
  
  # Number of fragments per spectrum
  
  n_fragments <- sapply(
    ms2_consensus@backend@peaksData,
    nrow
  )
  
  # Keep only spectra with at least 3 fragments
  
  keep <- n_fragments >= 3
  
  # Filtering the Spectra object
  
  ms2_consensus <- ms2_consensus[keep]
  
  # Formatting 
  
  ms2_consensus <- formatSpectraForGNPS(ms2_consensus)
    
  # # Feature <-> scanIndex mapping table
  # 
  # feature_metadata <- as.data.frame(xcms::featureDefinitions(xdata_grouped))
  # 
  # ms2_consensus@backend@spectraData@listData$feature_id <- as.numeric(
  #   sub("^FT", "", ms2_consensus@backend@spectraData@listData$feature_id)
  # )
  # ms2_consensus@backend@spectraData@listData$acquisitionNum <- 
  #  ms2_consensus@backend@spectraData@listData$feature_id
  
  message("Spectra retained (1 per feature) : ", length(ms2_consensus), "\n")
  
  matching_table <- data.frame(
    feature_id = ms2_consensus@backend@spectraData$FEATURE_ID,
    scanIndex  = ms2_consensus@backend@spectraData$scanIndex,
    ScanUniqueIdx  = ms2_consensus@backend@spectraData$acquisitionNum, # Scan associated with its featureID so that it is unique
    dataOrigin = ms2_consensus@backend@spectraData$dataOrigin # source file name
  )
  
  
  # Export to MGF, MSP and matching table
  
  export_dir <- file.path(data_folder, "1_Pre-processing", "MS2_export")
  dir.create(export_dir, recursive = TRUE, showWarnings = FALSE)
  
  write.csv(
    matching_table,
    file.path(export_dir, "feature_scanIndex_matching.csv"),
    row.names = FALSE
  )
  
  export(
    ms2_consensus,
    backend = MsBackendMgf::MsBackendMgf(),
    file    = file.path(export_dir, "output_MS2_spectra.mgf")
  )
  message("MGF file exported : ", file.path(export_dir, "output_MS2_spectra.mgf"), "\n")
  
  export(
    ms2_consensus,
    backend = MsBackendMsp::MsBackendMsp(),
    file    = file.path(export_dir, "output_MS2_spectra.msp")
  )
  message("MSP file exported : ", file.path(export_dir, "output_MS2_spectra.msp"), "\n")
  
  # For GNPS 2 export
  
  export_GNPS2_dir <- file.path(data_folder, "1_Pre-processing", "GNPS2_export")
  dir.create(export_GNPS2_dir, recursive = TRUE, showWarnings = FALSE)
  
  export(
    ms2_consensus,
    backend = MsBackendMgf::MsBackendMgf(),
    file    = file.path(export_GNPS2_dir, "output_MS2_spectra.mgf")
  )
  message("MGF file exported : ", file.path(export_GNPS2_dir, "output_MS2_spectra.mgf"), "\n")

  # Save parameters
  
  param_dir <- file.path(param_folder, "1_Pre-processing", "MS2_export")
  dir.create(param_dir, recursive = TRUE, showWarnings = FALSE)
  
  write_json(MS2_export_list, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_dir, "MS2_export_Param.json"))
  
  
  # Link of Online Annotation Tool
  
  
  run_annotation_links_gui <- function() {
    
    ui <- fluidPage(
      titlePanel("MS2 Export Complete - Online Annotation"),
      mainPanel(
        h4("Your MS2 spectra file(s) have been exported :"),
        br(),
        p("You can then submit these files to one of the following annotation tools to obtain putative metabolite
          identifications. The required files will be stored here : ~/data_folder/1_Pre-processing/GNPS2_export/...
          Click on one of the links below to open it directly in your browser :"),
        br(),
        tags$a(
          href   = "https://gnps2.org",
          target = "_blank",
          class  = "btn btn-primary",
          style  = "margin-right:10px;",
          "Open GNPS2"
        ),
        tags$a(
          href   = "https://v6.docs.sirius-ms.io/install/",
          target = "_blank",
          class  = "btn btn-info",
          "Open SIRIUS (download page)"
        ),
        br(), br(),
        div(
          style = "background-color:#e2e3e5; border:1px solid #d6d8db; padding:10px; border-radius:5px;",
          tags$b("Note: "),
          "GNPS2 is a web platform where the exported .mgf/.msp file(s) can be uploaded directly for spectral library search / molecular networking. SIRIUS is a desktop application (GUI/CLI) that must be downloaded and installed ; once installed, it is the exported .mgf/.msp file(s) listed above that should be imported locally into SIRIUS for formula and structure annotation."
        ),
        br(),
        actionButton("close_gui", "Close", class = "btn-secondary")
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$close_gui, {
        stopApp()
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  run_annotation_links_gui()
  
  
  
  # Return results
  
  list(
    ms2_consensus       = ms2_consensus,
    export_parameters = MS2_export_list,
    feature_scanIndex_matching = matching_table
  )
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' @title Format MS2 spectra for export in GNPS-MGF format
#'
#' @description
#'
#' Re-format MS2 spectrum information for export of the data in Mgf format
#' supported by GNPS. In detail, the function replaces the acquisition number
#' of each spectrum with the feature ID (expected to be present in the
#' `"feature_id"` column of `mcols(x)`) converted to an integer by removing
#' the ID's leading `"FT"`.
#'
#' @param x `Spectra`.
#'
#' @return `Spectra` with the acquisition number replaced.
#'
#' @author Johannes Rainer, Philippine Louail
#'
#' @md
#' 


formatSpectraForGNPS <- function(x) {
  if (inherits(x, "Spectra")) {
    svs <- spectraVariables(x)
    if (!"feature_id" %in% svs) {
      stop("No 'feature_id' in spectra variables")
    }
    fid <- x$feature_id
    if ("chrom_peak_id" %in% svs) pid <- x$chrom_peak_id
    else pid <- NULL
    x <- selectSpectraVariables(
      x,
      c(
        "acquisitionNum",
        "rtime",
        "precursorMz",
        "precursorIntensity",
        "precursorCharge",
        "dataStorage",
        "dataOrigin",
        "scanIndex",
        "mz",
        "intensity"
      )
    )
    x$FEATURE_ID <- fid
    if (length(pid)) x$PEAK_ID <- pid
    x$acquisitionNum <- as.integer(sub("^FT", "", fid))
    x
  } else {
    fids <- mcols(x)$feature_id
    if (!length(fids))
      stop("No column named 'feature_id' present in 'mcols(x)'")
    fids <- as.integer(sub("^FT", "", fids))
    mendoapply(x, fids, FUN = function(z, id) {
      z@acquisitionNum <- id
      z
    })
  }
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Create Individual PDFs for Each Standard Visualization
#'
#' @param peak_picking_results Results from perform_peak_picking_centwave()
#' @param alignment_results Results from perform_obiwarp_alignment()
#' @param grouping_results Results from perform_feature_grouping()
#' @param chart_folder Folder to save visualizations
#' @param standards List of standards to visualize
#' @return List of paths to the generated PDF files
#' 

create_individual_standard_pdfs <- function(peak_picking_results,
                                            alignment_results,
                                            grouping_results,
                                            chart_folder,
                                            standards) {
  
  output_dir <- file.path(chart_folder, "1_Pre-processing")
  
  pdf_paths <- list()
  
  # For each standard
  
  for (std in names(standards)) {
    
    # Create individual PDF path
    
    pdf_path <- file.path(output_dir, paste0("Standard_", std, "_Pre_Processing.pdf"))
    pdf_paths[[std]] <- pdf_path
    
    # Open PDF device
    
    pdf(pdf_path, width = 24, height = 12)
    
    # Set up 4x1 layout
    
    par(mfrow = c(3, 1), mar = c(4, 4, 6, 1))
    
    # Peak Picking plot
    
    if (!is.null(peak_picking_results$standard_plots_PP[[std]])) {
      replayPlot(peak_picking_results$standard_plots_PP[[std]])
      mtext("Peak Picking", side = 3, line = -2, cex = 0.9)
    } else {
      plot.new()
      text(0.5, 0.5, "No Peak Picking Plot", cex = 1.2, col = "gray")
    }
    
    # Alignment plot
    
    if (!is.null(alignment_results$standard_plots_align[[std]])) {
      replayPlot(alignment_results$standard_plots_align[[std]])
      mtext("Alignment", side = 3, line = -2, cex = 0.9)
    } else {
      plot.new()
      text(0.5, 0.5, "No Alignment Plot", cex = 1.2, col = "gray")
    }
    
    # Grouping plot
    
    if (!is.null(grouping_results$grouping_plots[[std]])) {
      replayPlot(grouping_results$grouping_plots[[std]])
      mtext("Grouping", side = 3, line = -2, cex = 0.9)
    } else {
      plot.new()
      text(0.5, 0.5, "No Grouping Plot", cex = 1.2, col = "gray")
    }
    
    # Close PDF device
    
    dev.off()
  }
  
  return(pdf_paths)
}

########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Function to filter data by retention time (RT) window
#'
#' @param raw_intensity_matrix Dataframe or matrix with intensities and 'rtmed' column (retention time in seconds) : Features * Samples
#' @param feature_metadata Feature metadata table (with rtmed column)
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder path to save filtered data
#' @return List with:
#'         - `filtered_data`: Data filtered by RT window
#'         - `rt_parameters`: RT parameters used
#'         
         
filter_by_RT_window <- function(raw_intensity_matrix, feature_metadata, param_folder, data_folder) {
  
  # Internal function for the Shiny interface
  
  run_rt_window_gui <- function() {
    
    ui <- fluidPage(
      titlePanel("RT Filtering Parameters"),
      sidebarLayout(
        sidebarPanel(
          numericInput(
            inputId = "dead_volume_zone_min",
            label = "Dead volume zone (minutes)",
            value = 0.66,
            min = 0,
            step = 0.1
          ),
          numericInput(
            inputId = "flushing_zone_min",
            label = "Flushing zone (minutes)",
            value = 17,
            min = 0,
            step = 1
          ),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Parameter description"),
          tags$b("Dead volume zone :"),
          p("Time required for a non-retained compound (which does not interact at all with the stationary phase) to pass through the column and the chromatographic system. This corresponds to the initial phase when no compounds of interest have yet been eluted."),
          
          p(tags$b("Formula : "), "t", tags$sub("0"), " = (V", tags$sub("col"), " × ε", tags$sub("tot"), ") / F"),
          tags$ul(
            tags$li(tags$b("V"), tags$sub("col"), " : Geometric column volume"),
            tags$li(tags$b("ε"), tags$sub("tot"), " : Total column porosity (internal + external volume accessible to the mobile phase)"),
            tags$li(tags$b("F"), " : Mobile phase Flow rate")
          ),
          
          p(tags$b("Calculation steps for this method (Luna Omega Polar C18, 150 × 2.1 mm, 0.4 mL/min) :")),
          tags$ol(
            tags$li("Column diameter (converted to SI) : d = 2.1 mm = ", tags$b("2.1 × 10", tags$sup("-3"), " m")),
            tags$li("Column radius : r = d / 2 = ", tags$b("1.05 × 10", tags$sup("-3"), " m")),
            tags$li("Column length (converted to SI) : L = 150 mm = ", tags$b("0.150 m")),
            tags$li("Geometric volume : V", tags$sub("col"), " = π × r² × L = π × (1.05 × 10", tags$sup("-3"), ")² × 0.150 = ", 
                    tags$b("5.20 × 10", tags$sup("-7"), " m", tags$sup("3"))),
            tags$li("Total porosity (fully porous silica particle) : ε", tags$sub("tot"), " = ", tags$b("0.6")),
            tags$li("Accessible mobile phase volume : V₀ = V", tags$sub("col"), " × ε", tags$sub("tot"), 
                    " = 5.20 × 10", tags$sup("-7"), " × 0.6 = ", tags$b("3.12 × 10", tags$sup("-7"), " m", tags$sup("3"))),
            tags$li("Flow rate (converted to SI) : F = 0.4 mL/min = (0.4 × 10", tags$sup("-6"), " m", tags$sup("3"), 
                    ") / 60 s = ", tags$b("6.67 × 10", tags$sup("-9"), " m", tags$sup("3"), " s", tags$sup("-1"))),
            tags$li("Dead volume zone (SI result) : t", tags$sub("0"), " = V₀ / F = (3.12 × 10", tags$sup("-7"), 
                    ") / (6.67 × 10", tags$sup("-9"), ") = ", tags$b("46.8 s")),
            tags$li("Converted to minutes : t", tags$sub("0"), " = 46.8 / 60 = ", tags$b("0.78 min")),
            tags$li("Safety margin (-15%, to account for the uncertainty on ε", tags$sub("tot"), 
                    ", which is an estimate and not a manufacturer-supplied value) : t", tags$sub("0"), 
                    " × 0.85 = 0.78 × 0.85 = ", tags$b("≈ 0.66 min")),
            tags$li(tags$b("Final value used for this method : ≈ 0.66 min"), " (rounded conservatively downward so that early-eluting compounds are not mistakenly excluded from the analysis window)")
          ),
          
          hr(),
          tags$b("Flushing zone :"),
          p("Time at which all compounds retained by the column are eluted, generally at the end of the elution gradient (when the mobile phase reaches its maximum organic solvent composition, e.g. 100% acetonitrile).")
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        dead_volume_zone <- input$dead_volume_zone_min * 60  # Convert to seconds
        flushing_zone <- input$flushing_zone_min * 60
        stopApp(list(
          dead_volume_zone = dead_volume_zone,
          flushing_zone = flushing_zone
        ))
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Run the GUI and retrieve parameters
  
  RT_window_list <- run_rt_window_gui()
  
  # Check if the user canceled
  
  if (is.null(RT_window_list)) {
    message("RT filtering canceled by user.")
    return(NULL)
  }
  
  # Addition of the rtmed column
  
  raw_intensity_matrix <- raw_intensity_matrix %>%
    tibble::rownames_to_column("feature_name") %>%
    left_join(
      feature_metadata %>%
        tibble::rownames_to_column("feature_name") %>%
        select(feature_name, rtmed),
      by = "feature_name"
    ) %>%
    tibble::column_to_rownames("feature_name")
  
  # Filter data by RT window
  
  output_step1_RT_window <- raw_intensity_matrix %>%
    filter(rtmed > RT_window_list$dead_volume_zone & rtmed < RT_window_list$flushing_zone)
  
  # Remove unnecessary columns
  
  output_step1_RT_window <- output_step1_RT_window %>% dplyr::select(-rtmed)
  
  # Save parameters and data
  
  write_json(RT_window_list, pretty = TRUE, auto_unbox = TRUE,
                       path = file.path(param_folder, "2_Processing", "02_RT_filter", "RT_window_Param.json"))
  
  write.csv(output_step1_RT_window,
                   file = file.path(data_folder, "2_Processing", "02_RT_filter", "output_step1_RT_window.csv"),
                   row.names = TRUE)
  
  # Return results
  
  list(
    filtered_data = output_step1_RT_window,
    rt_parameters = RT_window_list
  )
}

########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Function to plot internal standard feature intensity across injection order
#'
#' @param input_data     Dataframe or matrix : Features x Samples (Rownames must follow the format "M{mzmed}T{rtmed}" (e.g. "M142.1642T200.5"))
#' @param metadata_table Dataframe with sample metadata (must contain 'SampleName', 'OrderInjection', 'Batch')
#' @param standards      Named list from get_standards()
#' @param param_folder   Folder path to save parameters
#' @param data_folder    Folder path to save results
#'
#' @return List containing:
#'         - plots      : named list of ggplot objects
#'         - data       : named list of processed dataframes
#'         - parameters : user-selected display parameters
#'         


plot_standard_intensity_injection <- function(input_data, feature_metadata, metadata_table, standards, param_folder, data_folder) {
  
  df_standards <- tryCatch(
    prepare_standard_data(input_data, feature_metadata, metadata_table, standards),
    error = function(e) stop(e$message)
  )
  
  n_standards <- length(df_standards)
  
  # Shiny UI
  
  ui <- fluidPage(
    titlePanel("Quality Control : Internal Standards — Injection Order Plot"),
    sidebarLayout(
      sidebarPanel(
        h4("Display options"),
        checkboxInput("log_scale",        "Log scale (Y axis)",         TRUE),
        checkboxInput("show_batch_lines", "Show batch separator lines", FALSE),
        
        hr(),
        h4("Sample labels"),
        checkboxInput("show_labels", "Show sample labels", TRUE),
        conditionalPanel(
          condition = "input.show_labels == true",
          numericInput("label_size", "Label size", value = 3, min = 1, max = 8, step = 0.5)
        ),
        
        hr(),
        actionButton("submit", "Save & Continue", class = "btn-success")
      ),
      mainPanel(
        do.call(tabsetPanel, c(
          list(id = "std_tabs"),
          lapply(names(df_standards), function(nm) {
            tabPanel(title = nm,
                     plotOutput(outputId = paste0("std_plot_", nm), height = "80vh"))
          })
        ))
      )
    )
  )
  
  # Shiny server
  
  server <- function(input, output, session) {
    
    build_one_plot <- function(std_name, df_std) {
      
      df_std$Batch <- factor(df_std$Batch)
      df_std$Y     <- if (input$log_scale) log10(df_std$Intensity + 1) else df_std$Intensity
      y_label      <- if (input$log_scale) "log10(Intensity + 1)" else "Intensity"
      
      # Mean and ±3 SD (computed on all non-NA values)
      
      mu <- mean(df_std$Y, na.rm = TRUE)
      sigma <- sd(df_std$Y, na.rm = TRUE)
      
      
      subtitle <- sprintf(
        "Closest feature — %s  |  Delta m/z vs theo : %.4f  |  Mean : %.2f  |  SD : %.2f",
        df_std$FeatureID[[1]],
        abs(df_std$FeatureMz[[1]] - standards[[std_name]]$theo),
        mu, sigma
      )
      
      # Dynamic x and y-axis limits
      
      y_min <- mu - 5 * sigma
      y_max <- mu + 5 * sigma
      
      x_range <- range(df_std$OrderInjection, na.rm = TRUE)
      
      p <- ggplot(df_std, aes(x = OrderInjection, y = Y, shape = Batch)) +
        
        # ± 3 SD filled band
        
        annotate("rect",
                 xmin  = x_range[1] - 1, xmax  = x_range[2] + 1,
                 ymin  = mu - 3 * sigma,  ymax  = mu + 3 * sigma,
                 fill  = "#7B2D8B", alpha = 0.1) +
        
        # ± 3 SD limit lines
        
        geom_hline(yintercept = mu + 3 * sigma,
                   linetype = "dashed", color = "#7B2D8B", linewidth = 0.4) +
        geom_hline(yintercept = mu - 3 * sigma,
                   linetype = "dashed", color = "#7B2D8B", linewidth = 0.4) +
        
        # Mean line
        
        geom_hline(yintercept = mu,
                   linetype = "solid", color = "#7B2D8B", linewidth = 0.5) +
        
        # Data points (drawn on top)
        
        geom_point(size = 3, color = "grey30") +
        
        scale_shape_manual(values = seq(15, by = 1,
                                        length.out = length(unique(df_std$Batch)))) +
        scale_x_continuous(expand = expansion(add = 1)) +
        coord_cartesian(ylim = c(y_min, y_max)) +
        theme_classic(base_size = 15) +
        theme(
          plot.title        = element_text(size = 15, face = "bold"),
          plot.subtitle     = element_text(size = 12, color = "grey40"),
          axis.title        = element_text(size = 12, face = "bold"),
          axis.title.x      = element_text(margin = margin(t = 4)),
          axis.title.y      = element_text(margin = margin(r = 4)),
          axis.text         = element_text(size = 9, color = "black"),
          axis.line         = element_line(color = "black", linewidth = 0.5),
          axis.ticks        = element_line(color = "black", linewidth = 0.5),
          axis.ticks.length = unit(-3, "pt"),
          legend.title      = element_text(size = 9, face = "bold"),
          legend.text       = element_text(size = 9),
          legend.key.size   = unit(8, "pt")
        ) +
        labs(title    = std_name,
             subtitle = subtitle,
             x        = "Injection order",
             y        = y_label)
      
      # Batch separator lines
      
      if (input$show_batch_lines && length(unique(df_std$Batch)) > 1L) {
        
        batch_breaks <- df_std %>%
          dplyr::group_by(Batch) %>%
          dplyr::summarise(MaxInj = max(OrderInjection), .groups = "drop") %>%
          dplyr::arrange(Batch) %>%
          dplyr::slice(1:(n() - 1L)) %>%
          dplyr::pull(MaxInj)
        
        p <- p +
          geom_vline(xintercept = batch_breaks + 0.5,
                     linetype   = "dashed",
                     color      = "grey60",
                     linewidth  = 0.5)
      }
      
      
      if (input$show_labels) {
        p <- p +
          ggrepel::geom_text_repel(
            aes(label = SampleName),
            size         = input$label_size,
            color        = "grey20",
            max.overlaps = 20,
            show.legend  = FALSE
          )
      }
      
      p
    }
    
    plots_reactive <- reactive({
      lapply(names(df_standards), function(nm) build_one_plot(nm, df_standards[[nm]]))
    })
    
    # Render each plot — outputId matches the tab's plotOutput
    
    observe({
      plots <- plots_reactive()
      for (nm in names(df_standards)) {
        local({
          std_nm <- nm
          idx    <- which(names(df_standards) == nm)
          output[[paste0("std_plot_", std_nm)]] <- renderPlot({ plots[[idx]] })
        })
      }
    })
    
    observeEvent(input$submit, {
      
      plots  <- plots_reactive()
      
      params <- list(
        log_scale        = input$log_scale,
        show_batch_lines = input$show_batch_lines,
        show_labels      = input$show_labels,
        label_size       = input$label_size
      )
      
      write_json(
        params,
        path       = file.path(param_folder, "2_Processing", "01_Quality Control",
                               "Quality_Control_Standards_params.json"),
        pretty     = TRUE,
        auto_unbox = TRUE
      )
      
      for (nm in names(df_standards)) {
        write.csv(
          df_standards[[nm]],
          file      = file.path(data_folder, "2_Processing", "01_Quality Control",
                                sprintf("Quality_Control_Standard_%s_data.csv", nm)),
          row.names = FALSE
        )
      }
      
      n_col         <- min(2L, n_standards)
      n_row         <- ceiling(n_standards / n_col)
      combined_plot <- patchwork::wrap_plots(plots, ncol = n_col)
      
      ggsave(
        filename = file.path(chart_folder, "2_Processing", "01_Quality Control",
                             "Quality_Control_Standards.pdf"),
        plot     = combined_plot,
        width    = 14 * n_col,
        height   = 8 * n_row,
        bg       = "white"
      )
      
      stopApp(list(
        plots      = setNames(plots, names(df_standards)),
        data       = df_standards,
        parameters = params
      ))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}

# ──────────────────────────────────────────────────────────────────────────────
# PURE FUNCTION — Data preparation
# ──────────────────────────────────────────────────────────────────────────────

#' Parse mz and rt from rownames formatted as "M{mz}T{rt}"
#' then find, for each standard, the closest feature within its windows.
#'
#' @return Named list of dataframes (one per matched standard) with columns:
#'         SampleName, Intensity, FeatureID, FeatureMz, FeatureRt, OrderInjection, Batch

prepare_standard_data <- function(input_data, feature_metadata, metadata_table, standards) {
  
  # Rownames : change to name_code
  
  input_data <- input_data %>%
    tibble::rownames_to_column("feature_name") %>%
    left_join(
      feature_metadata %>%
        tibble::rownames_to_column("feature_name") %>%
        select(feature_name, feat_code),
      by = "feature_name"
    ) %>%
    tibble::column_to_rownames("feat_code") %>% 
    select(-feature_name)
  
  # Parse mz and rt from rownames "M{mz}T{rt}"
  
  feat_ids <- rownames(input_data)
  
  parsed <- stringr::str_match(feat_ids, "^M([0-9.]+)T([0-9.]+)$")
  
  if (any(is.na(parsed[, 1])))
    stop("Some rownames do not match the expected 'M{mz}T{rt}' format.")
  
  feature_index <- data.frame(
    FeatureID = feat_ids,
    mz        = as.numeric(parsed[, 2]),
    rt        = as.numeric(parsed[, 3]),
    stringsAsFactors = FALSE
  )
  
  # Match each standard
  
  result <- lapply(names(standards), function(std_name) {
    
    std        <- standards[[std_name]]
    candidates <- feature_index %>%
      dplyr::filter(rt >= std$rt[1] & rt <= std$rt[2],
                    mz >= std$mz[1] & mz <= std$mz[2])
    
    # Fallback : m/z window only
    
    if (nrow(candidates) == 0L) {
      warning(sprintf(
        "Standard '%s': no feature in RT + m/z window — falling back to m/z window only.",
        std_name
      ))
      candidates <- feature_index %>%
        dplyr::filter(mz >= std$mz[1] & mz <= std$mz[2])
    }
    
    if (nrow(candidates) == 0L) {
      warning(sprintf("Standard '%s': no feature found — skipping.", std_name))
      return(NULL)
    }
    
    best <- candidates[which.min(abs(candidates$mz - std$theo)), ]
    intensities <- input_data[best$FeatureID, , drop = TRUE]
    
    data.frame(
      SampleName = names(intensities),
      Intensity  = as.numeric(intensities),
      FeatureID  = best$FeatureID,
      FeatureMz  = best$mz,
      FeatureRt  = best$rt,
      stringsAsFactors = FALSE
    ) %>%
      dplyr::left_join(
        metadata_table[, c("SampleName", "OrderInjection", "Batch")],
        by = "SampleName"
      ) %>%
      dplyr::arrange(OrderInjection)
  })
  
  names(result) <- names(standards)
  result <- result[!sapply(result, is.null)]
  
  if (length(result) == 0L)
    stop("No feature could be matched to any standard.")
  
  result
}

########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Function to plot total intensity across injection order (QC monitoring)
#'
#' @param input_data Dataframe or matrix with sample intensities : Features x Samples
#' @param metadata_table Dataframe with sample metadata (must contain 'SampleName', 'OrderInjection', 'Batch')
#' @param blank_names Vector of blank sample names
#' @param bio_names Vector of biological sample names
#' @param qc_names Vector of QC sample names
#' @param param_folder Folder path to save parameters 
#' @param data_folder Folder path to save results 
#'
#' @return List containing:
#'         - plot       : ggplot object (final state when user clicked Save)
#'         - data       : processed dataframe used for plotting
#'         - parameters : user-selected display parameters


plot_total_intensity_injection <- function(input_data, metadata_table, blank_names, bio_names, qc_names, param_folder,
                                           data_folder, save_text = "Pre_processing") {
  
  # Data preparation
  
  df_base <- tryCatch(
    prepare_intensity_data(input_data, metadata_table,
                           blank_names, bio_names, qc_names),
    error = function(e) stop(e$message)
  )
  
  group_colors <- c(
    "Bio" = viridis::viridis(1, begin = 0.3, option = "cividis"),
    "QC"  = viridis::viridis(1, begin = 0.7, option = "turbo")
  )
  
  # Shiny UI 
  
  ui <- fluidPage(
    titlePanel("Quality Control : Injection Order Plot"),
    sidebarLayout(
      sidebarPanel(
        
        # Display options 
        
        h4("Display options"),
        checkboxInput("log_scale", "Log scale (Y axis)",          TRUE),
        checkboxInput("smooth_curve", "Add linear trend (QC only)",  TRUE),
        checkboxInput("show_batch_lines", "Show batch separator lines",  FALSE),
        
        hr(),
        
        sliderInput("y_range", "Y-axis limits :",
                    min   = round(min(log10(df_base$TotalIntensity), na.rm = TRUE) - 1, 1),
                    max   = round(max(log10(df_base$TotalIntensity), na.rm = TRUE) + 1, 1),
                    value = range(log10(df_base$TotalIntensity), na.rm = TRUE),
                    step  = 0.1),
        
        hr(),
        
        # Label options 
        
        h4("Sample labels"),
        checkboxInput("show_labels", "Show sample labels", TRUE),
        conditionalPanel(
          condition = "input.show_labels == true",
          checkboxInput("label_qc",  "Label QC samples",         TRUE),
          checkboxInput("label_bio", "Label biological samples", TRUE)
        ),
        
        hr(),
        actionButton("submit", "Save & Continue", class = "btn-success")
      ),
      
      mainPanel(
        plotOutput("qc_plot", height = "80vh")
      )
    )
  )
  
  # Shiny server 
  
  server <- function(input, output, session) {
    
    plot_reactive <- reactive({
      
      df_plot       <- df_base
      df_plot$Group <- factor(df_plot$Group, levels = names(group_colors))
      df_plot$Batch <- factor(df_plot$Batch)
      df_plot$Y     <- if (input$log_scale) log10(df_plot$TotalIntensity) else df_plot$TotalIntensity
      
      y_label <- if (input$log_scale) "log10(Total intensity)" else "Total intensity"
      
      # Y-axis range
      y_range <- range(df_plot$Y, na.rm = TRUE)
      y_lims  <- c(y_range[1] - 0.5, y_range[2] + 0.5)
      
      # Base plot
      
      p <- ggplot(df_plot, aes(x     = OrderInjection,
                               y     = Y,
                               color = Group,
                               shape = Batch)) +
        geom_point(size = 3) +
        scale_shape_manual(values = seq(15, by = 1, length.out = length(unique(df_plot$Batch)))) +
        scale_color_manual(values = group_colors) +
        coord_cartesian(ylim = input$y_range) +
        theme_classic(base_size = 15) +
        theme(
          axis.title        = element_text(size = 15, face = "bold"),
          axis.title.x      = element_text(margin = margin(t = 4)),
          axis.title.y      = element_text(margin = margin(r = 4)),
          axis.text         = element_text(size = 9, color = "black"),
          axis.line         = element_line(color = "black", linewidth = 0.5),   
          axis.ticks        = element_line(color = "black", linewidth = 0.5),  
          axis.ticks.length = unit(-3, "pt"),
          legend.title      = element_text(size = 9, face = "bold"),
          legend.text       = element_text(size = 9),
          legend.key.size   = unit(8, "pt")
        ) +
        labs(x     = "Injection order",
             y     = y_label)
      
      # Batch separator lines 
      
      if (input$show_batch_lines && length(unique(df_plot$Batch)) > 1L) {
        
        batch_breaks <- df_plot %>%
          dplyr::group_by(Batch) %>%
          dplyr::summarise(MaxInj = max(OrderInjection), .groups = "drop") %>%
          dplyr::arrange(Batch) %>%
          dplyr::slice(1:(n()-1)) %>% # the last injection from each batch, except for the last one
          dplyr::pull(MaxInj)
        
        p <- p +
          geom_vline(xintercept = batch_breaks + 0.5,
                     linetype  = "dashed",
                     color     = "grey60",
                     linewidth = 0.5)
      }
      
      # Linear trend on QC 
      
      if (input$smooth_curve) {
        
        df_qc  <- df_plot[df_plot$Group == "QC", ]
        fit_lm <- lm(Y ~ OrderInjection, data = df_qc)
        
        lm_eq <- paste0(
          "QC Linear Regression = ",
          formatC(coef(fit_lm)[2], format = "e", digits = 1),
          " x + ",
          round(coef(fit_lm)[1], 2)
        )
        
        p <- p +
          geom_smooth(data   = df_qc,
                      method = "lm",
                      se     = FALSE,
                      color  = "orange") +
          annotate("label",
                   x          = Inf, y = Inf,
                   label      = lm_eq,
                   hjust      = 1.1, vjust = 1.5,
                   size       = 4,
                   color      = "grey10",
                   fill       = "orange")
      }
      
      # Sample labels 
      
      if (input$show_labels) {
        
        df_labels <- df_plot %>%
          dplyr::filter(
            (Group == "QC"  & input$label_qc)  |
              (Group == "Bio" & input$label_bio)
          )
        
        if (nrow(df_labels) > 0L) {
          p <- p +
            ggrepel::geom_text_repel(
              data         = df_labels,
              mapping      = aes(label = SampleName),
              size         = 3,
              max.overlaps = 20,
              show.legend  = FALSE
            )
        }
      }
      
      p
    })
    
    output$qc_plot <- renderPlot({ plot_reactive() })
    
    # Save & exit 
    
    observeEvent(input$submit, {
      
      p      <- plot_reactive()
      
      params <- list(
        log_scale        = input$log_scale,
        smooth_curve     = input$smooth_curve,
        show_labels      = input$show_labels,
        label_qc         = input$label_qc,
        label_bio        = input$label_bio,
        show_batch_lines = input$show_batch_lines
      )
      
      write_json(
        params,
        path       = file.path(param_folder, "2_Processing", "01_Quality Control",
                               "Quality_Control_Pre_processing_params.json"),
        pretty     = TRUE,
        auto_unbox = TRUE
      )
      
      write.csv(
        df_base,
        file      = file.path(data_folder, "2_Processing", "01_Quality Control",
                              "Quality_Control_Pre_processing_data.csv"),
        row.names = FALSE
      )
      
      ggsave(
        filename = file.path(chart_folder, "2_Processing", "01_Quality Control",
                             paste0("Quality_Control_", save_text, ".pdf")),
        plot     = p,
        width    = 15, height = 12, bg = "white"
      )
      
      stopApp(list(
        plot       = p,
        data       = df_base,
        parameters = params
      ))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}

# -----------------------------------------------------------------------------
# PURE FUNCTION — Data preparation
# -----------------------------------------------------------------------------

prepare_intensity_data <- function(input_data, metadata_table, blank_names, bio_names, qc_names) {
  
  total_intensity <- colSums(input_data, na.rm = TRUE)
  
  df <- data.frame(
    SampleName     = names(total_intensity),
    TotalIntensity = as.numeric(total_intensity)
  )
  
  df$Group <- NA_character_
  df$Group[df$SampleName %in% blank_names] <- "Blank"
  df$Group[df$SampleName %in% qc_names]    <- "QC"
  df$Group[df$SampleName %in% bio_names]   <- "Bio"
  
  unassigned <- df$SampleName[is.na(df$Group)]
  if (length(unassigned) > 0L)
    stop(sprintf(
      "Some samples are not assigned to Blank / QC / Bio: %s",
      paste(unassigned, collapse = ", ")
    ))
  
  df %>%
    dplyr::left_join(
      metadata_table[, c("SampleName", "OrderInjection", "Batch")],
      by = "SampleName"
    ) %>%
    dplyr::filter(Group != "Blank") %>%
    dplyr::arrange(OrderInjection)
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Filter outlier samples based on the sum of feature intensities
#'
#' @param input_data  Dataframe with sample intensities : Features x Samples
#' @param blank_names Vector of blank sample names
#' @param bio_names   Vector of biological sample names
#' @param qc_names    Vector of QC sample names
#' @param data_folder  Folder path to save result CSV files
#' @param chart_folder Folder path to save chart PDF files
#'
#' @return A named list with:
#'   - `filtered_data`        : Data without outlier samples (Features x Samples)
#'   - `outliers`             : Dataframe of excluded sample names
#'   - `outlier_chart`        : ggplot boxplot object
#'   - `lollipop_chart`       : ggplot lollipop chart object
#'   - `pca_chart`            : ggplot PCA object
#'   - `bio_without_outliers` : Updated biological sample names
#'   - `qc_without_outliers`  : Updated QC sample names


filter_sample_outliers <- function(input_data,
                                   blank_names,
                                   bio_names,
                                   qc_names,
                                   data_folder,
                                   chart_folder) {
  
  
  # ── GUI 1 : Ask whether to run the filter ───────────────────────────────────
  
  .ask_run_filter <- function() {
    
    ui <- fluidPage(
      
      tags$head(tags$style(HTML("
        body { background-color: #f4f6f8; }
        .info-box {
          background: white;
          border-left: 4px solid #3498db;
          padding: 16px 20px;
          border-radius: 4px;
          margin-top: 10px;
        }
        .formula {
          font-family: monospace;
          font-size: 15px;
          color: #2c3e50;
          margin: 6px 0;
        }
      "))),
      
      titlePanel(
        div("Sample Outlier Filter", style = "font-weight: bold;")
      ),
      
      sidebarLayout(
        
        sidebarPanel(
          width = 4,
          checkboxInput(
            inputId = "run_filter",
            label   = strong("Enable Sample Outlier Filter"),
            value   = TRUE
          ),
          br(),
          actionButton(
            "submit", "Continue",
            class = "btn-primary btn-lg",
            icon  = icon("arrow-right"),
            width = "100%"
          )
        ),
        
        mainPanel(
          width = 8,
          div(
            class = "info-box",
            h4(icon("info-circle"), " How it works",
               style = "color: #2980b9; margin-top: 0;"),
            p("Samples are flagged as outliers when their total intensity sum
               falls outside the IQR-based bounds :"),
            div(class = "formula", "Lower Bound  =  Q1 − 1.5 × IQR"),
            div(class = "formula", "Upper Bound  =  Q3 + 1.5 × IQR"),
            br(),
            p("Auto-detected outliers are pre-selected in the next screen.
               You can review and adjust the selection before confirming.",
              style = "color: #555; font-size: 13px;")
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, stopApp(input$run_filter))
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  
  # ── GUI 2 : Review charts and confirm outlier selection ────────────────────
  
  .review_outliers <- function(outlier_chart,
                               lollipop_chart,
                               pca_chart,
                               auto_outliers,
                               chart1_spec_tab) {
    
    all_samples <- chart1_spec_tab$Sample
    
    ui <- fluidPage(
      title = "Sample Outlier Filter",
      tags$head(tags$style(HTML("
        body { background-color: #f4f6f8; }
 
        .sticky-panel {
          position: sticky;
          top: 20px;
          max-height: 85vh;
          overflow-y: auto;
        }
 
        .side-card {
          background: white;
          border-radius: 6px;
          border: 1px solid #dee2e6;
          padding: 18px;
          box-shadow: 0 1px 4px rgba(0,0,0,.06);
        }
 
        .badge-count {
          display: inline-block;
          background: #e74c3c;
          color: white;
          font-size: 12px;
          padding: 2px 9px;
          border-radius: 12px;
          margin-left: 8px;
          vertical-align: middle;
        }
 
        .badge-count.zero { background: #27ae60; }
 
        .hint-text {
          color: #6c757d;
          font-size: 12px;
          margin-bottom: 12px;
        }
 
      "))),
      
      titlePanel(
        div("Sample Outlier Filter — Review & Confirm",
            style = "font-weight: bold; font-size: 20px;")
      ),
      
      br(),
      
      fluidRow(
        
        # ── Left column : sticky outlier selection panel ──────────────
        
        column(
          width = 4,
          
          div(
            class = "sticky-panel",
            div(
              class = "side-card",
              
              # Header with live counter
              h4(
                icon("triangle-exclamation"),
                " Samples to exclude",
                uiOutput("badge_count", inline = TRUE)
              ),
              
              p(class = "hint-text",
                "Auto-detected outliers are pre-selected.
                 Tick / untick any sample to adjust."),
              
              hr(),
              
              # Summary stats
              uiOutput("stats_summary"),
              
              hr(),
              
              uiOutput("outlier_checkboxes"),
              
              hr(),
              
              actionButton(
                "confirm", "Confirm & Save",
                class = "btn-success btn-lg",
                icon  = icon("check"),
                width = "100%",
                style = "margin-top: 8px;"
              )
            )
          )
        ),
        
        # ── Right column : tabset with charts ─────────────────────────
        
        column(
          width = 8,
          
          tabsetPanel(
            type = "tabs",
            id   = "chart_tabs",
            
            tabPanel(
              title = "Boxplot",
              br(),
              plotOutput("plot_boxplot", height = "80vh"),
              p(
                icon("circle-info"),
                "A box plot illustrates the distribution of values : the central box spans the 1st 
                 and 3rd quartiles (Q1–Q3), the inner line marks the median, and the whiskers
                 extend to the outliers that are not aberrant.",
                style = "color: #6c757d; font-size: 12px; margin-top: 8px;"
              )
            ),
            
            tabPanel(
              title = tagList(icon("chart-bar"), " Intensity per Sample"),
              br(),
              plotOutput("plot_lollipop", height = "80vh")
            ),
            
            tabPanel(
              title = tagList(icon("circle-dot"), " PCA"),
              br(),
              plotOutput("plot_pca", height = "80vh"),
              p(
                icon("circle-info"),
                "PCA is centred but not scaled (scale. = FALSE) to preserve
                 absolute intensity structure. A log1p transform is applied
                 before projection.",
                style = "color: #6c757d; font-size: 12px; margin-top: 8px;"
              )
            )
          )
        )
      )
    )
    
    
    server <- function(input, output, session) {
      
      # ── Render charts
      
      output$plot_boxplot  <- renderPlot({ outlier_chart })
      output$plot_lollipop <- renderPlot({ lollipop_chart })
      output$plot_pca <- renderPlot({ pca_chart })
      
      # ── Checkboxes — auto-detected samples pre-ticked
      
      output$outlier_checkboxes <- renderUI({
        checkboxGroupInput(
          inputId  = "selected_outliers",
          label    = NULL,
          choices  = all_samples,
          selected = auto_outliers$Sample,
          inline   = FALSE
        )
      })
      
      # ── Live badge counter
      
      output$badge_count <- renderUI({
        n <- length(input$selected_outliers)
        cls <- if (n == 0) "badge-count zero" else "badge-count"
        span(n, class = cls)
      })
      
      # ── Quick stats below the checkboxes
      
      output$stats_summary <- renderUI({
        sel <- input$selected_outliers
        remaining <- nrow(chart1_spec_tab) - length(sel)
        tagList(
          p(style = "font-size: 13px; margin: 0;",
            icon("users"), strong(" Total samples : "),
            nrow(chart1_spec_tab)),
          p(style = "font-size: 13px; margin: 0; color: #27ae60;",
            icon("check"), strong(" Retained : "),
            remaining),
          p(style = "font-size: 13px; margin: 0; color: #e74c3c;",
            icon("ban"), strong(" Excluded : "),
            length(sel))
        )
      })
      
      # ── Confirm → return selection
      
      observeEvent(input$confirm, {
        stopApp(input$selected_outliers)
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  
  # ════════════════════════════════════════════════════════════════════════════
  # MAIN LOGIC
  # ════════════════════════════════════════════════════════════════════════════
  
  # ── Ask whether to run ─────────────────────────────────────────────
  
  run_filter <- .ask_run_filter()
  
  if (!isTRUE(run_filter)) {
    message("[filter_sample_outliers] Outlier filtering skipped by user.")
    return(list(
      filtered_data        = input_data,
      outliers             = NULL,
      outlier_chart        = NULL,
      lollipop_chart       = NULL,
      pca_chart            = NULL,
      bio_without_outliers = bio_names,
      qc_without_outliers  = qc_names
    ))
  }
  
  
  # ── Remove blanks and compute intensity sums ──────────────────────
  
  working_data <- input_data %>%
    dplyr::select(-dplyr::any_of(blank_names))
  
  sample_sums <- working_data %>%
    dplyr::summarise(dplyr::across(where(is.numeric), ~ sum(.x, na.rm = TRUE))) %>%
    tidyr::pivot_longer(
      cols      = dplyr::everything(),
      names_to  = "Sample",
      values_to = "Sum"
    ) %>%
    dplyr::arrange(Sum)
  
  
  # ── IQR-based bounds ───────────────────────────────────────────────
  
  iqr_stats <- sample_sums %>%
    dplyr::summarise(
      Median      = median(Sum),
      IQR         = IQR(Sum),
      Q1          = quantile(Sum, 0.25),
      Q3          = quantile(Sum, 0.75)
    ) %>%
    dplyr::mutate(
      Lower_Bound = Q1 - 1.5 * IQR,
      Upper_Bound = Q3 + 1.5 * IQR
    )
  
  # Automatically flagged outliers
  
  auto_outliers <- sample_sums %>%
    dplyr::filter(Sum < iqr_stats$Lower_Bound | Sum > iqr_stats$Upper_Bound) %>%
    dplyr::select(Sample)
  
  
  # ── Build charts ───────────────────────────────────────────────────
  
  # ── Boxplot
  
  outlier_chart <- ggplot2::ggplot(sample_sums,
                                   ggplot2::aes(x = "", y = log10(Sum + 1))) +
    ggplot2::geom_boxplot(fill = "#aed6f1", alpha = 0.5,
                          outlier.shape = NA, width = 0.4) +
    ggplot2::geom_jitter(width = 0.08, alpha = 0.7, size = 2,
                         color = "#2c3e50") +
    ggrepel::geom_text_repel(
      #data = dplyr::filter(sample_sums,
      #                     Sum < iqr_stats$Lower_Bound |
      #                       Sum > iqr_stats$Upper_Bound),
      ggplot2::aes(label = Sample),
      size = 3, color = "black",
      box.padding = 0.5, max.overlaps = 10
    ) +
    ggplot2::geom_hline(
      ggplot2::aes(yintercept = log10(iqr_stats$Lower_Bound),
                   color = "Bounds (Q1/Q3 ± 1.5×IQR)"),
      linetype = "solid", linewidth = 0.9
    ) +
    ggplot2::geom_hline(
      ggplot2::aes(yintercept = log10(iqr_stats$Upper_Bound),
                   color = "Bounds (Q1/Q3 ± 1.5×IQR)"),
      linetype = "solid", linewidth = 0.9
    ) +
    ggplot2::geom_hline(
      ggplot2::aes(yintercept = log10(iqr_stats$Median),
                   color = "Median"),
      linetype = "dotted", linewidth = 0.9
    ) +
    ggplot2::scale_color_manual(
      name   = "Reference lines",
      values = c("Bounds (Q1/Q3 ± 1.5×IQR)" = "#e74c3c",
                 "Median" = "#27ae60")
    ) +
    ggplot2::labs(
      title    = "Sample intensity distribution",
      subtitle = "Each dot = one sample  |  Flagged outliers labelled in red",
      x        = "Samples",
      y        = "Log10 (Intensity Sum + 1)"
    ) +
    ggplot2::theme_minimal(base_size = 14) +
    ggplot2::theme(
      axis.text.x       = ggplot2::element_blank(),
      axis.ticks.x      = ggplot2::element_blank(),
      plot.title        = ggplot2::element_text(face = "bold"),
      legend.position   = "right"
    )
  
  
  # ── Lollipop chart (sorted by sum, outliers highlighted)
  
  lollipop_chart <- ggplot2::ggplot(
    sample_sums,
    ggplot2::aes(
      x     = reorder(Sample, Sum),
      y     = log10(Sum + 1),
      color = Sum < iqr_stats$Lower_Bound | Sum > iqr_stats$Upper_Bound
    )
  ) +
    ggplot2::geom_segment(
      ggplot2::aes(xend = reorder(Sample, Sum), yend = min(log10(Sum)) - 0.1),
      color = "grey80", linewidth = 0.5
    ) +
    ggplot2::geom_point(size = 3.5, alpha = 0.9) +
    ggplot2::scale_color_manual(
      values = c("FALSE" = "#2ecc71", "TRUE" = "#e74c3c"),
      labels = c("FALSE" = "Normal", "TRUE" = "Outlier"),
      name   = NULL
    ) +
    ggrepel::geom_text_repel(
      data = dplyr::filter(sample_sums,
                           Sum < iqr_stats$Lower_Bound |
                             Sum > iqr_stats$Upper_Bound),
      ggplot2::aes(label = Sample),
      size = 3, color = "#e74c3c",
      nudge_x = 0.3, box.padding = 0.4, max.overlaps = Inf
    ) +
    ggplot2::geom_hline(
      yintercept = log10(iqr_stats$Lower_Bound + 1),
      linetype = "dashed", color = "#e74c3c", linewidth = 0.8
    ) +
    ggplot2::geom_hline(
      yintercept = log10(iqr_stats$Upper_Bound + 1),
      linetype = "dashed", color = "#e74c3c", linewidth = 0.8
    ) +
    ggplot2::geom_hline(
      yintercept = log10(iqr_stats$Median + 1),
      linetype = "dotted", color = "#3498db", linewidth = 0.8
    ) +
    ggplot2::coord_flip() +
    ggplot2::labs(
      title    = "Per-sample intensity sum (sorted)",
      subtitle = "Red dashes = IQR bounds | Blue dots = median",
      x        = NULL,
      y        = "Log10 (Intensity Sum + 1)"
    ) +
    ggplot2::theme_minimal(base_size = 13) +
    ggplot2::theme(
      axis.text.y        = ggplot2::element_text(size = 9),
      panel.grid.major.y = ggplot2::element_blank(),
      plot.title         = ggplot2::element_text(face = "bold"),
      legend.position    = "top"
    )
  
  
  # ── PCA
  # Log1p-transform to compress dynamic range while preserving intensity
  # structure; centred but NOT scaled so that samples with globally
  # low/high intensities still appear as outliers in the projection.
  
  pca_matrix <- working_data %>%
    dplyr::select(where(is.numeric)) %>%
    dplyr::mutate(dplyr::across(dplyr::everything(), log1p)) %>%
    as.matrix() %>%
    t()
  
  # Replace any remaining NA with half the minimum positive value
  min_val <- min(pca_matrix[pca_matrix > 0], na.rm = TRUE)
  pca_matrix[is.na(pca_matrix)] <- min_val / 2
  
  pca_result <- stats::prcomp(pca_matrix, center = TRUE, scale. = FALSE)
  
  pca_chart <- factoextra::fviz_pca_ind(
    pca_result,
    col.ind     = "black",
    addEllipses = TRUE,
    repel       = TRUE,
    title       = "PCA — sample overview (log1p, centred, unscaled)"
  )
  
  
  # ── Launch review GUI ──────────────────────────────────────────────
  
  confirmed_outliers <- .review_outliers(
    outlier_chart   = outlier_chart,
    lollipop_chart  = lollipop_chart,
    pca_chart       = pca_chart,
    auto_outliers   = auto_outliers,
    chart1_spec_tab = sample_sums
  )
  
  # Build the final outliers dataframe from user selection
  
  outliers <- data.frame(
    Sample = if (is.null(confirmed_outliers)) character(0) else confirmed_outliers,
    stringsAsFactors = FALSE
  )
  
  
  # ── Remove outliers and update sample name vectors ────────────────
  
  filtered_data        <- working_data %>%
    dplyr::select(-dplyr::any_of(outliers$Sample))
  
  bio_without_outliers <- bio_names[!bio_names %in% outliers$Sample]
  qc_without_outliers  <- qc_names[ !qc_names  %in% outliers$Sample]
  
  message(sprintf(
    "%d outlier(s) excluded : %s",
    nrow(outliers),
    if (nrow(outliers) == 0) "none"
    else paste(outliers$Sample, collapse = ", ")
  ))
  
  
  # ── Save outputs ───────────────────────────────────────────────────
  
  out_dir_data  <- file.path(data_folder,  "2_Processing", "03_Sample_Outlier_Exclusion")
  out_dir_chart <- file.path(chart_folder, "2_Processing", "03_Sample_Outlier_Exclusion")
  
  ggplot2::ggsave(
    file.path(out_dir_chart, "Boxplot_Outlier_Filter.pdf"),
    plot = outlier_chart, width = 12, height = 8, bg = "white"
  )
  ggplot2::ggsave(
    file.path(out_dir_chart, "Lollipop_Intensity_per_Sample.pdf"),
    plot = lollipop_chart, width = 14, height = min(45, nrow(sample_sums) * 0.25),
    bg = "white"
  )
  ggplot2::ggsave(
    file.path(out_dir_chart, "PCA_Sample_Overview.pdf"),
    plot = pca_chart, width = 12, height = 8, bg = "white"
  )
  
  utils::write.csv(
    outliers,
    file.path(out_dir_data, "outliers_excluded.csv"),
    row.names = FALSE
  )
  utils::write.csv(
    filtered_data,
    file.path(out_dir_data, "output_step1_without_outlier.csv"),
    row.names = TRUE
  )
  
  
  # ── Return ──────────────────────────────────────────────────────────────────
  
  list(
    filtered_data        = filtered_data,
    outliers             = outliers,
    outlier_chart        = outlier_chart,
    lollipop_chart       = lollipop_chart,
    pca_chart            = pca_chart,
    bio_without_outliers = bio_without_outliers,
    qc_without_outliers  = qc_without_outliers
  )
}

########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Function to filter features based on missing value thresholds
#'
#' @param input_data Dataframe or matrix with sample intensities : Features * Samples
#' @param bio_names Vector of biological sample names
#' @param qc_names Vector of QC sample names
#' @param metadata_table Dataframe with sample metadata (including Group information)
#' @param data_folder Folder path to save results
#' @param chart_folder Folder path to save charts
#' @return List with:
#'         - `filtered_data`: Data filtered by missing value thresholds
#'         - `miss_val_params`: Parameters used for filtering
#'         - `miss_val_chart`: Combined chart of missing values before/after filtering
#'         

        
filter_by_missing_values <- function(input_data, bio_names, qc_names, metadata_table, data_folder, chart_folder) {
  
  get_miss_val_threshold_gui <- function(zero_proportions_general, zero_proportions_BIO, zero_proportions_QC, zero_proportions_groups) {
    
    ui <- fluidPage(
      titlePanel("Missing Value Filtering : Threshold Selection"),
      p("The 'Specific' mode is highly recommended for controlling LOESS, as it is highly dependent on the QC's reliability.",
        style = "color: #3366cc; font-weight: bold;"),
      sidebarLayout(
        sidebarPanel(
          radioButtons("mode", "Mode", choices = c("General", "Specific"), selected = "Specific"),
          
          conditionalPanel(
            "input.mode=='General'",
            numericInput("V", "General threshold (BIO + QC) (0-1):", 0.2, 0, 1, 0.01)
          ),
          
          conditionalPanel(
            "input.mode=='Specific'",
            numericInput("X", "QC threshold (0-0.6):", 0.2, 0, 0.6, 0.01),
            numericInput("U", "BIO threshold (0-1):", 0.2, 0, 1, 0.01),
            numericInput("Y", "Group BIO threshold (0-1):", 0.2, 0, 1, 0.01),
            br(),
            strong("A feature is kept when :"),
            uiOutput("condition_text"),
            br()
          ),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        
        mainPanel(
          h4("Parameter Description"),
          tags$b("Thresholds :"),
          p("Thresholds are maximum proportions of missing values."),
          verbatimTextOutput("summary"),
          verbatimTextOutput("counts")
        )
      )
    )
    
    server <- function(input, output, session) {
      
      output$summary <- renderPrint({
        cat("Initial Summary of Missing Values Proportion by Feature (BIO + QC) before filtering :\n")
        summary(zero_proportions_general$Miss_Val_Proportion)
      })
      
      kept_vars <- reactive({
        vars <- as.character(zero_proportions_BIO$Variable)
        
        gen_vals <- setNames(as.numeric(zero_proportions_general$Miss_Val_Proportion), vars)
        bio_vals <- setNames(as.numeric(zero_proportions_BIO$Miss_Val_Proportion), vars)
        qc_vals <- setNames(as.numeric(zero_proportions_QC$Miss_Val_Proportion), vars)
        
        grp_df <- zero_proportions_groups
        group_matrix <- as.matrix(grp_df %>% dplyr::select(-Group))
        
        keep <- logical(length(vars))
        
        for (i in seq_along(vars)) {
          v <- vars[i]
          gen_val <- gen_vals[v]
          b_val <- bio_vals[v]
          q_val <- qc_vals[v]
          
          col_idx <- match(v, colnames(group_matrix))
          
          if (is.na(col_idx)) {
            grp_vals <- rep(NA_real_, nrow(group_matrix))
          } else {
            grp_vals <- as.numeric(group_matrix[, col_idx])
          }
          
          if (input$mode == "General") {
            keep[i] <- (!is.na(gen_val) && gen_val <= input$V)
          } else {
            keep[i] <- (!is.na(q_val) && q_val <= input$X) &
              ((!is.na(b_val) && b_val <= input$U) | any(!is.na(grp_vals) & grp_vals <= input$Y))
          }
        }
        
        tibble::tibble(Variable = vars, keep = keep)
      })
      
      output$counts <- renderText({
        df <- kept_vars()
        paste0("Initial variables : ", nrow(df),
               "\nRemaining after filtering : ", sum(df$keep, na.rm = TRUE))
      })
      
      output$condition_text <- renderUI({
        tags$div(
          style = "background-color: #f5f5f5; padding: 10px; border-radius: 5px; margin-top: 5px;",
          HTML(sprintf(
            "QC missing values ≤ <b>%.2f</b><br>
       <span style='background-color:#e74c3c; color:white; font-weight:bold; padding:2px 8px; border-radius:4px;'>AND</span><br>
       [(BIO missing values ≤ <b>%.2f</b>) <span style='background-color:#3498db; color:white; font-weight:bold; padding:2px 8px; border-radius:4px;'>OR</span> (at least 1 group ≤ <b>%.2f</b>)]",
            input$X, input$U, input$Y
          ))
        )
      })
      
      observeEvent(input$submit, {
        df <- kept_vars()
        kept_list <- df$Variable[df$keep]
        
        out <- if (input$mode == "General") {
          list(
            mode = "General",
            General_threshold = input$V,
            kept_variables = kept_list
          )
        } else {
          list(
            mode = "Specific",
            QC_threshold = input$X,
            BIO_threshold = input$U,
            Group_BIO_threshold = input$Y,
            kept_variables = kept_list
          )
        }
        
        stopApp(out)
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Calculate missing value proportions
  
  zero_proportions_general <- as.data.frame(t(input_data)) %>%        # Samples * Features
    mutate(across(where(is.numeric), ~ replace_na(.x, 0))) %>%
    summarise(across(everything(), ~ mean(.x == 0, na.rm = TRUE))) %>%
    pivot_longer(everything(), names_to = "Variable", values_to = "Miss_Val_Proportion")
  
  zero_proportions_QC <- as.data.frame(input_data) %>%                # Features * Samples
    select(all_of(qc_names)) %>%
    mutate(across(where(is.numeric), ~ replace_na(.x, 0))) %>%
    t() %>%                                                           # Samples * Features
    as.data.frame() %>%
    summarise(across(everything(), ~ mean(.x == 0, na.rm = TRUE))) %>%
    pivot_longer(everything(), names_to = "Variable", values_to = "Miss_Val_Proportion")
  
  zero_proportions_BIO <- as.data.frame(input_data) %>%               # Features * Samples
    select(all_of(bio_names)) %>%
    mutate(across(where(is.numeric), ~ replace_na(.x, 0))) %>%
    t() %>%                                                           # Samples * Features                                                           
    as.data.frame() %>%
    summarise(across(everything(), ~ mean(.x == 0, na.rm = TRUE))) %>%
    pivot_longer(everything(), names_to = "Variable", values_to = "Miss_Val_Proportion")
  
  zero_proportions_groups <- as.data.frame(input_data) %>%            # Features * Samples
    select(all_of(bio_names)) %>%
    mutate(across(where(is.numeric), ~ replace_na(.x, 0))) %>%
    t() %>%                                                           # Samples * Features
    as.data.frame() %>%
    rownames_to_column("Sample") %>%
    left_join(metadata_table[, c("SampleName", "Group")], by = c("Sample" = "SampleName")) %>%
    group_by(Group) %>%
    summarise(across(where(is.numeric), ~ mean(.x == 0), .names = "Miss_Val_Proportion_{.col}")) %>%
    ungroup()
  
  # Run the GUI and retrieve parameters
  
  Miss_val_params <- get_miss_val_threshold_gui(zero_proportions_general, zero_proportions_BIO, zero_proportions_QC, zero_proportions_groups)
  
  if (is.null(Miss_val_params)) {
    message("Missing value filtering canceled by user.")
    return(list(
      filtered_data = input_data,
      miss_val_params = NULL,
      miss_val_chart = NULL
    ))
  }
  
  # Filter data based on selected variables
  
  output_step1_x_missval_exclusion <- input_data[rownames(input_data) %in% Miss_val_params$kept_variables, , drop = FALSE]
  
  # Save filtered data
  
  write.csv(output_step1_x_missval_exclusion,
            file = file.path(data_folder, "2_Processing", "04_Missing_Value_Filter", "output_step1_x_missval_exclusion.csv"),
            row.names = TRUE)
  
  # Calculate missing value proportions after filtering
  
  zero_proportions_general_after_filtering <- as.data.frame(t(output_step1_x_missval_exclusion)) %>%
    mutate(across(where(is.numeric), ~ replace_na(.x, 0))) %>%
    summarise(across(everything(), ~ mean(.x == 0, na.rm = TRUE))) %>%
    pivot_longer(everything(), names_to = "Variable", values_to = "Miss_Val_Proportion")
  
  # Determine common x-axis and y-axis limits
  
  x_min <- min(zero_proportions_general$Miss_Val_Proportion, zero_proportions_general_after_filtering$Miss_Val_Proportion)
  x_max <- max(zero_proportions_general$Miss_Val_Proportion, zero_proportions_general_after_filtering$Miss_Val_Proportion)
  
  max_count_before <- max(hist(zero_proportions_general$Miss_Val_Proportion, breaks = 30, plot = FALSE)$counts)
  max_count_after <- max(hist(zero_proportions_general_after_filtering$Miss_Val_Proportion, breaks = 30, plot = FALSE)$counts)
  y_max <- max(max_count_before, max_count_after)
  
  # Create charts
  
  combined_data <- rbind(
    data.frame(Miss_Val_Proportion = zero_proportions_general$Miss_Val_Proportion, Stage = "Before"),
    data.frame(Miss_Val_Proportion = zero_proportions_general_after_filtering$Miss_Val_Proportion, Stage = "After")
  )
  
  combined_data <- combined_data %>% mutate(Stage = factor(Stage, levels = c("Before", "After")))
  
  miss_val_combined_plot <- ggplot(combined_data, aes(x = Miss_Val_Proportion, fill = Stage)) +
    geom_density(alpha = 0.4) +
    scale_fill_manual(values = c("Before" = "salmon",
                                 "After" = "green3")) +
    labs(
      title = "Missing Value Distribution Before vs After Filtering",
      x = "Missing Value Proportion",
      y = "Density"
    ) +
    xlim(x_min, x_max)
  
  # Save charts
  
  ggsave(file.path(chart_folder, "2_Processing", "04_Missing_Value_Filter", "Missing_value_chart.pdf"),
         plot = miss_val_combined_plot, width = 20, height = 10, bg = "white")
  
  # Save parameters
  
  write_json(Miss_val_params[setdiff(names(Miss_val_params), "kept_variables")],
             pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "2_Processing", "04_Missing_Value_Filter", "Missing_values_params.json"))
  
  # Return results
  
  list(
    filtered_data = output_step1_x_missval_exclusion,
    miss_val_params = Miss_val_params[setdiff(names(Miss_val_params), "kept_variables")],
    miss_val_chart = miss_val_combined_plot
  )
  
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
######################################            Imputation           #################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Function to handle missing value imputation with multiple strategies and sigma selection
#'
#' @param input_data Dataframe or matrix with missing values : Features * Samples
#' @param qc_names Vector of QC sample names
#' @param bio_names Vector of biological sample names
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder path to save results
#' @param chart_folder Folder path to save charts
#' @return List with:
#'         - `imputed_data`: Imputed data
#'         - `imputation_params`: Parameters used for imputation
#'         - `validation_results`: Validation results
#'         - `imputation_summary`: Summary of input_data (finite values only) and imputed_data (imputed values only)
#'         

# Main function 

perform_imputation <- function(input_data, qc_names, bio_names,
                               param_folder, data_folder, chart_folder) {
  
  imputation_is_ok <- FALSE
  
  while (!imputation_is_ok) {
    
    imputation_results <- impute_missing_values(
      input_data = input_data,
      qc_names = qc_names,
      bio_names = bio_names,
      param_folder = param_folder,
      data_folder = data_folder
    )
    
    # If canceled
    
    if (is.null(imputation_results$imputation_method)) {
      message("Imputation canceled.")
      return(NULL)
    }
    
    # Case : No imputation
    
    if (imputation_results$imputation_method == "No imputation") {
      
      return(list(
        imputed_data = imputation_results$imputed_data,
        imputation_params = imputation_results$imputation_params,
        validation_results = NULL,
        imputation_summary = NULL
      ))
    }
    
    # Generate summary
    
    imputation_summary <- generate_imputation_summary(
      original_data = input_data,
      imputed_data = imputation_results$imputed_data
    )
    
    # Review
    
    review_result <- review_imputation_results(
      imputed_data = imputation_results$imputed_data,
      original_data = input_data,
      validation_results = imputation_results$validation_results,
      imputation_summary = imputation_summary
    )
    
    imputation_is_ok <- review_result
    
    if (imputation_is_ok) {
      
      plot_imputation_distribution(
        original_data = input_data,
        imputation_results$imputed_data,
        save_path = file.path(chart_folder,
                              "2_Processing",
                              "05_Missing_Value_Imputation",
                              "Imputation_distribution.pdf")
      )
    }
  }
  
  # Final return (after validation loop)
  
  list(
    imputed_data = imputation_results$imputed_data,
    imputation_params = imputation_results$imputation_params,
    validation_results = imputation_results$validation_results,
    imputation_summary = imputation_summary
  )
}


#------------------------------------------------------------------------------------------------------------

# Imputation function

impute_missing_values <- function(input_data, qc_names, bio_names, param_folder, data_folder) {
  
  # Data preparation
  
  # Replace zeros with NA
  
  input_data[input_data == 0] <- NA
  
  # QC table for MAR features
  
  output_step1_x_missval_exclusion_QC <- input_data[, qc_names, drop = FALSE]
  QC_median <- apply(output_step1_x_missval_exclusion_QC, 1, function(x) median(x, na.rm = TRUE))
  
  # This table is created if you want to do some filter based on the median : here nothing is done
  
  QC_imput_table <- data.frame(
    Variable = rownames(output_step1_x_missval_exclusion_QC),
    QC_median = QC_median
  )
  
  MAR_features <- QC_imput_table$Variable
  qc_MAR_matrix <- output_step1_x_missval_exclusion_QC[rownames(output_step1_x_missval_exclusion_QC) %in% MAR_features, , drop = FALSE]
  
  
  # Imputation method selection
  
  run_imputation_method_selector <- function() {
    ui <- fluidPage(
      titlePanel("Select Imputation Method"),
      sidebarLayout(
        sidebarPanel(
          radioButtons(
            inputId = "method",
            label = "Choose the imputation method :",
            choices = c(
              "No imputation",
              "Full QRILC imputation",
              "Mixed imputation (KNN for QC, QRILC for BIO)"
            ),
            selected = "Mixed imputation (KNN for QC, QRILC for BIO)"
          ),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Description of methods :"),
          tags$b("No imputation :"), p("No missing values will be imputed."),
          tags$b("Full QRILC imputation :"), p("All missing values will be imputed using the QRILC method."),
          tags$b("Mixed imputation :"), p("Missing values in QC samples will be imputed using KNN, and missing values in BIO samples will be imputed using QRILC.")
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, { stopApp(input$method) })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  imputation_method <- run_imputation_method_selector()
  
  
  # Handle "No imputation" case
  
  if (is.null(imputation_method) || imputation_method == "No imputation") {
    message("No imputation selected or canceled by user.")
    return(list(
      imputed_data = input_data,
      imputation_params = list(method = "No imputation"),
      validation_results = NULL,
      imputation_summary = NULL,
      review_result = TRUE,
      imputation_method = "No imputation"
    ))
  }
  
  
  # Sigma selection for QRILC
  
  run_sigma_selector <- function() {
    ui <- fluidPage(
      titlePanel("Select the tune.sigma for QRILC Imputation"),
      sidebarLayout(
        sidebarPanel(
          sliderInput("sigma", "Select tune.sigma value (0.05 to 1.2):", min = 0.05, max = 1.2, value = 0.75, step = 0.05),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4(tags$b("Guidance for sigma selection :")),
          p("Sigma corresponds to the spread of the standard deviation of the truncated normal distribution of QRILC.
            Lower sigma (0.05-0.3) is conservative, allows less variability. Higher sigma (0.6-1.2) allows more variability.
            Recommended : 0.75")
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, { stopApp(input$sigma) })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  selected_sigma <- run_sigma_selector()
  if (is.null(selected_sigma)) {
    message("Sigma selection canceled by user.")
    return(list(
      imputed_data = input_data,
      imputation_params = NULL,
      validation_results = NULL,
      imputation_summary = NULL,
      review_result = FALSE,
      imputation_method = NULL
    ))
  }
  
  
  # KNN imputation for QC if mixed method selected
  
  if (imputation_method == "Mixed imputation (KNN for QC, QRILC for BIO)" && nrow(qc_MAR_matrix) > 0) {
    
    k_use <- min(10, nrow(qc_MAR_matrix) - 1)
    
    if (k_use < 2) {
      warning("Not enough features with QC values for KNN imputation. Block ignored.")
    } else {
      
      qc_MAR_imputed <- impute::impute.knn(
        as.matrix(qc_MAR_matrix),
        k = k_use
      )$data  # Features * Samples
      
      output_step1_x_missval_exclusion_QC[rownames(qc_MAR_imputed), colnames(qc_MAR_imputed)] <- qc_MAR_imputed
      input_data[rownames(output_step1_x_missval_exclusion_QC), qc_names] <- output_step1_x_missval_exclusion_QC
    }
  }
  
  # QRILC imputation
  
  log_data <- log2(input_data + 1)
  result <- imputeLCMD::impute.QRILC(log_data, tune.sigma = selected_sigma)
  imputed_data <- 2^result[[1]] - 1
  
  imputation_params <- list(
    method = imputation_method,
    sigma = selected_sigma
  )
  
  # QRILC validation
  
  data_before <- t(input_data)
  data_after <- t(imputed_data)
  n_vars <- ncol(data_after)
  
  QRILC_validation_results <- data.frame(
    Feature = colnames(data_after),
    Log2_Median_before = NA_real_,
    Log2_Median_after = NA_real_,
    Log2_FC = NA_real_,
    IQR_before = NA_real_,
    IQR_after = NA_real_,
    IQR_Ratio = NA_real_,
    stringsAsFactors = FALSE
  )
  
  for (i in seq_len(n_vars)) {
    var <- colnames(data_after)[i]
    x_orig <- data_before[, var]
    x_orig <- x_orig[!is.na(x_orig)]
    x_imp <- data_after[, var]
    
    QRILC_validation_results[i, ] <- list(
      var,
      log2(median(x_orig, na.rm = TRUE)),
      log2(median(x_imp, na.rm = TRUE)),
      log2(median(x_imp, na.rm = TRUE)) - log2(median(x_orig, na.rm = TRUE)),
      IQR(x_orig, na.rm = TRUE),
      IQR(x_imp, na.rm = TRUE),
      if(IQR(x_orig, na.rm = TRUE) == 0) NA else IQR(x_imp, na.rm = TRUE) / IQR(x_orig, na.rm = TRUE)
    )
  }
  
  validation_results <- list(
    summary = summary(QRILC_validation_results),
    results = QRILC_validation_results,
    flagged_vars = QRILC_validation_results %>%
      mutate(is_flag = ifelse(abs(Log2_FC) > 1 | IQR_Ratio > 2 | IQR_Ratio < 0.5, 1L, 0L)) %>%
      select(Feature, is_flag)
  )
  
  
  # Create imputation audit table (QC)
  
  if (imputation_method == "Mixed imputation (KNN for QC, QRILC for BIO)" && nrow(qc_MAR_matrix) > 0) {
    
    na_positions <- which(is.na(qc_MAR_matrix), arr.ind = TRUE)
    
    Imputation_audit_table_QC <- data.frame(
      Row_index = na_positions[, 1],
      Column_index = na_positions[, 2],
      Feature = rownames(qc_MAR_matrix)[na_positions[, 1]],
      Sample = colnames(qc_MAR_matrix)[na_positions[, 2]],
      Imputed_value = qc_MAR_imputed[na_positions]
    )
    
  } else {
    
    Imputation_audit_table_QC <- NULL
    
  }
  
  # Save parameters and results
  
  write_json(imputation_params, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "2_Processing", "05_Missing_Value_Imputation", "Imputation_params.json"))
  
  if (!is.null(validation_results)) {
    
    write.csv(validation_results$results,
              file = file.path(data_folder, "2_Processing", "05_Missing_Value_Imputation", "Imputation_validation_results.csv"),
              row.names = FALSE)
    
    write.csv(validation_results$flagged_vars,
              file = file.path(data_folder, "2_Processing", "05_Missing_Value_Imputation", "Imputation_flagged_vars.csv"),
              row.names = FALSE)
  }
  
  if (!is.null(Imputation_audit_table_QC)) {
    
    write.csv(Imputation_audit_table_QC,
              file = file.path(data_folder, "2_Processing", "05_Missing_Value_Imputation", "Imputation_audit_table_QC.csv"),
              row.names = FALSE)
  }
  
  
  write.csv(imputed_data,
            file = file.path(data_folder, "2_Processing", "05_Missing_Value_Imputation", "output_step1_imputed.csv"),
            row.names = TRUE)
  
  # Return results
  
  list(
    imputed_data = imputed_data,
    imputation_params = imputation_params,
    validation_results = validation_results,
    imputation_method = imputation_method
  )
}

#------------------------------------------------------------------------------------------------------------------

# Imputation summary function

generate_imputation_summary <- function(original_data, imputed_data) {
  
  # Original values (excluding NA and 0)
  
  original_values <- original_data[!is.na(original_data) & original_data != 0]
  
  # Imputed values
  
  imputed_values <- imputed_data[is.na(original_data) | original_data == 0]
  
  summary_df <- data.frame(
    Type = c("Original (No 0 nor NA)", "Imputed values only"),
    Min = c(min(original_values), ifelse(length(imputed_values) > 0, min(imputed_values), NA)),
    Q1 = c(quantile(original_values, 0.25), ifelse(length(imputed_values) > 0, quantile(imputed_values, 0.25), NA)),
    Median = c(median(original_values), ifelse(length(imputed_values) > 0, median(imputed_values), NA)),
    Mean = c(mean(original_values), ifelse(length(imputed_values) > 0, mean(imputed_values), NA)),
    Q3 = c(quantile(original_values, 0.75), ifelse(length(imputed_values) > 0, quantile(imputed_values, 0.75), NA)),
    Max = c(max(original_values), ifelse(length(imputed_values) > 0, max(imputed_values), NA))
  )
  
  return(summary_df)
}

#------------------------------------------------------------------------------------------------------------------

# Imputation plot function

plot_imputation_distribution <- function(original_data, imputed_data, save_path = NULL) {
  
  val_before <- as.vector(as.matrix(original_data[!is.na(original_data)]))
  val_after  <- as.vector(as.matrix(imputed_data))
  
  if (!is.null(save_path)) {
    pdf(save_path, width = 7, height = 9)
  }
  
  par(mfrow = c(3,1), mar = c(4,4,2,1))
  
  hist(log10(val_before + 1), breaks = 75, col="salmon",
       main="Before Imputation", xlab="Log10 Intensity")
  
  hist(log10(val_after + 1), breaks = 75, col="green3",
       main="After Imputation", xlab="Log10 Intensity")
  
  boxplot(log10(val_before + 1), log10(val_after + 1),
          names=c("Before", "After"),
          col=c("salmon", "green3"),
          main="Distribution Comparison")
  
  if (!is.null(save_path)) {
    dev.off()
  }
}


#------------------------------------------------------------------------------------------------------------------


# Review Shiny function

review_imputation_results <- function(imputed_data, original_data, validation_results, imputation_summary) {
  
  # ── Diagnostics for the interpretation guide ──────────────────────────
  
  res <- validation_results$results
  
  median_log2fc    <- median(res$Log2_FC, na.rm = TRUE)
  pct_negative_fc  <- mean(res$Log2_FC < 0, na.rm = TRUE) * 100
  median_iqr_ratio <- median(res$IQR_Ratio, na.rm = TRUE)
  pct_flagged      <- mean(validation_results$flagged_vars$is_flag, na.rm = TRUE) * 100
  
  # Badge 1 : shift direction (imputed values should be LOWER than observed,
  # consistent with the left-censored / MNAR assumption behind QRILC)
  
  shift_badge_color <- dplyr::case_when(
    pct_negative_fc >= 85 ~ "#1CE82C",
    pct_negative_fc >= 65 ~ "#FFC107",
    pct_negative_fc >= 50 ~ "#F58300",
    TRUE                  ~ "#F54927"
  )
  shift_badge_text <- paste0(
    round(pct_negative_fc, 1), "% of features have an imputed median lower than the observed one ",
    "(median Log2FC = ", round(median_log2fc, 2), "). ",
    if (pct_negative_fc >= 85) {
      "\u2713 Consistent with QRILC's left-censored (MNAR) assumption."
    } else if (pct_negative_fc >= 50) {
      "\u26A0 Weaker than expected \u2014 check whether missingness is really MNAR for these features."
    } else {
      "\u203C Most imputed values are NOT lower than observed \u2014 QRILC's assumption may not hold here."
    }
  )
  
  # Badge 2 : variability preserved (IQR_Ratio close to 1 is ideal)
  
  iqr_badge_color <- dplyr::case_when(
    median_iqr_ratio >= 0.7 & median_iqr_ratio <= 1.5 ~ "#1CE82C",
    median_iqr_ratio >= 0.5 & median_iqr_ratio <= 2   ~ "#FFC107",
    TRUE                                               ~ "#F54927"
  )
  iqr_badge_text <- paste0(
    "Median IQR ratio (imputed / observed) = ", round(median_iqr_ratio, 2), ". ",
    if (median_iqr_ratio >= 0.7 & median_iqr_ratio <= 1.5) {
      "\u2713 Imputed values keep a realistic spread."
    } else if (median_iqr_ratio < 0.7) {
      "\u26A0 Imputed values look too compressed \u2014 try increasing tune.sigma."
    } else {
      "\u26A0 Imputed values look too dispersed/noisy \u2014 try decreasing tune.sigma."
    }
  )
  
  # Badge 3 : proportion of flagged (aberrant) features
  
  flag_badge_color <- dplyr::case_when(
    pct_flagged < 10 ~ "#1CE82C",
    pct_flagged < 25 ~ "#FFC107",
    pct_flagged < 40 ~ "#F58300",
    TRUE              ~ "#F54927"
  )
  flag_badge_text <- paste0(
    round(pct_flagged, 1), "% of features flagged (|Log2FC| > 1 or IQR ratio outside [0.5, 2]). ",
    if (pct_flagged < 10) {
      "\u2713 Very few aberrant features."
    } else if (pct_flagged < 25) {
      "\u26A0 Acceptable, but review the flagged list."
    } else if (pct_flagged < 40) {
      "\u203C High proportion \u2014 consider re-running with a different tune.sigma."
    } else {
      "\u203C\u203C Very high proportion \u2014 the imputation is likely not reliable as configured."
    }
  )
  
  badge_style <- "padding:10px 14px;border-radius:4px;color:white;font-weight:bold;margin-bottom:8px;background:"
  
  ui <- fluidPage(
    titlePanel("Review Imputation Results"),
    sidebarLayout(
      sidebarPanel(
        actionButton("continue", "Continue with these results", class = "btn-success"),
        actionButton("re_run", "Re-run : Cancel these results", class = "btn-warning"),
        width = 3
      ),
      mainPanel(
        tabsetPanel(
          tabPanel("Summary Statistics",
                   h4("Imputation Summary"),
                   verbatimTextOutput("imputation_summary"),
                   h4("Validation Results"),
                   verbatimTextOutput("validation_results")),
          tabPanel("Flagged Variables",
                   h4(paste("Percentage of Flagged Variables :",
                            round(mean(validation_results$flagged_vars$is_flag) * 100, 1), "%")),
                   tableOutput("flagged_vars")),
          tabPanel("Distribution Comparison",
                   plotOutput("distribution_plot", height = "800px")),
          tabPanel("Interpretation Guide",
                   br(),
                   div(style = paste0(badge_style, shift_badge_color, ";"), shift_badge_text),
                   div(style = paste0(badge_style, iqr_badge_color, ";"),   iqr_badge_text),
                   div(style = paste0(badge_style, flag_badge_color, ";"), flag_badge_text),
                   hr(),
                   h4("How to judge imputation quality"),
                   tags$ul(
                     tags$li(strong("Shift direction : "),
                             "QRILC assumes missing values are low, below the detection limit (MNAR). ",
                             "Imputed values should therefore be lower than the observed values of the same ",
                             "feature in the large majority of cases (negative Log2FC)."),
                     tags$li(strong("Shift magnitude : "),
                             "a moderate negative Log2FC is expected. An extremely negative Log2FC ",
                             "(e.g. < -5) for many features can indicate a tune.sigma set too low ",
                             "(imputed values collapse toward an artificial floor)."),
                     tags$li(strong("Variability preserved (IQR ratio) : "),
                             "close to 1 is a good sign. Too low = imputed values too uniform/compressed ",
                             "(increase tune.sigma). Too high = imputed values too dispersed/noisy ",
                             "(decrease tune.sigma)."),
                     tags$li(strong("% flagged features : "),
                             "a high percentage (> 25-30%) suggests the chosen tune.sigma isn't well ",
                             "suited to the whole dataset, or that some features don't follow a MNAR ",
                             "mechanism (in which case QRILC isn't the right method for them)."),
                     tags$li(strong("'Distribution Comparison' tab : "),
                             "the green histogram (after imputation) should be shifted to the left of the ",
                             "salmon one (before), with a similar decay shape. An isolated spike at the far ",
                             "left = sign of over-imputation (sigma too low). Near-total overlap with the ",
                             "salmon distribution = sign the imputation isn't producing the expected MNAR ",
                             "effect (sigma too high).")
                   ),
                   tags$div(
                     style = "background:#F5F7FA;border-left:4px solid #4A90D9;border-radius:4px;padding:10px 14px;margin-top:10px;",
                     tags$p(strong("If the indicators look bad : "),
                            "click \u00ab Re-run \u00bb to relaunch the method/sigma selection instead of ",
                            "continuing with unreliable results.")
                   )
          )
        )
      )
    )
  )
  
  server <- function(input, output, session) {
    
    output$imputation_summary <- renderPrint({
      df <- imputation_summary
      df[ , -1] <- lapply(df[ , -1], function(x) formatC(x, format = "e", digits = 2))
      
      print(df, row.names = FALSE)
    })
    
    output$validation_results <- renderPrint({ validation_results$summary })
    
    output$flagged_vars <- renderTable({ subset(validation_results$flagged_vars, is_flag==1) })
    
    output$distribution_plot <- renderPlot({ plot_imputation_distribution(original_data, imputed_data) })
    
    observeEvent(input$continue, { stopApp(TRUE) })
    observeEvent(input$re_run, { stopApp(FALSE) })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Function to calculate and filter features based on Coefficient of Variation (QC only)
#'
#' @param input_data Dataframe or matrix with normalized data : Features x Samples
#' @param qc_names Vector of QC sample names
#' @param metadata_table Dataframe with sample metadata (must contain 'Batch' column)
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder path to save results
#' @return List containing:
#'         - filtered_data: Dataframe with features passing CV threshold
#'         - cv_values: Dataframe with CV values for all features
#'         - cv_threshold: Selected CV threshold
#'         - non_normal_prop: Proportion of non-normal variables
#'         - use_robust_CV: Logical indicating if robust CV was used
#'         
#' @details The robust CV calculation uses MAD with constant = 1 (raw median absolute deviation)
#'          rather than the default 1.4826, as this provides a more appropriate measure
#'          for non-normal distributions commonly found in metabolomics data.
#'          For the permissive filter, the default CV threshold is set to 0.8 to filter noise and non reliable compounds,
#'          while the strict filter uses 0.3 to focus only on highly reproducible compounds.
#'          The choice between robust (MAD/median) and standard (SD/mean) CV is automatically suggested
#'          based on the proportion of non-normal variables (threshold: 10%).   

        
apply_exploratory_CV_filter <- function(input_data, qc_names, metadata_table, param_folder, data_folder) {
  
  # Normality test function (Shapiro-Wilk)
  
  normality_test <- function() {
    shapiro_results <- sapply(1:nrow(input_data %>% select(all_of(qc_names))),
                              function(i) {
                                x <- na.omit(as.numeric(input_data[i, qc_names]))
                                if(length(x) >= 5) shapiro.test(x)$p.value else NA
                              })
    
    non_normal_prop <- mean(shapiro_results <= 0.05, na.rm = TRUE)
    
    write_json(non_normal_prop, pretty = TRUE, auto_unbox = TRUE,
               path = file.path(param_folder, "2_Processing", "06_Permissive_CV_pre_LOESS", "Propor_non_norma_var_permissive_CV.json"))
    
    return(non_normal_prop)
  }
  
  # Function to select CV threshold
  
  get_CV_threshold_gui <- function(non_normal_prop) {
    
    # Automatic selection of the recommended default method
    
    if(non_normal_prop >= 0.15){
      selected_method <- "Robust CV (Median & MAD)"
    }else{
      selected_method <- "Standard CV (Mean-based)"
    }
    
    # Ui creation
    
    ui <- fluidPage(
      titlePanel("Select the exploratory CV threshold for QC features"),
      sidebarLayout(
        sidebarPanel(
          numericInput("CV_thresh", "Enter the maximum variation allowed :",
                       value = 0.3, min = 0, step = 0.1),
          
          radioButtons("selected_method", "Choosing a method for calculating the CV : ",
                       choices = c("Standard CV (Mean-based)", "Robust CV (Median & MAD)"),
                       selected = selected_method),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          
          tags$b("Objective :"),
          p("This filter aims to remove compounds with a high coefficient of variation (CV), which are likely to represent technical artefacts that should not be corrected using LOESS or normalization methods.
             The strictness of the filter can be adjusted depending on the desired balance between data retention and noise removal. A lenient setting will retain more variables but may include noisy features that are later corrected.  
             Overall, this step helps improve dataset quality by reducing variability due to artefacts. After normalization, an additional CV-based filtering step will also be available."),
          br(),
          tags$b("Coefficient of Variation"),
          br(),
          tags$ul(
            tags$li(
              tags$b("Standard CV (Mean-based) : "),
              "CV = sd(x) / mean(x). Sensitive to outliers."
            ),
            tags$li(
              tags$b("Robust CV (Median & MAD) : "),
              "rCV = MAD(x) / median(x). More robust to extreme values and skewed data."
            )
          ),
          br(),
          h4("Normality-based recommendation :"),
          verbatimTextOutput("normality_msg"),
        )
      )
    )
    
    server <- function(input, output, session) {
      
      output$normality_msg <- renderText({
        
        if (non_normal_prop >= 0.15) {
          paste0(
            round((1-non_normal_prop) * 100, 1), " % of variables are normally distributed.\n",
            "➡ Recommendation : Robust CV"
          )
        } else {
          paste0(
            round((1-non_normal_prop) * 100, 1), " % of variables are normally distributed.\n",
            "➡ Recommendation : Standard CV"
          )
        }
      })
      
      observeEvent(input$submit, {
        
        use_robust_CV <- input$selected_method == "Robust CV (Median & MAD)"
        
        stopApp(list(
          CV_threshold = input$CV_thresh,
          use_robust_CV = use_robust_CV
        ))
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  
  # Function to calculate CV (traditional or robust)
  
  calculate_CV <- function(input_data = input_data, use_robust_CV = FALSE) {
    
    batches <- unique(metadata_table$Batch)
    
    CV_list <- lapply(batches, function(b) {
      
      QC_in_batch <- intersect(metadata_table$SampleName[metadata_table$Batch == b],
                               colnames(input_data[, qc_names]))
      
      data_batch <- input_data %>%
        as.data.frame() %>%
        select(all_of(QC_in_batch))
      
      if (ncol(data_batch) >= 2) {
        
        if (use_robust_CV) {
          
          median_batch <- apply(data_batch, 1, median, na.rm = TRUE)
          MAD_batch <- apply(data_batch, 1, mad, na.rm = TRUE, constant = 1)
          CV_batch <- MAD_batch / median_batch
          
        } else {
          
          mean_batch <- rowMeans(data_batch, na.rm = TRUE)
          sd_batch <- apply(data_batch, 1, sd, na.rm = TRUE)
          CV_batch <- sd_batch / mean_batch
          
        }
        
      } else {
        CV_batch <- rep(NA, nrow(input_data))
      }
      return(CV_batch)
    })
    
    CV_matrix <- do.call(cbind, CV_list)
    CV_final <- rowMedians(CV_matrix, na.rm = TRUE)
    names(CV_final) <- rownames(CV_matrix)
    
    return(CV_final)
  }
  
  # Main function logic
  
  non_normal_prop <- normality_test()
  
  # Select CV threshold

  CV_threshold_list <- get_CV_threshold_gui(non_normal_prop)
  
  if (is.null(CV_threshold_list)) {
    message("CV threshold selection canceled by user.")
    return(NULL)
  }
  
  # Choose between traditional or robust CV
  
  CV_threshold <- CV_threshold_list$CV_threshold
  use_robust_CV <- CV_threshold_list$use_robust_CV
  
  # Calculate CV values
  
  CV_values <- calculate_CV(input_data, use_robust_CV = use_robust_CV)
  
  # Save parameters
  
  write_json(list(CV_threshold = CV_threshold, use_robust_CV = use_robust_CV),
             pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "2_Processing", "06_Permissive_CV_pre_LOESS", "Permissive_CV_params.json"))
  
  # Save CV values
  
  cv_df <- data.frame(
    var = names(CV_values),
    CV = CV_values
  )
  write.csv(cv_df, file = file.path(data_folder, "2_Processing", "06_Permissive_CV_pre_LOESS", "Permissive_CV_values.csv"),
            row.names = FALSE)
  
  # Filter data based on CV threshold
  
  filtered_data <- input_data %>%
    filter(rownames(.) %in% names(CV_values[CV_values <= CV_threshold]))
  
  # Save filtered data
  
  write.csv(filtered_data, file = file.path(data_folder, "2_Processing", "06_Permissive_CV_pre_LOESS", "output_step1_permissive_CV_criteria.csv"),
            row.names = TRUE)
  
  # Return results
  
  list(
    filtered_data = filtered_data,
    cv_values = cv_df,
    cv_threshold = CV_threshold,
    non_normal_prop = non_normal_prop,
    use_robust_CV = use_robust_CV
  )
}


#-------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------


apply_validation_CV_filter <- function(input_data, qc_names, metadata_table, param_folder, data_folder) {
  
  # Normality test function (Shapiro-Wilk)
  
  normality_test <- function() {
    shapiro_results <- sapply(1:nrow(input_data %>% select(all_of(qc_names))),
                              function(i) {
                                x <- na.omit(as.numeric(input_data[i, qc_names]))
                                if(length(x) >= 5) shapiro.test(x)$p.value else NA
                              })
    
    non_normal_prop <- mean(shapiro_results <= 0.05, na.rm = TRUE)
    
    write_json(non_normal_prop, pretty = TRUE, auto_unbox = TRUE,
               path = file.path(param_folder, "2_Processing", "09_Strict_CV", "Propor_non_norma_var_strict_CV.json"))
    
    return(non_normal_prop)
  }
  
  # Function to select CV threshold
  
  get_CV_threshold_gui <- function(non_normal_prop) {
    
    # Automatic selection of the recommended default method
    
    if(non_normal_prop >= 0.15){
      selected_method <- "Robust CV (Median & MAD)"
    }else{
      selected_method <- "Standard CV (Mean-based)"
    }
    
    # Ui creation
    
    ui <- fluidPage(
      titlePanel("Select the validation CV threshold for QC features"),
      sidebarLayout(
        sidebarPanel(
          numericInput("CV_thresh", "Enter the maximum variation allowed :",
                       value = 0.3, step = 0.1),
          
          radioButtons("selected_method", "Choosing a method for calculating the CV : ",
                       choices = c("Standard CV (Mean-based)", "Robust CV (Median & MAD)"),
                       selected = selected_method),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          
          tags$b("Objective :"),
          p("This stringent CV filter aims to retain only highly reproducible compounds by removing features with a coefficient of variation (CV) above a defined threshold (e.g., 30 %) in QC samples. Such high-variability features are more likely to reflect technical noise rather than true biological signal. Applying this filter improves data robustness and reliability for downstream analyses by focusing on stable and well-measured compounds."),
          br(),
          tags$b("Coefficient of Variation"),
          br(),
          tags$ul(
            tags$li(
              tags$b("Standard CV (Mean-based) : "),
              "CV = sd(x) / mean(x). Sensitive to outliers."
            ),
            tags$li(
              tags$b("Robust CV (Median & MAD) : "),
              "CV = MAD(x) / median(x). More robust to extreme values and skewed data."
            )
          ),
          br(),
          h4("Normality-based recommendation :"),
          verbatimTextOutput("normality_msg"),
        )
      )
    )
    
    server <- function(input, output, session) {
      
      output$normality_msg <- renderText({
        
        if (non_normal_prop >= 0.15) {
          paste0(
            round((1-non_normal_prop) * 100, 1), " % of variables are normally distributed.\n",
            "➡ Recommendation : Robust CV"
          )
        } else {
          paste0(
            round((1-non_normal_prop) * 100, 1), " % of variables are normally distributed.\n",
            "➡ Recommendation : Standard CV"
          )
        }
      })
      
      observeEvent(input$submit, {
        
        use_robust_CV <- input$selected_method == "Robust CV (Median & MAD)"
        
        stopApp(list(
          CV_threshold = input$CV_thresh,
          use_robust_CV = use_robust_CV
        ))
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  
  # Function to calculate CV (traditional or robust)
  
  calculate_CV <- function(input_data = input_data, use_robust_CV = FALSE) {
    
    batches <- unique(metadata_table$Batch)
    
    CV_list <- lapply(batches, function(b) {
      
      QC_in_batch <- intersect(metadata_table$SampleName[metadata_table$Batch == b],
                               colnames(input_data[, qc_names]))
      
      data_batch <- input_data %>%
        as.data.frame() %>%
        select(all_of(QC_in_batch))
      
      if (ncol(data_batch) >= 2) {
        
        if (use_robust_CV) {
          
          median_batch <- apply(data_batch, 1, median, na.rm = TRUE)
          MAD_batch <- apply(data_batch, 1, mad, na.rm = TRUE, constant = 1)
          CV_batch <- MAD_batch / median_batch
          
        } else {
          
          mean_batch <- rowMeans(data_batch, na.rm = TRUE)
          sd_batch <- apply(data_batch, 1, sd, na.rm = TRUE)
          CV_batch <- sd_batch / mean_batch
          
        }
        
      } else {
        CV_batch <- rep(NA, nrow(input_data))
      }
      return(CV_batch)
    })
    
    CV_matrix <- do.call(cbind, CV_list)
    CV_final <- rowMedians(CV_matrix, na.rm = TRUE)
    names(CV_final) <- rownames(CV_matrix)
    
    return(CV_final)
  }
  
  # Main function logic
  
  non_normal_prop <- normality_test()
  
  # Select CV threshold
  
  CV_threshold_list <- get_CV_threshold_gui(non_normal_prop)
  
  if (is.null(CV_threshold_list)) {
    message("CV threshold selection canceled by user.")
    return(NULL)
  }
  
  # Choose between traditional or robust CV
  
  CV_threshold <- CV_threshold_list$CV_threshold
  use_robust_CV <- CV_threshold_list$use_robust_CV
  
  # Calculate CV values
  
  CV_values <- calculate_CV(input_data, use_robust_CV = use_robust_CV)
  
  # Save parameters
  
  write_json(list(CV_threshold = CV_threshold, use_robust_CV = use_robust_CV),
             pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "2_Processing", "09_Strict_CV", "Strict_CV_params.json"))
  
  # Save CV values
  
  cv_df <- data.frame(
    var = names(CV_values),
    CV = CV_values
  )
  write.csv(cv_df, file = file.path(data_folder, "2_Processing", "09_Strict_CV", "Strict_CV_values.csv"),
            row.names = FALSE)
  
  # Filter data based on CV threshold
  
  filtered_data <- input_data %>%
    filter(rownames(.) %in% names(CV_values[CV_values <= CV_threshold]))
  
  # Save filtered data
  
  write.csv(filtered_data, file = file.path(data_folder, "2_Processing", "09_Strict_CV", "output_step1_strict_CV_criteria.csv"),
            row.names = TRUE)
  
  # Return results
  
  list(
    filtered_data = filtered_data,
    cv_values = cv_df,
    cv_threshold = CV_threshold,
    non_normal_prop = non_normal_prop,
    use_robust_CV = use_robust_CV
  )
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Function to perform LOESS drift correction on batch data
#'
#' @param input_data Dataframe or matrix : Features x Samples
#' @param metadata_table Dataframe with sample metadata (must contain 'SampleName', 'Batch' and 'OrderInjection' columns)
#' @param qc_names Vector of QC sample names
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder path to save corrected data
#' @param chart_folder Folder path to save QC plot
#'
#' @return List containing:
#'         - adjusted_data   : Dataframe with drift-corrected intensities (Features x Samples)
#'         - drift_matrix    : Matrix of estimated drift values per feature per sample
#'         - parameters      : List of LOESS parameters used (span_mode, span_fixed, degree, n_span_grid, epsilon)
#'         - rcv_before      : Median per-feature rCV across QC samples before correction
#'         - rcv_after       : Median per-feature rCV across QC samples after correction
#'         - skipped_batches : Character vector of batch IDs skipped due to < 3 QC samples
#'         - n_zeroed        : Number of values forced to 0 after log back-conversion
#'         - span_log        : Named list of chosen span per feature / batch (diagnostics)



# -----------------------------------------------------------------------------
# MAIN PIPELINE
# -----------------------------------------------------------------------------

apply_loess_drift_correction <- function(input_data, metadata_table, qc_names,
                                         param_folder, data_folder, chart_folder) {
  
  # User decision
  
  run_loess <- run_loess_decision_gui(input_data, metadata_table, qc_names)
  
  if (is.null(run_loess) || !isTRUE(run_loess)) {
    message("LOESS correction cancelled by user.")
    return(list(
      adjusted_data   = input_data,
      drift_matrix    = matrix(0, nrow = nrow(input_data), ncol = ncol(input_data)),
      parameters      = NULL,
      rcv_before      = NA_real_,
      rcv_after       = NA_real_,
      skipped_batches = character(0),
      n_zeroed        = 0L
    ))
  }
  
  # Validation loop with interactive parameters
  
  repeat {
    validation <- run_loess_validation_gui(input_data, metadata_table, qc_names)
    if (isTRUE(validation$is_accepted)) break
  }
  
  final_result <- validation$loess_result
  
  
  # Parameters + rCV -> JSON
  
  write_json(
    list(
      parameters                     = final_result$parameters,
      median_rCV_before_per_feature  = final_result$rcv_before,
      median_rCV_after_per_feature   = final_result$rcv_after,
      skipped_batches_less_than_3_QC = final_result$skipped_batches,
      n_values_forced_to_zero        = final_result$n_zeroed
    ),
    path       = file.path(param_folder, "2_Processing", "07_Intra_Batch_Drift_Correction", "LOESS_param.json"),
    pretty     = TRUE,
    auto_unbox = TRUE
  )
  
  # Corrected data -> CSV
  
  write.csv(
    final_result$data,
    file      = file.path(data_folder, "2_Processing", "07_Intra_Batch_Drift_Correction", "output_step1_adjusted_loess.csv"),
    row.names = TRUE
  )
  
  # QC plot -> PDF
  
  ggsave(
    filename = file.path(chart_folder, "2_Processing", "07_Intra_Batch_Drift_Correction", "LOESS_compar_plot_QC.pdf"),
    plot     = validation$qc_global_plot,
    width    = 20,
    height   = 10,
    bg       = "white"
  )
  
  # Return
  
  list(
    adjusted_data   = final_result$data,
    drift_matrix    = final_result$drift,
    parameters      = final_result$parameters,
    rcv_before      = final_result$rcv_before,
    rcv_after       = final_result$rcv_after,
    skipped_batches = final_result$skipped_batches,
    n_zeroed        = final_result$n_zeroed,
    span_log        = final_result$span_log
  )
}

# -----------------------------------------------------------------------------
# PURE FUNCTION — QC summary plot
# -----------------------------------------------------------------------------

build_qc_plot <- function(original_data, adjusted_data, metadata, qc_names, epsilon) {
  
  qc_valid <- intersect(colnames(original_data), qc_names)
  
  inj_all  <- setNames(
    metadata$OrderInjection[match(colnames(original_data), metadata$SampleName)],
    colnames(original_data)
  )
  
  sum_before <- colSums(original_data[, qc_valid, drop = FALSE], na.rm = TRUE)
  sum_after  <- colSums(adjusted_data[, qc_valid, drop = FALSE], na.rm = TRUE)
  inj_qc     <- inj_all[qc_valid]
  
  df_qc <- data.frame(
    Injection = inj_qc,
    Before    = log10(sum_before + epsilon),
    After     = log10(sum_after  + epsilon)
  ) %>%
    pivot_longer(cols      = c(Before, After),
                 names_to  = "Step",
                 values_to = "LogSum")
  
  lm_before <- lm(LogSum ~ Injection, data = df_qc[df_qc$Step == "Before", ])
  lm_after  <- lm(LogSum ~ Injection, data = df_qc[df_qc$Step == "After",  ])
  
  rcv_before <- mad(sum_before, constant = 1, na.rm = TRUE) /
    median(sum_before, na.rm = TRUE) * 100
  rcv_after  <- mad(sum_after, constant = 1, na.rm = TRUE) /
    median(sum_after, na.rm = TRUE) * 100
  
  annotation <- paste0(
    sprintf("Before: y = %.1ex + %.2f", coef(lm_before)[2], coef(lm_before)[1]),
    sprintf("\nAfter:  y = %.1ex + %.2f", coef(lm_after)[2],  coef(lm_after)[1]),
    sprintf("\nrCV before: %.2f %%", rcv_before),
    sprintf("\nrCV after:  %.2f %%", rcv_after)
  )
  
  ggplot(df_qc, aes(x = Injection, y = LogSum, color = Step)) +
    geom_point(size = 3) +
    geom_smooth(method = "lm", se = FALSE) +
    scale_color_manual(values = c("Before" = "salmon", "After" = "green3")) +
    annotate("text",
             x     = max(inj_qc) * 0.75,
             y     = max(df_qc$LogSum, na.rm = TRUE),
             label = annotation,
             hjust = 0, vjust = 1, size = 3.5, color = "grey30") +
    labs(title = "QC — Sum of intensities before / after LOESS",
         x     = "Injection order",
         y     = "log10(Sum of intensities)",
         color = NULL) +
    theme_minimal() +
    theme(plot.title = element_text(hjust = 0.5),
          legend.position = "bottom")
}

# -----------------------------------------------------------------------------
# PURE FUNCTION — Feature-level drift plot
# -----------------------------------------------------------------------------

build_feature_plot <- function(original_data, adjusted_data, drift_matrix,
                               feature_idx, metadata, qc_names, epsilon) {
  
  qc_valid     <- intersect(colnames(original_data), qc_names)
  inj_all      <- setNames(
    metadata$OrderInjection[match(colnames(original_data), metadata$SampleName)],
    colnames(original_data)
  )
  feature_name <- rownames(original_data)[feature_idx]
  
  colors <- c(
    "Bio - before"    = "salmon",
    "Bio - after"     = "skyblue",
    "QC - before"     = "brown",
    "QC - after"      = "green3",
    "Estimated drift" = "black"
  )
  
  shapes <- c(
    "Bio - before"    = 21,
    "Bio - after"     = 21,
    "QC - before"     = 24,
    "QC - after"      = 24,
    "Estimated drift" = NA
  )
  
  legend_order <- c(
    "Bio - before",
    "Bio - after",
    "QC - before",
    "QC - after",
    "Estimated drift"
  )
  
  
  df <- data.frame(
    Sample    = colnames(original_data),
    Before    = as.numeric(original_data[feature_idx, ]),
    After     = as.numeric(adjusted_data[feature_idx, ]),
    Drift     = as.numeric(drift_matrix[feature_idx, ]),
    Injection = inj_all[colnames(original_data)]
  ) %>%
    mutate(Type = ifelse(Sample %in% qc_valid, "QC", "Bio")) %>%
    pivot_longer(cols      = c(Before, After),
                 names_to  = "Condition",
                 values_to = "Intensity") %>%
    mutate(Group = paste(Type, "-", tolower(Condition)))
  
  
  df_drift <- df %>%
    distinct(Sample, Injection, Drift) %>%
    arrange(Injection)
  
  # Plot
  
  ggplot(df, aes(x     = Injection,
                 y     = log10(Intensity + epsilon),
                 color = Group,
                 shape = Group)) +
    
    geom_point(aes(fill = after_scale(color)), size = 3, alpha = 0.8) +
    geom_line(data        = df_drift,
              mapping     = aes(x = Injection, y = log10(Drift + epsilon),
                                color = "Estimated drift"),
              inherit.aes = FALSE,
              linewidth   = 1) +
    scale_color_manual(values = colors, breaks = legend_order) +
    scale_shape_manual(values = shapes, breaks = legend_order) +
    labs(title = paste("Feature :", feature_name),
         x     = "Injection order",
         y     = "log10(Intensity)",
         color = NULL,
         shape = NULL) +
    theme_minimal() +
    theme(plot.title = element_text(hjust = 0.5),
          legend.position = "bottom") +
    guides(
      color = guide_legend(override.aes = list(
        shape = unname(shapes[legend_order])
      )),
      shape = "none"
    )
}

# -----------------------------------------------------------------------------
# PURE FUNCTION — LOESS correction
# -----------------------------------------------------------------------------

perform_loess_correction <- function(data,
                                     metadata,
                                     qc_names,
                                     span        = NULL,   # NULL  -> LOOCV per feature /// numeric -> fixed span (GUI mode)
                                     degree      = 1,
                                     n_span_grid = 12L) {  # resolution of LOOCV grid
  
  # Constants
  
  EPSILON     <- 1e-9
  AUTO_SPAN   <- is.null(span)
  n_span_grid <- min(n_span_grid, 12L)
  
  # Pre-computation — log transform once for all features
  
  data_lin        <- as.matrix(data)
  mode(data_lin)  <- "numeric"
  data_log        <- log10(data_lin + EPSILON)
  
  # Output containers
  
  adjusted        <- data_lin
  drift_matrix    <- data_lin
  skipped_batches <- character(0)
  n_zeroed_total  <- 0L
  span_log        <- list()
  
  qc_names_global <- intersect(colnames(data), qc_names)
  
  # rCV — median of per-feature (MAD / median) across QC samples
  
  compute_rcv <- function(mat) {
    
    qc_cols <- intersect(colnames(mat), qc_names_global)
    if (length(qc_cols) == 0L) return(NA_real_)
    
    mat_qc <- mat[, qc_cols, drop = FALSE]
    
    med_v <- matrixStats::rowMedians(mat_qc, na.rm = TRUE)
    mad_v <- matrixStats::rowMads(mat_qc, constant = 1, na.rm = TRUE)
    
    safe_med <- ifelse(med_v == 0, NA_real_, med_v)
    median(mad_v / safe_med, na.rm = TRUE)
  }
  
  # ===========================================================================
  # Processes ONE feature within ONE batch
  # ===========================================================================
  
  correct_one_feature <- function(f, data_log, samples_in_batch, inj_order,
                                  qc_batch, span, AUTO_SPAN,
                                  degree, n_span_grid, EPSILON) {
    
    # Extract pre-computed log values for this feature
    
    x_log <- data_log[f, samples_in_batch]
    
    # QC samples with non-missing intensity
    
    qc_ok <- qc_batch[!is.na(x_log[qc_batch])]
    if (length(qc_ok) < 3L) return(NULL)
    
    n_qc     <- length(qc_ok)
    df_loess <- data.frame(
      y   = x_log[qc_ok],
      inj = inj_order[qc_ok]
    )
    
    # ── Span selection ──────────────────────────────────────────────
    
    if (!AUTO_SPAN) {
      
      optimal_span <- span   # user-supplied fixed span
      
    } else {
      
      # LOOCV on log-space QC intensities
      # Grid : n_span_grid values in [(degree + 1) / n_qc, 1]
      # From Dunn et al. 2011, Nature
      
      span_min  <- (degree + 1) / n_qc
      span_grid <- seq(span_min, 1, length.out = n_span_grid)
      loocv_mse <- numeric(length(span_grid))
      
      for (s_idx in seq_along(span_grid)) {
        
        s      <- span_grid[s_idx]
        sq_err <- numeric(n_qc)
        
        for (i in seq_len(n_qc)) {
          
          fit_loo <- tryCatch(
            loess(y ~ inj,
                  data    = df_loess[-i, , drop = FALSE],
                  span    = s,
                  degree  = degree,
                  family  = "gaussian",
                  control = loess.control(surface    = "direct",
                                          statistics = "approximate")),
            error = function(e) NULL
          )
          
          if (is.null(fit_loo)) { sq_err[i] <- NA_real_; next }
          
          pred_i <- tryCatch(
            predict(fit_loo, newdata = data.frame(inj = df_loess$inj[i])),
            error = function(e) NA_real_
          )
          
          sq_err[i] <- (df_loess$y[i] - pred_i)^2
        }
        
        loocv_mse[s_idx] <- mean(sq_err, na.rm = TRUE)
      }
      
      # Pick span with minimum LOOCV MSE ; fall back to 0.75 if all NA
      
      if (all(is.na(loocv_mse))) {
        optimal_span <- 0.75
      } else {
        optimal_span <- span_grid[which.min(loocv_mse)]
      }
    }
    
    # ── LOESS fit (single pass) ────────────────────────────────────
    
    loess_fit <- tryCatch(
      loess(y ~ inj,
            data    = df_loess,
            span    = optimal_span,
            degree  = degree,
            family  = "gaussian",
            control = loess.control(surface    = "direct",
                                    statistics = "exact")),
      error = function(e) NULL
    )
    
    if (is.null(loess_fit)) return(NULL)
    
    # ── Drift prediction + correction ───────────────────────────────
    
    drift_log <- tryCatch(
      predict(loess_fit, newdata = data.frame(inj = inj_order)),
      error = function(e) rep(NA_real_, length(inj_order))
    )
    
    if (anyNA(drift_log)) return(NULL)
    
    # Correct : subtract drift, anchor to QC median
    
    qc_median_log <- median(x_log[qc_ok], na.rm = TRUE)
    x_adj_log     <- x_log - drift_log + qc_median_log
    
    # Back-transform log -> linear ; guard against floating-point negatives
    
    x_adj_lin <- pmax(10^x_adj_log - EPSILON, 0)
    n_neg     <- sum(x_adj_lin == 0, na.rm = TRUE)
    
    # Return bundle for this feature
    
    list(
      adj_vals    = x_adj_lin,
      drift_vals  = pmax(10^drift_log - EPSILON, 0),
      n_zeroed    = n_neg,
      chosen_span = optimal_span
    )
  }
  
  # ===========================================================================
  # Main loop — iterate over batches, then features
  # ===========================================================================
  
  batches   <- unique(metadata$Batch)
  n_batches <- length(batches)
  
  for (b_idx in seq_along(batches)) {
    
    b <- batches[b_idx]
    
    samples_in_batch <- intersect(
      metadata$SampleName[metadata$Batch == b],
      colnames(data_lin)
    )
    if (length(samples_in_batch) == 0L) next
    
    inj_order <- setNames(
      metadata$OrderInjection[match(samples_in_batch, metadata$SampleName)],
      samples_in_batch
    )
    
    qc_batch <- intersect(samples_in_batch, qc_names_global)
    
    # Skip batch if fewer than 3 QC samples
    
    if (length(qc_batch) < 3L) {
      skipped_batches <- c(skipped_batches, as.character(b))
      warning(sprintf(
        "Batch '%s' skipped : only %d QC sample(s) available (minimum 3 required).",
        b, length(qc_batch)
      ))
      next
    }
    
    if (AUTO_SPAN) {
      message(sprintf(
        "[LOESS] Batch '%s' — running LOOCV span selection on %d features x %d QC points...",
        b, nrow(data_lin), length(qc_batch)
      ))
    }
    
    # incProgress : Reporting progress
    
    incProgress(1 / n_batches, detail = paste("Batch:", b))
    
    # Process all features sequentially
    
    for (f in seq_len(nrow(data_lin))) {
      
      res <- correct_one_feature(
        f                = f,
        data_log         = data_log,
        samples_in_batch = samples_in_batch,
        inj_order        = inj_order,
        qc_batch         = qc_batch,
        span             = span,
        AUTO_SPAN        = AUTO_SPAN,
        degree           = degree,
        n_span_grid      = n_span_grid,
        EPSILON          = EPSILON
      )
      
      if (is.null(res)) next
      
      adjusted[f, samples_in_batch] <- res$adj_vals
      drift_matrix[f, samples_in_batch] <- res$drift_vals
      n_zeroed_total <- n_zeroed_total + res$n_zeroed
      
      # Store chosen span for diagnostics
      
      span_log[[paste(rownames(data_lin)[f], b, sep = "|")]] <- res$chosen_span
    }
  }
  
  if (n_zeroed_total > 0L) {
    message(sprintf(
      "[LOESS] %d value(s) forced to 0 after back-conversion (log artefact on near-absent features).",
      n_zeroed_total
    ))
  }
  
  # Return
  
  list(
    data            = as.data.frame(adjusted),
    drift           = as.data.frame(drift_matrix),
    parameters      = list(
      span_mode   = if (AUTO_SPAN) "LOOCV_per_feature" else "fixed",
      span_fixed  = span,
      degree      = degree,
      n_span_grid = n_span_grid,
      epsilon     = EPSILON
    ),
    rcv_before      = compute_rcv(data_lin),
    rcv_after       = compute_rcv(adjusted),
    skipped_batches = skipped_batches,
    n_zeroed        = n_zeroed_total,
    span_log        = span_log
  )
}

# -----------------------------------------------------------------------------
# GUI 1 — Initial decision (run LOESS or not)
# -----------------------------------------------------------------------------

run_loess_decision_gui <- function(input_data, metadata_table, qc_names) {
  
  EPSILON  <- 1e-9
  qc_valid <- intersect(colnames(input_data), qc_names)
  inj_all  <- setNames(
    metadata_table$OrderInjection[match(colnames(input_data), metadata_table$SampleName)],
    colnames(input_data)
  )
  
  sum_qc <- colSums(input_data[, qc_valid, drop = FALSE], na.rm = TRUE)
  inj_qc <- inj_all[qc_valid]
  
  df_qc <- data.frame(
    Injection = inj_qc,
    LogSum    = log10(sum_qc + EPSILON)
  )
  
  # For each batch, count how many QC samples are present
  
  qc_per_batch <- do.call(rbind, lapply(unique(metadata_table$Batch), function(b) {
    
    samples_in_batch <- metadata_table$SampleName[metadata_table$Batch == b]
    n_qc             <- sum(samples_in_batch %in% qc_valid)
    
    data.frame(
      Batch   = as.character(b),
      N_QC    = n_qc,
      Status  = dplyr::case_when(
        n_qc < 3  ~ "ERROR — will be skipped (< 3 QC)",
        n_qc < 8  ~ "WARNING — low QC count (> 8 recommended)",
        TRUE       ~ "OK"
      )
    )
  }))
  
  # Build plot and stats
  
  fit_lm <- lm(LogSum ~ Injection, data = df_qc)
  lm_eq  <- sprintf("Linear regression : y = %.4f x + %.4f",
                    coef(fit_lm)[2], coef(fit_lm)[1])
  rcv    <- mad(sum_qc, constant = 1, na.rm = TRUE) /
    median(sum_qc, na.rm = TRUE) * 100
  
  plot_decision <- ggplot(df_qc, aes(x = Injection, y = LogSum)) +
    geom_point(color = "salmon", size = 3) +
    geom_smooth(method = "lm", se = FALSE, color = "firebrick") +
    labs(title = "QC samples — before correction",
         x     = "Injection order",
         y     = "log10(Sum of intensities)") +
    coord_cartesian(
      ylim = c(min(df_qc$LogSum, na.rm = TRUE) - 1,
               max(df_qc$LogSum, na.rm = TRUE) + 1)
    ) +
    theme_minimal() +
    theme(plot.title = element_text(hjust = 0.5))
  
  # Shiny UI
  
  ui <- fluidPage(
    titlePanel("QC Overview — LOESS Decision"),
    sidebarLayout(
      sidebarPanel(
        checkboxInput("run_loess", "Do you want to apply LOESS correction ?", value = TRUE),
        actionButton("submit", "Confirm", class = "btn-success"),
        hr(),
        h4("rCV (sum of QC intensities):"),
        textOutput("rcv_text"),
        br(),
        helpText("A high rCV or a non-zero slope indicate significant drift."),
        hr(),
        
        # QC per batch summary
        
        h4("QC samples per batch:"),
        tableOutput("qc_batch_table"),
        helpText(tags$p(
          tags$span("\u26a0", style = "color:#ffc107;"),
          " < 8 QC per batch : non-linear correction may be unreliable ",
          tags$em("(Broadhurst et al. 2018, Metabolomics)"), "."
        ),
        tags$p(
          tags$span("\u2716", style = "color:#dc3545;"),
          " < 3 QC per batch : batch will be skipped entirely."
        ))
      ),
      mainPanel(
        plotOutput("qc_plot", height = "400px"),
        verbatimTextOutput("lm_formula")
      )
    )
  )
  
  # Shiny server — display only, no computation
  
  server <- function(input, output, session) {
    output$qc_plot    <- renderPlot({ plot_decision })
    output$lm_formula <- renderPrint({ cat(lm_eq) })
    output$rcv_text   <- renderText({ sprintf("%.2f %%", rcv) })
    
    output$qc_batch_table <- renderTable({
      qc_per_batch
    },
    striped = TRUE,
    hover   = TRUE,
    colnames = TRUE, digits = 0)
    
    observeEvent(input$submit, stopApp(input$run_loess))
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}

# -----------------------------------------------------------------------------
# GUI 2 — Parameters adjustment and validation
# -----------------------------------------------------------------------------

run_loess_validation_gui <- function(input_data, metadata_table, qc_names) {
  
  EPSILON  <- 1e-9
  qc_valid <- intersect(colnames(input_data), qc_names)
  
  # Shiny UI
  
  ui <- fluidPage(
    titlePanel("LOESS Correction Validation"),
    sidebarLayout(
      sidebarPanel(
        
        # LOESS parameters
        
        h4("LOESS parameters"),
        radioButtons("span_mode", "Span selection:",
                     choices  = c("Auto — LOOCV per feature (recommended)" = "auto",
                                  "Manual — fixed span"                    = "fixed"),
                     selected = "auto"),
        numericInput("degree", "Degree of the polynomials to be used :",
                     value = 1, min = 1, max = 2, step = 1),
        conditionalPanel(
          condition = "input.span_mode == 'fixed'",
          sliderInput("span", "Span:",
                      min = 0.2, max = 1.0, value = 0.75, step = 0.05)
        ),
        helpText(tags$p("Auto : optimal span selected by LOOCV for each feature ", tags$em("(Dunn et al. 2011, Nature)"),
                       ".")),
        br(),
        
        actionButton("run_loess", "Run / Recalculate", class = "btn-primary"),
        hr(),
        
        # Feature navigation
        
        actionButton("random_feature", "Random feature"),
        br(), br(),
        
        # Skipped batch alerts
        
        uiOutput("batch_warnings"),
        hr(),
        
        # rCV summary
        
        h4("Median rCV per feature"),
        tableOutput("rcv_table"),
        hr(),
        
        # Final decision
        
        p(strong("Are the corrections acceptable ?")),
        actionButton("accept", "Accept", class = "btn-success"),
        actionButton("reject", "Modify parameters and recalculate", class = "btn-warning")
      ),
      mainPanel(
        plotOutput("feature_plot",   height = "450px"),
        br(),
        plotOutput("qc_global_plot", height = "400px")
      )
    )
  )
  
  # Shiny server — calls pure functions, no logic duplication
  
  server <- function(input, output, session) {
    
    # Recompute correction only on explicit user action (Run / Recalculate)
    
    loess_result <- eventReactive(input$run_loess, {
      
      current_span <- if (input$span_mode == "fixed") input$span else NULL
      
      withProgress(message = "Calculating LOESS...", value = 0, {
        perform_loess_correction(
          data        = input_data,
          metadata    = metadata_table,
          qc_names    = qc_valid,
          span        = current_span,
          degree      = input$degree,
          n_span_grid = 12L
        )
      })
    })
    
    # Rebuild QC plot whenever correction changes
    
    qc_plot <- reactive({
      req(loess_result())
      build_qc_plot(
        original_data = input_data,
        adjusted_data = loess_result()$data,
        metadata      = metadata_table,
        qc_names      = qc_valid,
        epsilon       = EPSILON
      )
    })
    
    # Random feature selection
    
    selected_feature <- reactiveVal(sample(x = seq_len(nrow(input_data)), size = 1L))
    observeEvent(input$random_feature,
                 selected_feature(sample(x = seq_len(nrow(input_data)), size = 1L)))
    
    # Rebuild feature plot whenever correction or selected feature changes
    
    feature_plot <- reactive({
      req(loess_result())
      build_feature_plot(
        original_data = input_data,
        adjusted_data = loess_result()$data,
        drift_matrix  = loess_result()$drift,
        feature_idx   = selected_feature(),
        metadata      = metadata_table,
        qc_names      = qc_valid,
        epsilon       = EPSILON
      )
    })
    
    # Outputs — display only
    
    output$feature_plot   <- renderPlot({ feature_plot() })
    output$qc_global_plot <- renderPlot({ qc_plot() })
    
    output$rcv_table <- renderTable({
      req(loess_result())
      res <- loess_result()
      data.frame(
        Step                    = c("Before", "After"),
        "Median_rCV" = sprintf("%.1f %%", c(res$rcv_before, res$rcv_after) * 100)
      )
    }, striped = TRUE, hover = TRUE)
    
    output$batch_warnings <- renderUI({
      req(loess_result())
      skipped <- loess_result()$skipped_batches
      if (length(skipped) == 0L) return(NULL)
      div(
        style = "background:#fff3cd;border-left:4px solid #ffc107;padding:8px;border-radius:4px;",
        icon("triangle-exclamation"),
        strong(" Uncorrected batches (< 3 QC):"),
        tags$ul(lapply(skipped, tags$li))
      )
    })
    
    # Decision
    
    observeEvent(input$accept, {
      stopApp(list(
        is_accepted    = TRUE,
        loess_result   = loess_result(),
        qc_global_plot = qc_plot()
      ))
    })
    
    observeEvent(input$reject, {
      showNotification(
        "Adjust the parameters and check the plots until you are satisfied.",
        type     = "warning",
        duration = 4
      )
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Simple Shiny App to ask about TIC normalization
#' @return Logical (TRUE if TIC should be performed, FALSE otherwise)
#' 

ask_about_TIC_normalization <- function() {
  
  ui <- fluidPage(
    titlePanel("Normalization Method Selection"),
    
    sidebarLayout(
      sidebarPanel(
        radioButtons(
          "tic_choice",
          "Do you want to perform TIC normalization ?",
          choices = c(
            "Yes, I will perform TIC normalization" = TRUE,
            "No, I will use another method" = FALSE
          ),
          
          selected = FALSE  
        ),
        
        actionButton("submit", "Submit", class = "btn-success")
      ),
      
      mainPanel(
        h4(tags$b("About TIC Normalization :")),
        tags$ul(
          tags$li("Scales each sample by its total signal (TIC / total peak area)."),
          tags$li("Useful to reduce global technical variation related to dilution, loading, or instrument response."),
          tags$li("Warning : this is a sum-constraint normalization, so it introduces compositional effects and the results are relative rather than absolute.")
        ),
        hr(),
        
        h4(tags$b("Other Normalization Methods :")),
        
        tags$ul(
          tags$li(
            tags$b("PQN (Probabilistic Quotient Normalization) :"),
            tags$ul(
              tags$li("Estimates a sample-specific dilution factor by comparing each sample to a reference spectrum, often the median spectrum of QC (implemented) or samples themselves."),
              tags$li("Robust to a few highly abundant metabolites and commonly used to correct dilution-related variability.")
            )
          ),
          br(),
          
          tags$li(
            tags$b("BRDG (Bridge Sample Normalization) :"),
            tags$ul(
              tags$li("Uses one or more bridge/reference samples measured across batches to put batches on a common scale."),
              tags$li("Useful for harmonizing data when the study is split across analytical batches or acquisition waves."),
              tags$li("Particularly helpful when a common reference sample is available throughout the run (QC in general)."),
              tags$li("Warning : the bridge sample must be representative and consistently measured ; otherwise it can introduce bias.")
            )
          )
        )
      )
    )
  )
  
  server <- function(input, output, session) {
    observeEvent(input$submit, {
      stopApp(input$tic_choice)
    })
    
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}



########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#----------------------------------       Normalization Methods Functions



#' Probabilistic Quotient Normalization (PQN)
#'
#' @param input_data Matrix or dataframe : Features * Samples
#' @param qc_names Vector of QC sample names
#' @return Normalized data matrix
#' 

normalize_pqn <- function(input_data, qc_names) {
  
  # Create reference spectrum from QCs
  
  ref_spectra <- apply(input_data[, qc_names, drop = FALSE],
                       1,
                       median,
                       na.rm = TRUE)
  
  # Calculate normalization factors
  
  coeff_matrix <- sweep(input_data,
                        1,
                        ref_spectra,
                        FUN = "/")
  
  pqn_factors <- apply(coeff_matrix,
                       2,
                       median,
                       na.rm = TRUE)
  
  # Apply normalization
  
  normalized_data <- sweep(input_data,
                           2,
                           pqn_factors,
                           FUN = "/")
  
  return(normalized_data)
}



#------------------------------------------------------------------------------------------------------------



#' Total Ion Chromatogram (TIC) Normalization
#'
#' @param input_data Matrix or dataframe : Features * Samples
#' @return Normalized data matrix
#' 

normalize_tic <- function(input_data) {
  
  # Calculate TIC for each sample
  
  sample_TIC <- colSums(input_data, na.rm = TRUE)
  
  # Apply normalization
  
  normalized_data <- sweep(input_data,
                           2,
                           sample_TIC,
                           FUN = "/")
  
  return(normalized_data)
}



#------------------------------------------------------------------------------------------------------------



#' Bridge Normalization (batch-specific)
#'
#' @param input_data Matrix or dataframe : Features * Samples
#' @param metadata_table Dataframe with sample metadata (must contain 'Batch' column)
#' @param qc_names Vector of QC sample names
#' @return Normalized data matrix
#' 


normalize_bridge <- function(input_data, metadata_table, qc_names) {
  
  normalized_data <- input_data
  
  # Loop through batches
  
  for(b in unique(metadata_table$Batch)) {
    
    samples_in_batch <- intersect(
      metadata_table$SampleName[metadata_table$Batch == b],
      colnames(input_data)
    )
    
    qc_batch <- intersect(samples_in_batch, qc_names)
    
    if(length(qc_batch) > 3) {
      med_qc_batch <- apply(input_data[, qc_batch, drop = FALSE],
                            1,
                            median,
                            na.rm = TRUE)
      
      normalized_data[, samples_in_batch] <- sweep(
        input_data[, samples_in_batch, drop = FALSE],
        1,
        med_qc_batch,
        FUN = "/"
      )
    }
  }
  
  return(normalized_data)
}



#----------------------------------       Main Function


#' Main normalization function
#'
#' @param input_data Matrix or dataframe : Features * Samples
#' @param metadata_table Dataframe with sample metadata
#' @param qc_names Vector of QC sample names
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder path to save results
#' @param chart_folder Folder path to save charts
#' @return List containing normalized data and plots
#' 

perform_normalization <- function(input_data, metadata_table, qc_names,
                                  param_folder, data_folder, chart_folder, tic_decision) {
  
  # Method Selection
  
  select_normalization_method <- function() {
    
    ui <- fluidPage(
      titlePanel("Select Normalization Method"),
      sidebarLayout(
        sidebarPanel(
          radioButtons(
            "method",
            "Normalization Method :",
            choices = c(
              "PQN (Probabilistic Quotient Normalization)",
              "TIC (Total Ion Chromatogram)",
              "BRDG (Bridge Normalization)"
            ),
            selected = if(length(unique(metadata_table$Batch)) > 1) {
              "BRDG (Bridge Normalization)"
            }else if(tic_decision == TRUE){
              "TIC (Total Ion Chromatogram)"
            }else {
              "PQN (Probabilistic Quotient Normalization)"
            }
          ),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Method Recommendation"),
          verbatimTextOutput("recommendation")
        )
      )
    )
    
    server <- function(input, output, session) {
      
      output$recommendation <- renderText({
        if(length(unique(metadata_table$Batch)) > 1) {
          "Multi-batch → BRDG recommended"
        } else {
          "Single batch → PQN recommended"
        }
      })
      
      observeEvent(input$submit, {
        
        if(length(unique(metadata_table$Batch)) > 1 &&
           input$method != "BRDG (Bridge Normalization)") {
          showNotification("Multi-batch required Bridge Normalization.", type = "error")
          return() 
        }
        stopApp(input$method)
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  #----------------------------------------------------------------------------------------
  
  # rCV metrics function  
  
  compute_rCV <- function(data, qc_names) {
    qc_names <- intersect(colnames(data), qc_names)
    
    rCV <- function(x) {
      mad(x, constant = 1, na.rm = TRUE) / median(x, na.rm = TRUE)
    }
    
    apply(data[, qc_names, drop = FALSE], 1, rCV)
  }
  
  #----------------------------------------------------------------------------------------
  
  # Plot functions 
  
  plot_boxplot <- function(before, after, qc_names) {
    
    df <- data.frame(
      Sample = colnames(before),
      Before = colSums(before, na.rm = TRUE),
      After = colSums(after, na.rm = TRUE)
    ) %>%
      tidyr::pivot_longer(cols = c("Before", "After"),
                          names_to = "Condition",
                          values_to = "Sum") %>%
      dplyr::mutate(
        Condition = factor(Condition, levels = c("Before", "After")),
        Type = ifelse(Sample %in% qc_names, "QC", "Bio")
      )
    
    
    ggplot(df, aes(x = Type, y = log10(Sum), fill = Condition)) +
      
      geom_boxplot(
        position = position_dodge(width = 0.75), # Boxplot
        alpha = 0.4,              
        outlier.shape = NA
      ) +
      
      geom_jitter(                               # Points
        aes(color = Condition),
        position = position_jitterdodge(
          jitter.width = 0.15,
          dodge.width = 0.75
        ),
        size = 2,
        alpha = 0.8               
      ) +
      
      scale_fill_manual(values = c(
        "Before" = "salmon",
        "After"  = "green3"
      )) +
      
      scale_color_manual(values = c(
        "Before" = "red3",        
        "After"  = "darkgreen"
      )) +
      
      theme_minimal() +
      
      labs(
        y = "log10(Sum of intensities)",
        x = "",
      )
  }
  
  ###########
  
  plot_rCV <- function(before, after, qc_names, threshold = 0.3) {
    
    rcv_before <- compute_rCV(before, qc_names)
    rcv_after  <- compute_rCV(after, qc_names)
    
    df <- data.frame(
      Before = rcv_before,
      After = rcv_after
    )
    
    # Define quadrants
    
    df$quadrant <- with(df, ifelse(
      After < Before & After < threshold, "Improved & Acceptable",
      ifelse(After < Before & After >= threshold, "Improved & High CV",
             ifelse(After >= Before & After < threshold, "Degraded & Acceptable",
                    "Degraded & High CV"
             )
      )
    ))
    
    # Percentages
    
    quad_pct <- round(prop.table(table(df$quadrant)) * 100, 1)
    
    ggplot(df, aes(x = Before, y = After, color = quadrant)) +
      
      geom_point(alpha = 0.9) +
      
      # Diagonal
      
      geom_abline(slope = 1, intercept = 0, linetype = "dashed") +
      
      # QC thresholds
      
      geom_hline(yintercept = threshold, linetype = "dotted") +
      geom_vline(xintercept = threshold, linetype = "dotted") +
      
      scale_color_manual(values = c(
        "Improved & Acceptable" = "#2ECC71",
        "Improved & High CV" = "#F39C12",
        "Degraded & Acceptable" = "#3498DB",
        "Degraded & High CV" = "#E74C3C"
      )) +
      
      theme_minimal() +
      theme(plot.title = element_text(face = "bold", size = 14, hjust = 0.5)) +
      labs(
        title = paste0(paste(names(quad_pct), quad_pct, " %", collapse = " /// "), " \nQuadrant Treshold = ", threshold),
        x = "rCV Before",
        y = "rCV After",
        color = "Category"
      )
  }
  
  ############
  
  plot_rCV_hist <- function(before, after, qc_names) {
    
    rcv_before <- compute_rCV(before, qc_names)
    rcv_after  <- compute_rCV(after, qc_names)
    
    df <- data.frame(
      Before = rcv_before,
      After = rcv_after
    )
    
    # Long format
    
    df_long <- df %>% 
      pivot_longer(cols = c("Before", "After"),
                   names_to = "Condition",
                   values_to = "rCV") %>%
      mutate(Condition = factor(Condition, levels = c("Before", "After")))
    
    # Plot
    
    ggplot(df_long, aes(x = rCV, fill = Condition)) +
      geom_histogram(position = "identity", alpha = 0.5, bins = 30, color = "black") +
      scale_fill_manual(values = c("Before" = "salmon", "After" = "green3")) +
      theme_minimal(base_size = 14) +
      labs(
        x = "rCV",
        y = "Number of Features"
      ) +
      theme(
        legend.title = element_blank(),
        legend.position = "top"
      )
  }
  
  ############
  
  plot_qc_drift_global <- function(before, after, metadata, qc_names) {
    
    epsilon <- 1e-9
    
    inj <- metadata$OrderInjection[
      match(colnames(before), metadata$SampleName)
    ]
    names(inj) <- colnames(before)
    
    
    # Data
    
    
    df <- data.frame(
      Sample = colnames(before),
      Injection = inj,
      Before = log10(colSums(before, na.rm = TRUE) + epsilon),
      After  = log10(colSums(after, na.rm = TRUE) + epsilon)
    ) %>%
      tidyr::pivot_longer(cols = c("Before", "After"),
                          names_to = "Condition",
                          values_to = "Value") %>%
      dplyr::mutate(
        Condition = factor(Condition, levels = c("Before", "After")),
        Type = ifelse(Sample %in% qc_names, "QC", "Bio"),
        Group = paste(Type, Condition)
      )
    
    
    # Stats QC only
    
    
    df_qc <- df[df$Type == "QC", ]
    
    df_before_qc <- df_qc[df_qc$Condition == "Before", ]
    df_after_qc  <- df_qc[df_qc$Condition == "After", ]
    
    lm_before <- lm(Value ~ Injection, data = df_before_qc)
    lm_after  <- lm(Value ~ Injection, data = df_after_qc)
    
    eq_before <- paste0(
      "Before: y = ",
      formatC(coef(lm_before)[2], format = "e", digits = 1), " x + ",
      round(coef(lm_before)[1], 2)
    )
    
    eq_after <- paste0(
      "After: y = ",
      formatC(coef(lm_after)[2], format = "e", digits = 1), " x + ",
      round(coef(lm_after)[1], 2)
    )
    
    rCV_before <- 100 * mad(df_before_qc$Value, constant = 1, na.rm = TRUE) /
      median(df_before_qc$Value, na.rm = TRUE)
    
    rCV_after <- 100 * mad(df_after_qc$Value, constant = 1, na.rm = TRUE) /
      median(df_after_qc$Value, na.rm = TRUE)
    
    annotation_text <- paste0(
      eq_before, "\n",
      eq_after, "\n",
      "rCV QC Before (Sum of intensity) : ", round(rCV_before, 3), "%\n",
      "rCV QC After (Sum of intensity) : ", round(rCV_after, 3), "%"
    )
    
    # Color Palette
    
    color_map <- c(
      "QC Before" = "orange2",
      "QC After"  = "skyblue",
      "Bio Before" = "salmon",
      "Bio After"  = "green3"
    )
    
    # Plot
    
    ggplot(df, aes(x = Injection, y = Value)) +
      
      # BIO samples 
      
      geom_point(data = df[df$Type == "Bio", ],
                 aes(color = Group),
                 alpha = 0.4, size = 2) +
      
      # QC samples 
      
      geom_point(data = df[df$Type == "QC", ],
                 aes(color = Group),
                 size = 2.5) +
      
      # QC only
      
      geom_smooth(data = df_qc,
                  aes(color = Group),
                  method = "lm", se = FALSE, linewidth = 1.2) +
      
      scale_color_manual(values = color_map) +
      
      annotate(
        "text",
        x = max(df$Injection) * 0.4,
        y = max(df$Value),
        label = annotation_text,
        hjust = 0,
        vjust = 1,
        size = 4
      ) +
      
      theme_minimal() +
      labs(
        x = "Injection order",
        y = "log10(sum intensity)"
      )
  }
  
  
  #----------------------------------------------------------------------------------------
  
  # Main code  
  
  method <- select_normalization_method()
  
  if(is.null(method)) {
    message("Normalization canceled")
    return(NULL)
  }
  
  # Apply normalization
  
  normalized_data <- tryCatch({
    switch(method,
           "PQN (Probabilistic Quotient Normalization)" = normalize_pqn(input_data, qc_names),
           "TIC (Total Ion Chromatogram)" = normalize_tic(input_data),
           "BRDG (Bridge Normalization)" = normalize_bridge(input_data, metadata_table, qc_names))
  }, error = function(e) {
    message("Error: ", e$message)
    return(NULL)
  })
  
  if(is.null(normalized_data)) return(NULL)
  
  #----------------------------------------------------------------------------------------
  
  # Chart Creation  
  
  plots <- list()
  
  plots$boxplot <- plot_boxplot(input_data, normalized_data, qc_names)
  plots$rCV     <- plot_rCV(input_data, normalized_data, qc_names)
  plots$rCV_hist <- plot_rCV_hist(input_data, normalized_data, qc_names)
  
  if(method == "BRDG (Bridge Normalization)" || method == "PQN (Probabilistic Quotient Normalization)") {
    plots$qc_drift <- plot_qc_drift_global(input_data, normalized_data,
                                    metadata_table, qc_names)
  }
  
  # User Visualisation
  
  show_plots <- function(plots) {
    
    ui <- fluidPage(
      
      titlePanel("Normalization Quality Control Visualization"),
      
      sidebarLayout(
        sidebarPanel(
          actionButton("submit", "Continue", class = "btn-success")
        ),
        
        mainPanel(
          tabsetPanel(
            
            tabPanel("Box plot : Group Dispersion",
                     plotOutput("box", height = "80vh")),
            
            tabPanel("rCV Improvement (QC features)",
                     plotOutput("rcv", height = "80vh"),
                     p(
                       icon("circle-info"),
                       "The rCV (robust Coefficient of Variation) measures the analytical
            reproducibility of each feature across QC samples — the lower, the more
            stable the measurement. Each dot represents one feature ; points below
            the diagonal have an improved rCV after normalisation. The dotted line
            (threshold = 0.30) is the standard acceptability criterion : a good
            result shows a majority of points in the green quadrant and not degraded by the normalisation.",
                       style = "color: #6c757d; font-size: 12px; margin-top: 8px;"
                     )),
            
            tabPanel("rCV Distribution (QC features)",
                     plotOutput("rcv_hist", height = "80vh"),
                     p(
                       icon("circle-info"),
                       "Distribution of rCV values before (red) and after (green) normalisation.
            A leftward shift of the peak indicates a global improvement in
            reproducibility. Ideally, the large majority of features should
            fall below 0.30 after normalisation.",
                       style = "color: #6c757d; font-size: 12px; margin-top: 8px;"
                     )),
            
            tabPanel("Overview of the study + QC Drift",
                     plotOutput("qc", height = "80vh"))
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      # Boxplot
      
      output$box <- renderPlot({
        req(plots$boxplot)
        plots$boxplot
      })
      
      # rCV improvement
      
      output$rcv <- renderPlot({
        req(plots$rCV)
        plots$rCV
      })
      
      # rCV histogram
      
      output$rcv_hist <- renderPlot({
        req(plots$rCV_hist)
        plots$rCV_hist
      })
      
      # QC drift plot 
      
      output$qc <- renderPlot({
        if (!is.null(plots$qc_drift)) {
          plots$qc_drift
        } else {
          plot.new()
          text(0.5, 0.5, "No QC drift plot available", col = "gray")
        }
      })
      
      # Exit app
      
      observeEvent(input$submit, {
        stopApp(TRUE)
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  
  #----------------------------------------------------------------------------------------
  
  
  # Data, Parameters, Charts save
  
  if (method == "TIC (Total Ion Chromatogram)") {
    
    message("TIC normalization. Skipping Shiny review.")
    
    write_json(
      list(method = method),
      path = file.path(param_folder, "2_Processing", "08_Normalization", "Normalization_parameters.json"),
      pretty = TRUE, auto_unbox = TRUE
    )
    
    return(list(normalized_data = normalized_data,
                method = method))
  } else {
    
    accept <- show_plots(plots)
    
    if(!accept) {
      message("User rejected normalization")
      return(NULL)
    }
    
    write.csv(normalized_data,
              file = file.path(data_folder, "2_Processing", "08_Normalization", "output_step2_normalized.csv"),
              row.names = TRUE)
    
    ggsave(file.path(chart_folder, "2_Processing", "08_Normalization", "Boxplot.pdf"), plots$boxplot, 
           height = 9, width = 14)
    ggsave(file.path(chart_folder, "2_Processing", "08_Normalization", "rCV.pdf"), plots$rCV, 
           height = 9, width = 14)
    
    if(!is.null(plots$qc_drift)) {
      ggsave(file.path(chart_folder, "2_Processing", "08_Normalization", "QC_drift.pdf"), plots$qc_drift, 
             height = 9, width = 14)
    }
    
    write_json(
      list(method = method),
      path = file.path(param_folder, "2_Processing", "08_Normalization", "Normalization_parameters.json"),
      pretty = TRUE, auto_unbox = TRUE
    )
    
    return(list(
      normalized_data = normalized_data,
      plots = plots,
      method = method
    ))
    
  }
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Unified Data Transformation and Normality Analysis Function
#'
#' @param input_data Dataframe/matrix : Features x Samples
#' @param bio_names Vector of biological sample names
#' @param qc_names Vector of QC sample names
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder path to save results
#' @param chart_folder Folder path to save charts
#' @param epsilon Small value to avoid log(0) (default: 1e-9)
#' @param tic_decision Logical: TRUE for RCLR
#' @return List with transformed data and statistics
#' 

perform_data_transformation <- function(input_data, bio_names, qc_names, param_folder, data_folder, chart_folder,
                                                         epsilon = 1e-9, tic_decision = FALSE) {
  
  
  # Apply transformation based on user choice
  
  if (tic_decision == TRUE) {
    
    transformed_data <- vegan::decostand(input_data, method = "rclr", MARGIN = 2, logbase = 10, na.rm = TRUE, impute = TRUE)
    rownames(transformed_data) <- rownames(input_data)
    colnames(transformed_data) <- colnames(input_data)
    transformation_method <- "rCLR"
    
  } else {
    
    # Ask user about log10 transformation
    
    transformation_choice <- function() {
      ui <- fluidPage(
        titlePanel("Data Transformation"),
        sidebarLayout(
          sidebarPanel(
            actionButton("continue", "Continue with log10 transformation", class = "btn-success")
          ),
          mainPanel(
            h4("About log10 transformation :"),
            tags$ul(
              tags$li("Applies log10(x + ε) to all intensity values"),
              tags$li("ε (epsilon) =", epsilon, "to avoid log(0)"),
              tags$li("Helps stabilize variance and improve normality"),
              tags$li("Transforms multiplicative relationships into additive ones. 
                      Improves the performance of linear multivariate methods such as PCA and PLS by making covariance structures more reliable.")
            )
          )
        )
      )
      
      server <- function(input, output, session) {
        observeEvent(input$continue, { stopApp("log10") })
      }
      
      runApp(shinyApp(ui, server), launch.browser = TRUE)
    }
    
    choice <- transformation_choice()
    
    if (is.null(choice)) {
      message("Operation canceled by user.")
      return(NULL)
    }
    
    if (choice == "log10") {
      transformed_data <- log10(input_data + epsilon)
      transformation_method <- "log10"
    }
  }
  
  # Calculate normality statistics for BIO samples
  
  shapiro_results_BIO <- sapply(1:nrow(transformed_data %>% select(all_of(bio_names))),
                                function(i) {
                                  x <- na.omit(as.numeric(transformed_data[i, bio_names]))
                                  if(length(x) >= 5) shapiro.test(x)$p.value else NA
                                })
  
  shapiro_pvalues_adjusted_BIO <- p.adjust(shapiro_results_BIO, method = "fdr")
  non_normal_prop_BIO <- mean(shapiro_pvalues_adjusted_BIO <= 0.05, na.rm = TRUE)
  
  write_json(non_normal_prop_BIO, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "2_Processing", "10_Data_Transformation", "Propor_non_norma_after_data-transfo_BIO.json"))
  
  # Calculate normality statistics for QC samples 
  
  shapiro_results_QC <- sapply(1:nrow(transformed_data %>% select(all_of(qc_names))),
                               function(i) {
                                 x <- na.omit(as.numeric(transformed_data[i, qc_names]))
                                 if(length(x) >= 5) shapiro.test(x)$p.value else NA
                               })
  
  shapiro_pvalues_adjusted_QC <- p.adjust(shapiro_results_QC, method = "fdr")
  non_normal_prop_QC <- mean(shapiro_pvalues_adjusted_QC <= 0.05, na.rm = TRUE)
  
  write_json(non_normal_prop_QC, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(param_folder, "2_Processing", "10_Data_Transformation", "Propor_non_norma_after_data-transfo_QC.json"))
  
  
  # Calculate skewness and kurtosis (BIO samples only)
  
  skewness_values <- apply(transformed_data[, bio_names], 1, function(x) {
    x_clean <- na.omit(x)
    if (length(x_clean) < 3) return(NA)
    e1071::skewness(x_clean)
  })
  
  kurtosis_values <- apply(transformed_data[, bio_names], 1, function(x) {
    x_clean <- na.omit(x)
    if (length(x_clean) < 3) return(NA)
    e1071::kurtosis(x_clean, type = 2)
  })
  
  # Create statistics table 
  
  Normality_check_table <- data.frame(
    Variable = rownames(transformed_data),
    Shapiro_pvalue_BIO = shapiro_pvalues_adjusted_BIO,
    Shapiro_pvalue_QC = shapiro_pvalues_adjusted_QC,
    Skewness = skewness_values,
    Kurtosis = kurtosis_values,
    Non_Normal_Shapiro_BIO = shapiro_pvalues_adjusted_BIO <= 0.05,
    Non_Normal_Shapiro_QC = shapiro_pvalues_adjusted_QC <= 0.05,
    Extreme_Skew = abs(skewness_values) > 1,
    Extreme_Kurt = abs(kurtosis_values) > 1
  )
  
  # Create visualizations
  
  p1 <- ggplot(data.frame(skewness = skewness_values), aes(x = skewness)) +
    geom_histogram(binwidth = 0.2, fill = "yellow2", color = "black") +
    geom_vline(xintercept = c(-1, 0, 1), color = "red", linetype = "dashed") +
    labs(title = paste("Skewness Distribution (BIO) - ", transformation_method),
         x = "Skewness", y = "Count") +
    theme_minimal()
  
  p2 <- ggplot(data.frame(kurtosis = kurtosis_values), aes(x = kurtosis)) +
    geom_histogram(binwidth = 0.5, fill = "pink2", color = "black") +
    geom_vline(xintercept = c(-1, 0, 1), color = "red", linetype = "dashed") +
    labs(title = paste("Kurtosis Distribution (BIO) - ", transformation_method),
         x = "Kurtosis", y = "Count") +
    theme_minimal()
  
  skew_kurto_plot <- patchwork::wrap_plots(p1, p2, ncol = 2)
  
  
  # Save results
  
  write.csv(Normality_check_table,
            file = file.path(data_folder, "2_Processing", "10_Data_Transformation", "Normality_check_table.csv"),
            row.names = FALSE)
  
  write.csv(transformed_data,
            file = file.path(data_folder, "2_Processing", "10_Data_Transformation", "output_step4_transformed.csv"),
            row.names = TRUE)
  
  ggsave(file.path(chart_folder, "2_Processing", "10_Data_Transformation", "skew_kurto_plot.pdf"),
         plot = skew_kurto_plot, width = 15, height = 7, bg = "white")
  
  # Return results 
  
  return(list(
    transformed_data = transformed_data,
    Normality_check_table = Normality_check_table,
    non_normal_prop_BIO = non_normal_prop_BIO,
    non_normal_prop_QC = non_normal_prop_QC,
    skewness_values = skewness_values,
    kurtosis_values = kurtosis_values,
    skew_kurto_plot = skew_kurto_plot,
    transformation_method = transformation_method,
    transformation_applied = (transformation_method != "none"),
    epsilon_used = ifelse(transformation_method == "log10", epsilon, NA)
  ))
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Complete Data Scaling Function with Integrated Shiny UI
#'
#' @param input_data Dataframe/matrix : Features x Samples (transformed data)
#' @param qc_names Vector of QC sample names (will not be used for scaling parameters)
#' @param non_normal_prop_BIO Proportion of non-normal features in biological samples
#' @param non_normal_prop_QC Proportion of non-normal features in QC samples
#' @param skewness_values Vector of skewness values
#' @param kurtosis_values Vector of kurtosis values
#' @param skew_kurto_plot ggplot object showing skewness/kurtosis distributions
#' @param data_folder Folder path to save results
#' @return List containing scaled data matrix and scaling parameters
#' 

perform_data_scaling <- function(input_data, qc_names, non_normal_prop_BIO,
                                 non_normal_prop_QC, skewness_values,
                                 kurtosis_values, skew_kurto_plot, data_folder) {
  
  # Integrated Shiny UI for scaling method selection
  
  ui <- fluidPage(
    tags$head(
      tags$style(HTML("
        .method-card {
          border: 1px solid #e2e2e2;
          border-left: 4px solid #999;
          border-radius: 6px;
          padding: 16px 20px;
          margin-bottom: 16px;
          background-color: #fafafa;
        }
        .method-card.orange { border-left-color: #E67E22; }
        .method-card.green  { border-left-color: #27AE60; }
        .method-card h4 {
          margin-top: 0;
          margin-bottom: 10px;
          font-weight: 600;
        }
        .method-card ul {
          margin-bottom: 0;
          padding-left: 20px;
        }
        .method-card li {
          margin-bottom: 6px;
        }
        .method-tag {
          display: inline-block;
          font-size: 12px;
          font-weight: 600;
          padding: 2px 8px;
          border-radius: 10px;
          margin-left: 8px;
          vertical-align: middle;
        }
        .method-tag.orange { background-color: #FDEBD0; color: #B9770E; }
        .method-tag.green  { background-color: #D5F5E3; color: #1E8449; }
        .method-warning {
          color: #B9770E;
          font-size: 13px;
        }
        .method-good {
          color: #1E8449;
          font-size: 13px;
        }
        .intro-box {
          background-color: #f2f2f2;
          border-radius: 6px;
          padding: 14px 18px;
          margin-bottom: 20px;
        }
      "))
    ),
    
    titlePanel("Select Scaling Method"),
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId = "scaling_choice",
          label = "Choose the Scaling Method :",
          choices = c("Robust Scaling", "Pareto Scaling", "Auto-Scaling"),
          selected = "Auto-Scaling"
        ),
        br(),
        
        actionButton("submit", "Submit", class = "btn-success")
      ),
      
      mainPanel(
        
        tabsetPanel(
          tabPanel("Methods",
                   
                   br(),
                   
                   div(class = "intro-box",
                       h4(tags$b("Scaling Methods Overview")),
                       p("Scaling is applied to adjust the importance of features before multivariate analysis (e.g., PCA, PLS-DA). The aim is to make the data comparable with one another. Without this step, data with high intensity values would have carried greater weight in the statistical models.")
                   ),
                   
                   # Auto-scaling
                   div(class = "method-card green",
                       h4("Auto-Scaling", tags$span(class = "method-tag green", "Recommended")),
                       tags$ul(
                         tags$li("Centers each feature to the mean and scales by the standard deviation."),
                         tags$li("All variables contribute equally to the analysis."),
                         tags$li("Recommended when variables have very different variances."),
                         tags$li(tags$span(class = "method-warning",
                                           "Warning : amplifies noise in low-intensity variables. The pre-processing and processing stages are important."))
                       )
                   ),
                   
                   # Pareto scaling
                   div(class = "method-card green",
                       h4("Pareto Scaling", tags$span(class = "method-tag green", "Recommended")),
                       tags$ul(
                         tags$li("Centers each feature to the mean and scales by the square root of the standard deviation."),
                         tags$li("Reduces the influence of large-intensity variables while preserving data structure. Variables with higher variance still contribute more than low-variance variables."),
                         tags$li("Commonly used in metabolomics."),
                         tags$li(tags$span(class = "method-good", "Good compromise between no scaling and auto-scaling."))
                       )
                   ),
                   
                   # Robust scaling
                   div(class = "method-card orange",
                       h4("Robust Scaling", tags$span(class = "method-tag orange", "Use with caution")),
                       tags$ul(
                         tags$li("Centers using the median and scales using the Median Absolute Deviation (MAD)."),
                         tags$li("Less sensitive to outliers than standard scaling."),
                         tags$li("Useful when data contains extreme values or non-normal distributions."),
                         tags$li(tags$span(class = "method-good", "Recommended when kurtosis is high or outliers are present.")),
                         tags$li(tags$span(class = "method-warning",
                                           "Warning : Less commonly used than Pareto scaling in metabolomics, but well-established in statistics."))
                       )
                   ),
                   
                   div(class = "intro-box",
                       h4(tags$b("Key Consideration")),
                       tags$ul(
                         tags$li("Scaling choice directly affects downstream analyses."),
                         tags$li("Interpretation of loadings depends on the scaling method used.")
                       )
                   )
          ),
          
          tabPanel("Statistical Recap",
                   verbatimTextOutput("stats"),
                   plotOutput("plot", height = "400px")
          ),
          
          tabPanel("Statistical Recap Explanations",
                   
                   # Kurtosis Section
                   
                   h4(tags$b("Kurtosis")),
                   p("Kurtosis measures how heavy the tails of a distribution are compared to a normal distribution."),
                   p("Depending on the definition, a normal distribution has a kurtosis of 3, or an excess kurtosis of 0 (our case here)."),
                   p("Imagine a mountain :"),
                   tags$ul(
                     tags$li(strong("Kurtosis ≈ normal : "), "A standard mountain with moderate slopes and few extreme values."),
                     tags$li(strong("High kurtosis : "), "A mountain with heavy tails : more extreme values (outliers), even if the peak is not necessarily sharp."),
                     tags$li(strong("Low kurtosis : "), "A flatter landscape with light tails : fewer extreme values.")
                   ),
                   
                   br(),
                   
                   # Skewness Section
                   
                   h4(tags$b("Skewness")),
                   p("Skewness measures the asymmetry of a distribution around its mean."),
                   tags$ul(
                     tags$li(strong("Skewness ≈ 0 :"), "A symmetric distribution, like a normal distribution."),
                     tags$li(strong("Skewness > 0 :"), "Positive skew (right-skewed) : a long right tail, meaning a few large values pull the distribution to the right."),
                     tags$li(strong("Skewness < 0 :"), "Negative skew (left-skewed) : a long left tail, meaning a few small values pull the distribution to the left.")
                   )
          )
        )
      )
    )
  )
  
  server <- function(input, output, session) {
    
    output$plot <- renderPlot({ skew_kurto_plot })
    
    output$stats <- renderPrint({
      
      cat("Variables with normal distribution (BIO):",
          round((1 - non_normal_prop_BIO) * 100, 1), "%\n")
      
      cat("Variables with normal distribution (QC):",
          round((1 - non_normal_prop_QC) * 100, 1), "%\n")
      
      cat("\nSummary: Skewness (BIO)\n")
      print(summary(skewness_values))
      
      cat("\nSummary: Kurtosis (BIO)\n")
      print(summary(kurtosis_values))
    })
    
    observeEvent(input$submit, {
      stopApp(input$scaling_choice)
    })
    
  }
  
  # Run the Shiny app and get user choice
  
  scaling_choice <- runApp(shinyApp(ui = ui, server = server), launch.browser = TRUE)
  
  if (is.null(scaling_choice)) {
    message("Scaling canceled by user.")
    return(NULL)
  }
  
  # Prepare data (QC samples will not be used for scaling parameters)
  
  pre_scaled_matrix <- as.matrix(input_data)
  bio_idx <- !(colnames(pre_scaled_matrix) %in% qc_names)
  
  # Calculate scaling parameters based on method
  
  if (scaling_choice == "Robust Scaling") {
    center <- rowMedians(pre_scaled_matrix[, bio_idx], na.rm = TRUE)
    scale <- rowMads(pre_scaled_matrix[, bio_idx], na.rm = TRUE, constant = 1)
    method_name <- "Robust Scaling"
    
  } else if (scaling_choice == "Auto-Scaling") {
    center <- rowMeans(pre_scaled_matrix[, bio_idx], na.rm = TRUE)
    scale <- rowSds(pre_scaled_matrix[, bio_idx], na.rm = TRUE)
    method_name <- "Auto-Scaling"
    
  } else if (scaling_choice == "Pareto Scaling") {
    center <- rowMeans(pre_scaled_matrix[, bio_idx], na.rm = TRUE)
    scale <- sqrt(rowSds(pre_scaled_matrix[, bio_idx], na.rm = TRUE))
    method_name <- "Pareto Scaling"
  }
  
  # Security check for zero scales
  
  scale[scale == 0] <- 1
  
  # Apply scaling to ALL samples (including QC, but using BIO parameters)
  
  scaled_data <- sweep(pre_scaled_matrix, 1, center, "-")
  scaled_data <- sweep(scaled_data, 1, scale, "/")
  
  # Save results
  
  write.csv(pre_scaled_matrix,
            file = file.path(data_folder, "2_Processing", "11_Data_Scaling", "Matrix_before_Scaling.csv"),
            row.names = TRUE)
  
  write.csv(cbind(rowid = seq_len(nrow(scaled_data)), scaled_data),
            file = file.path(data_folder, "2_Processing", "11_Data_Scaling", "Final_output.csv"),
            row.names = TRUE)
  
  # Save parameters
  
  write_json(x = list(
    method = method_name,
    center = center,
    scale = scale,
    bio_samples_used = colnames(pre_scaled_matrix)[bio_idx]
  ), 
  path = file.path(param_folder, "2_Processing", "11_Data_Scaling", "Scaling_params.json"),
  pretty = TRUE, auto_unbox = TRUE)
  
  # Return results
  
  list(
    scaled_data = scaled_data,
    scaling_parameters = list(
      method = method_name,
      center = center,
      scale = scale,
      bio_samples_used = colnames(pre_scaled_matrix)[bio_idx]
    ),
    original_data = pre_scaled_matrix,
    pre_scaled_matrix = t(pre_scaled_matrix[, !colnames(pre_scaled_matrix) %in% qc_names, drop = FALSE]),
    scaling_method = scaling_choice
  )
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' PCA on QC samples for post-scaling quality control
#'
#' @param input_data Input data matrix : Features x Samples 
#' @param metadata_table Dataframe with sample metadata (must contain 'SampleName')
#' @param qc_names Vector of QC sample names
#' @param bio_names Vector of biological sample names
#' @param data_folder Folder path to save results
#' @param param_folder File path to save parameters
#' @param chart_folder File path to save charts
#' @return List containing:
#'         - model      : pcaMethods PCA model
#'         - plot       : ggplot object (final state when user clicked Save)
#'         - tab_pca    : dataframe of PCA scores with group info
#'         - stats      : PERMANOVA results (f_value, p_value, r_squared)
#'         - parameters : user-selected GUI parameters


run_pca_qc <- function(input_data, metadata_table, qc_names, bio_names, data_folder, param_folder, chart_folder) {
  
  # Group Preparation
  
  all_qc_bio <- c(
    setNames(rep("QC",  length(qc_names)),  qc_names),
    setNames(rep("Bio", length(bio_names)), bio_names)
  )
  
  sample_groups <- all_qc_bio[colnames(input_data)]
  
  unassigned <- colnames(input_data)[is.na(sample_groups)]
  if (length(unassigned) > 0L)
    warning(sprintf(
      "%d sample(s) excluded (neither QC nor Bio) : %s",
      length(unassigned), paste(unassigned, collapse = ", ")
    ))
  
  input_filtered <- input_data[, !is.na(sample_groups), drop = FALSE]
  sample_groups  <- sample_groups[colnames(input_filtered)]
  
  # UI
  
  ui <- fluidPage(
    titlePanel("QC PCA — Post-scaling quality control"),
    sidebarLayout(
      sidebarPanel(
        h4("PCA parameters"),
        selectInput("scale", "Scaling (only if you do not have scaled your data): ",
                    choices  = c("None" = "none", "Auto-Scaling" = "uv", "Pareto" = "pareto"),
                    selected = "none"),
        checkboxInput("center", "Center data", value = FALSE),
        hr(),
        h4("Display options"),
        
        checkboxInput("show_ellipses", "Confidence ellipses (95%)", value = TRUE),
        conditionalPanel(condition = 'input.show_ellipses == true',
                         sliderInput(inputId = "alpha", label = "Transparency of ellipses",
                                     value = 0.15, min = 0.05, max = 0.8, step = 0.05)),
        
        checkboxInput("show_labels", "Show labels", value = FALSE),
        
        conditionalPanel(condition = "input.show_labels == true",
                         checkboxInput("show_labels_QC", "QC labels", value = TRUE),
                         checkboxInput("show_labels_BIO", "Sample labels", value = FALSE)),
        
        checkboxInput("show_shape", "Distinguish QC/Bio by shape", value = TRUE),
        hr(),
        actionButton("save", "Save & Continue", class = "btn-success")
      ),
      mainPanel(plotOutput("pca_plot", height = "75vh"))
    )
  )
  
  # Server
  
  server <- function(input, output, session) {
    
    observeEvent(input$scale, {
      if (input$scale != "none") {
        updateCheckboxInput(session, "center", value = TRUE)
      }
    }, ignoreInit = FALSE)
    
    # PCA
    
    pca_result <- reactive({
      
      samples_matrix <- t(input_filtered)
      
      res_quality <- pcaMethods::pca(
        samples_matrix,
        method = if (any(is.na(samples_matrix))) "svd" else "rnipals",
        nPcs   = min(10L, ncol(samples_matrix) - 1L),
        cv     = "q2", scale = input$scale, center = input$center
      )
      
      pcaMethods::pca(
        samples_matrix,
        method = if (any(is.na(samples_matrix))) "svd" else "rnipals",
        nPcs   = pmax(which.max(res_quality@cvstat), 2L),
        scale  = input$scale, center = input$center
      )
    })
    
    # Scores
    
    tab_pca <- reactive({
      scores_m <- pcaMethods::scores(pca_result())
      data.frame(
        PC1    = scores_m[, 1],
        PC2    = scores_m[, 2],
        Sample = rownames(scores_m),
        Group  = sample_groups[rownames(scores_m)]
      )
    })
    
    # PERMANOVA
    
    permanova_stats <- reactive({
      
      scores_m <- pcaMethods::scores(pca_result())
      groups   <- sample_groups[rownames(scores_m)]
      
      if (length(unique(groups)) < 2L || any(table(groups) < 2L))
        return(NULL)
      
      res <- vegan::adonis2(
        vegan::vegdist(scores_m, method = "euclidean") ~ groups,
        permutations = 999
      )
      
      list(f_value = res$F[1], p_value = res$`Pr(>F)`[1], r_squared = res$R2[1])
    })
    
    # Plot
    
    plot_reactive <- reactive({
      
      res     <- pca_result()
      df_plot <- tab_pca()
      stats   <- permanova_stats()
      
      group_colors <- c("QC" = viridis(1, begin = 0.7, option = "turbo"), "Bio" = "grey40")
      group_shapes <- c("QC" = 24, "Bio" = 21)
      df_plot$Group <- factor(df_plot$Group, levels = names(group_colors))
      
      base_aes <- if (input$show_shape) {
        aes(x = PC1, y = PC2, fill = Group, shape = Group)
      } else {
        aes(x = PC1, y = PC2, fill = Group)
      }
      
      p <- ggplot(df_plot, base_aes) +
        geom_point(size = 4.5, stroke = 1.2, alpha = 0.9, colour = "black", shape = if (!input$show_shape) 21 else NA) +
        
        scale_fill_manual(values = group_colors) +
        
        { if (input$show_shape) scale_shape_manual(values = group_shapes) } +
        
        geom_point(size = 4.5, stroke = 1.2, alpha = 0.9, colour = "black") +
        labs(
          x     = paste0("PC 1 (", round(res@R2[1] * 100, 1), "%)"),
          y     = paste0("PC 2 (", round(res@R2[2] * 100, 1), "%)"),
          fill  = "", shape = ""
        ) +
        theme_classic() +
        theme(
          legend.key.size      = unit(0.4, "cm"),
          plot.margin          = margin(10, 10, 10, 10),
          legend.position      = c(0.97, 0.99),
          legend.justification = c(1, 1),
          legend.text          = element_text(size = 14),
          axis.title.x         = element_text(size = 18, face = "bold", margin = margin(t = 12)),
          axis.title.y         = element_text(size = 18, face = "bold", margin = margin(r = 12)),
          axis.text            = element_text(size = 13),
          panel.grid.major     = element_blank(),
          panel.grid.minor     = element_blank(),
          panel.border         = element_rect(color = "black", fill = NA, linewidth = 0.8),
          axis.line            = element_blank(),
          axis.ticks        = element_line(color = "black", linewidth = 0.8),  
          axis.ticks.length = unit(-6, "pt")
        ) +
        coord_cartesian(clip = "off")
      
      
      if (input$show_ellipses)
        p <- p + stat_ellipse(
          aes(group = Group), level = 0.95,
          linetype = "solid", linewidth = 0.8, alpha = input$alpha, geom = "polygon"
        )
      
      if (input$show_labels) {
        
        df_labels <- df_plot %>%
          dplyr::filter(
            (Group == "QC"  & input$show_labels_QC) |
              (Group == "Bio" & input$show_labels_BIO)
          )

          p <- p + ggrepel::geom_text_repel(
            data         = df_labels,
            aes(label    = Sample),
            size         = 3,
            max.overlaps = 10,
            show.legend  = FALSE
          )
      }
      
      if (!is.null(stats))
        p <- p + annotate(
          "label", x = Inf, y = -Inf, hjust = 1.05, vjust = -0.3,
          label = paste0(
            "F-value : ", round(stats$f_value,   3), "\n",
            "R2      : ", round(stats$r_squared, 3), "\n",
            "p-value : ", round(stats$p_value,   3)
          ),
          size = 4.5, fill = alpha("white", 0.6)
        )
      p
    })
    
    output$pca_plot <- renderPlot({ plot_reactive() })
    
    # Save & exit
    
    observeEvent(input$save, {
      
      p      <- plot_reactive()
      res    <- pca_result()
      params <- list(
        scale         = input$scale,
        center        = input$center,
        show_ellipses = input$show_ellipses,
        show_labels   = input$show_labels
      )
      
      ggsave(file.path(chart_folder, "2_Processing", "11_Data_Scaling", "PCA_QC.pdf"),
             plot = p, width  = 10, height = 10, bg = "white")
      
      saveRDS(res, file.path(data_folder, "2_Processing", "11_Data_Scaling", "PCA_QC_model.rds"))
      write.csv(tab_pca(), file.path(data_folder, "2_Processing", "11_Data_Scaling", "PCA_QC_df.csv"), row.names = TRUE)
      write_json(params, file.path(param_folder, "2_Processing", "11_Data_Scaling", "PCA_QC_params.json"),
                 pretty = TRUE, auto_unbox = TRUE)
      
      stopApp(list(
        model      = res,
        plot       = p,
        tab_pca    = tab_pca(),
        stats      = permanova_stats(),
        parameters = params
      ))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}




########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################

#' Function to annotate MS2 features against an in-house spectral library
#'
#' @param ms2_consensus Spectra object with one representative MS2 spectrum per feature
#'                     (output of export_MS2_spectra)
#' @param param_folder Folder path to save parameters
#' @param data_folder Folder to save the annotation results
#' @return Data frame with the annotation results (only matches passing the score
#'         threshold), or NULL if the step was skipped/canceled by the user
#'
#' @details This function assumes the following packages are already attached in the session :
#'          shiny, Spectra, MsBackendMgf, MsBackendMsp, MsCoreUtils, future, future.apply,
#'          future.callr, parallelly, jsonlite

annotate_inhouse <- function(ms2_consensus, param_folder, data_folder) {
  
  # Internal function for the Shiny interface
  
  run_inhouse_annotation_gui <- function() {
    
    ui <- fluidPage(
      titlePanel("MS2 annotation against an in-house library"),
      sidebarLayout(
        sidebarPanel(
          checkboxInput(
            inputId = "do_annotation",
            label   = "Do you want to annotate your features against an in-house library ?",
            value   = FALSE
          ),
          conditionalPanel(
            condition = "input.do_annotation == true",
            br(),
            fileInput(
              inputId = "lib_file",
              label   = "In-house library (.msp or .mgf)",
              accept  = c(".msp", ".mgf")
            ),
            numericInput("ppm_prec", "Precursor tolerance (ppm)", value = 7, min = 0, step = 1),
            numericInput("ppm_frag", "Fragment tolerance (ppm)", value = 7, min = 0, step = 1),
            numericInput("rt_tol", "RT tolerance (seconds)", value = 30, min = 0, step = 5),
            numericInput("score_thr", "Score threshold (ndotproduct)", value = 0.7, min = 0, max = 1, step = 0.05)
          ),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Why annotate against an in-house library ?"),
          p("An in-house library contains reference MS2 spectra acquired internally, ",
            "on the same type of instrument and under conditions close to your samples. ",
            "It provides more reliable annotation than public databases for compounds already ",
            "characterized in the lab (standards, recurring compounds of interest), with direct ",
            "control over reference spectra quality and the ability to also compare retention time, ",
            "not just the MS2 spectrum."),
          p(strong("Limitation : "), "this annotation only covers compounds already present in your ",
            "library. It should be complemented by an annotation against a public database for ",
            "compounds not yet referenced."),
          br(),
          conditionalPanel(
            condition = "input.do_annotation == true",
            h4("Parameter description"),
            tags$b("Precursor / fragment tolerance (ppm) :"),
            p("Mass accuracy tolerance used to match precursor m/z between query features and library ",
              "entries, and to match fragment peaks when scoring spectral similarity."),
            br(),
            tags$b("RT tolerance (seconds) :"),
            p("Maximum retention time difference allowed between a query feature and a library entry ",
              "for the pair to be considered a possible match. This restricts, for each feature, the ",
              "library candidates that get scored to those eluting at a compatible retention time."),
            br(),
            tags$b("Score threshold (ndotproduct) :"),
            p("Minimum spectral similarity score (normalized dot product) required to keep a match in ",
              "the final results.")
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        if (!isTRUE(input$do_annotation)) {
          stopApp(list(do_annotation = FALSE))
        } else {
          req(input$lib_file)
          lib_ext  <- tools::file_ext(input$lib_file$name)
          lib_path <- file.path(tempdir(), paste0("inhouse_library_", lib_ext))
          file.copy(input$lib_file$datapath, lib_path, overwrite = TRUE)
          
          stopApp(list(
            do_annotation    = TRUE,
            lib_path         = lib_path,
            lib_ext          = lib_ext,
            ppm_precursor    = input$ppm_prec,
            ppm_fragment     = input$ppm_frag,
            rt_tolerance_sec = input$rt_tol,
            score_threshold  = input$score_thr
          ))
        }
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Run the GUI and retrieve parameters
  
  annotation_params <- run_inhouse_annotation_gui()
  
  # Check if the user canceled
  
  if (is.null(annotation_params)) {
    message("In-house annotation canceled by user.")
    return(NULL)
  }
  
  # Check if the user chose to skip the annotation
  
  if (!isTRUE(annotation_params$do_annotation)) {
    message("In-house annotation skipped by user.")
    return(NULL)
  }
  
  
  # Load library spectra
  
  backend_lib <- if (tolower(annotation_params$lib_ext) == "msp") MsBackendMsp() else MsBackendMgf()
  ref_spectra <- Spectra(annotation_params$lib_path, source = backend_lib)
  
  # Library RT is assumed to be in minutes -> convert to seconds once,
  # to be compared against ms2_consensus$rtime (seconds)
  
  ref_precursor_mz <- as.numeric(ref_spectra$PrecursorMz)
  ref_rt_sec <- as.numeric(ref_spectra$RetentionTime) * 60
  n_query    <- length(ms2_consensus)
  
  ppm_precursor    <- annotation_params$ppm_precursor
  ppm_fragment     <- annotation_params$ppm_fragment
  rt_tolerance_sec <- annotation_params$rt_tolerance_sec
  score_threshold  <- annotation_params$score_threshold
  
  
  # Parallel backend setup
  
  
  n_workers <- min(10L, parallelly::availableCores(omit = 4L))
  cat("Workers requested :", n_workers, "\n")
  
  plan(callr, workers = n_workers)   # no sockets, no admin rights needed
  
  cat("Active future plan   :", class(plan())[1], "\n")
  cat("Future workers       :", nbrOfWorkers(), "\n")
  
  
  # Spectral matching (parallelized across query features)
  
  chunks <- split(seq_len(n_query), cut(seq_len(n_query), breaks = nbrOfWorkers(), labels = FALSE))
  
  cat("Total features :", n_query, "| Chunks :", length(chunks),
      "| ~", ceiling(n_query / nbrOfWorkers()), "features/worker\n")
  
  chunk_scores <- future_lapply(
    chunks,
    function(idx) {
      
      query_batch <- ms2_consensus[idx]
      score_mat   <- matrix(0, nrow = length(idx), ncol = length(ref_spectra))
      
      for (i in seq_along(idx)) {
        
        mz_tol    <- query_batch$precursorMz[i] * ppm_precursor * 1e-6
        match_idx <- which(
          abs(ref_precursor_mz - query_batch$precursorMz[i]) <= mz_tol &
            abs(ref_rt_sec - query_batch$rtime[i]) <= rt_tolerance_sec
        )
        
        if (length(match_idx) == 0) next
        score_mat[i, match_idx] <- compareSpectra(
          query_batch[i], ref_spectra[match_idx],
          FUN = MsCoreUtils::ndotproduct, ppm = ppm_fragment
        )
      }
      
      score_mat
      
    },
    future.globals = list(ms2_consensus = ms2_consensus, ref_spectra = ref_spectra,
                          ref_precursor_mz = ref_precursor_mz, ref_rt_sec = ref_rt_sec,
                          ppm_precursor = ppm_precursor, ppm_fragment = ppm_fragment,
                          rt_tolerance_sec = rt_tolerance_sec),
    
    future.packages = c("Spectra", "MsCoreUtils")
  )
  
  score_matrix <- do.call(rbind, chunk_scores)
  rownames(score_matrix) <- ms2_consensus$FEATURE_ID
  colnames(score_matrix) <- ref_spectra$Name
  
  
  # Best match per feature
  
  best_col      <- apply(score_matrix, 1, function(x) if (all(x == 0)) NA_integer_ else which.max(x))
  best_score    <- apply(score_matrix, 1, function(x) if (all(x == 0)) NA_real_ else max(x))
  has_match     <- !is.na(best_col)
  best_col_safe <- ifelse(has_match, best_col, 1L)
  
  q_peaks <- peaksData(ms2_consensus)
  r_peaks <- peaksData(ref_spectra)[best_col_safe]
  
  n_peaks_query <- sapply(q_peaks, nrow)
  n_peaks_ref   <- sapply(r_peaks, nrow)
  
  # Index the m/z column [,1] only -> joinPeaks() returns 2-column matrices
  # (mz, intensity) ; without [,1] each match would be counted twice.
  
  match_stats <- mapply(
    function(q, r, valid) {
      if (!valid || nrow(q) == 0 || nrow(r) == 0) {
        return(c(n_matched = NA_integer_, Iexplained_exp = NA_real_, Iexplained_ref = NA_real_))
      }
      jp <- joinPeaks(q, r, ppm = ppm_fragment, type = "inner")
      c(
        n_matched     = nrow(jp$x),
        Iexplained_exp = sum(jp$x[, 2]) / sum(q[, 2]),
        Iexplained_ref = sum(jp$y[, 2]) / sum(r[, 2])
      )
    },
    q_peaks, r_peaks, has_match
  )
  
  # Extract vectors from match_stats once
  
  n_matched     <- match_stats["n_matched", ]
  Iexplained_exp <- match_stats["Iexplained_exp", ]
  Iexplained_ref <- match_stats["Iexplained_ref", ]
  
  
  # Name everything by feature_id, so downstream indexing is done by name
  # (safe against filtering / reordering) rather than by position
  
  names(q_peaks)          <- ms2_consensus$FEATURE_ID
  names(r_peaks)          <- ms2_consensus$FEATURE_ID
  names(best_col_safe)    <- ms2_consensus$FEATURE_ID
  colnames(match_stats)   <- ms2_consensus$FEATURE_ID
  
  
  # NA for features with no match at all (redundant with mapply's internal NA,
  # kept as a safety net in case has_match/valid logic changes)
  
  n_peaks_ref[!has_match] <- NA_integer_
  n_matched[!has_match]   <- NA_integer_
  
  
  # Annotation results
  
  result <- data.frame(
    feature_id        = rownames(score_matrix),
    best_match        = colnames(score_matrix)[best_col],
    precur_exp_mz     = round(ms2_consensus$precursorMz, 5),
    precur_ref_mz     = round(ref_precursor_mz[best_col], 5),
    precur_exp_rt     = round(ms2_consensus$rtime, 5),
    precur_ref_rt     = round(ref_rt_sec[best_col], 5),
    precur_delta_ppm  = round(abs(ms2_consensus$precursorMz - ref_precursor_mz[best_col]) /
                                ref_precursor_mz[best_col] * 1e6, 2),
    rt_delta_sec      = round(abs(ms2_consensus$rtime - ref_rt_sec[best_col]), 2),
    score_ndotproduct = best_score,
    n_peaks_exp       = n_peaks_query,
    n_peaks_ref       = n_peaks_ref,
    n_matched_peaks   = n_matched,
    pct_exp_matched   = round(n_matched / n_peaks_query * 100, 1),
    pct_ref_matched   = round(n_matched / n_peaks_ref * 100, 1),
    Iexplained_exp     = round(Iexplained_exp * 100, 1),
    Iexplained_ref     = round(Iexplained_ref * 100, 1),
    stringsAsFactors  = FALSE
  )
  
  result <- result[!is.na(result$score_ndotproduct) & result$score_ndotproduct >= score_threshold, ]
  
  message("Features annotated : ", nrow(result), "/", n_query,
          sprintf(" (%.1f%%)", 100 * nrow(result) / n_query), "\n")
  
  
  # Export results and parameters
  
  export_dir <- file.path(data_folder, "3_Annotation", "InHouse_annotation")
  dir.create(export_dir, recursive = TRUE, showWarnings = FALSE)
  
  write.csv(result, file.path(export_dir, "In_house_annotation.csv"), row.names = FALSE)
  message("Annotation results exported : ", file.path(export_dir, "In_house_annotation.csv"), "\n")
  
  param_dir <- file.path(param_folder, "3_Annotation", "InHouse_annotation")
  dir.create(param_dir, recursive = TRUE, showWarnings = FALSE)
  
  write_json(
    annotation_params[c("do_annotation", "ppm_precursor", "ppm_fragment",
                        "rt_tolerance_sec", "score_threshold")],
    pretty = TRUE, auto_unbox = TRUE,
    path = file.path(param_dir, "InHouse_annotation_Param.json")
  )
  
  
  # Return results
  
  list(annotation_results = result,
       ms2_peaks = q_peaks,
       ref_peaks = r_peaks,
       match_peaks_stats = match_stats)
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Function to filter the "feature_based_molecular_networking_workflow" GNPS2 result file and select
#'  the best hit per scan
#'
#' @param param_folder Folder path to save parameters
#' @param data_folder  Folder to save the filtered annotation table
#' @return Data frame with the filtered GNPS annotations (1 row / scan, renamed to "feature_id"),
#'         or NULL if the step was skipped/canceled by the user, or if nothing passed filtering.
#'

annotate_GNPS_FBMNW <- function(param_folder, data_folder) {
  
  # Internal function for the Shiny interface
  
  run_annotation_gui <- function() {
    
    ui <- fluidPage(
      titlePanel("GNPS Feature Based Molecular Networking Workflow Result Filtering"),
      sidebarLayout(
        sidebarPanel(
          checkboxInput(
            inputId = "do_annotation",
            label   = "Do you want to annotate your feature with the GNPS FBMNW result file ?",
            value   = FALSE
          ),
          conditionalPanel(
            condition = "input.do_annotation == true",
            br(),
            fileInput(
              inputId = "gnps_file",
              label   = "Upload the GNPS result file (.tsv, .csv or .xlsx)",
              accept  = c(".tsv", ".txt", ".csv", ".xlsx", ".xls")
            ),
            numericInput(
              inputId = "min_mqscore",
              label   = "Minimum MQScore",
              value   = 0.7,
              min     = 0,
              max     = 1,
              step    = 0.01
            ),
            numericInput(
              inputId = "max_ppm_error",
              label   = "Maximum |MZErrorPPM| allowed",
              value   = 10,
              min     = 0,
              step    = 1
            )
          ),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Why filter your GNPS result file ?"),
          p("Once your exported MS2 spectra (.mgf/.msp) have been submitted to GNPS ",
            "(Feature-Based Molecular Networking), GNPS returns a result table listing (merged_results_with_gnps.tsv), for every ",
            "MS2 scan submitted, the candidate spectral library match(es) found (one or several hits ",
            "per scan). This step selects, for each scan, the single best candidate annotation."),
          br(),
          conditionalPanel(
            condition = "input.do_annotation == true",
            h4("Selection logic"),
            p("When several library hits are available for the same scan, hits without a compound ",
              "name are discarded, and the hit with the highest MQScore is kept."),
            br(),
            tags$b("Minimum MQScore :"),
            p("Hits with a MQScore below this threshold are discarded before selection."),
            br(),
            tags$b("Maximum |MZErrorPPM| :"),
            p("Hits with an absolute mass error (ppm) above this threshold are discarded before selection.")
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        
        if (!isTRUE(input$do_annotation)) {
          stopApp(list(do_annotation = FALSE))
        } else {
          if (is.null(input$gnps_file)) {
            showNotification("Please upload a GNPS result file first.", type = "error")
            return(NULL)
          }
          stopApp(list(
            do_annotation = TRUE,
            file_path     = input$gnps_file$datapath,
            file_name     = input$gnps_file$name,
            min_mqscore   = input$min_mqscore,
            max_ppm_error = input$max_ppm_error
          ))
        }
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Run the GUI and retrieve parameters
  
  annot_list <- run_annotation_gui()
  
  # Check if the user canceled
  
  if (is.null(annot_list)) {
    message("GNPS filtering canceled by user.")
    return(NULL)
  }
  
  # Check if the user chose to skip the filtering
  
  if (!isTRUE(annot_list$do_annotation)) {
    message("GNPS filtering skipped by user.")
    return(NULL)
  }
  
  
  # Read the GNPS result file
  
  ext <- tolower(tools::file_ext(annot_list$file_name))
  
  gnps_raw <- switch(
    ext,
    "xlsx" = readxl::read_excel(annot_list$file_path),
    "xls"  = readxl::read_excel(annot_list$file_path),
    "tsv"  = read.delim(annot_list$file_path, sep = "\t", check.names = FALSE, stringsAsFactors = FALSE),
    "txt"  = read.delim(annot_list$file_path, sep = "\t", check.names = FALSE, stringsAsFactors = FALSE),
    "csv"  = read.csv(annot_list$file_path, check.names = FALSE, stringsAsFactors = FALSE),
    stop("Unsupported file extension for the GNPS result file : ", ext)
  )
  gnps_raw <- as.data.frame(gnps_raw)
  
  required_cols <- c("#Scan#", "MQScore", "MZErrorPPM", "Compound_Name")
  missing_cols  <- setdiff(required_cols, colnames(gnps_raw))
  
  if (length(missing_cols) > 0) {
    stop("The uploaded file is missing expected GNPS columns : ", paste(missing_cols, collapse = ", "))
  }
  
  gnps_raw <- gnps_raw %>% dplyr::rename(feature_id = `#Scan#`)
  gnps_raw$feature_id <- as.integer(gnps_raw$feature_id)
  gnps_raw$MQScore    <- as.numeric(gnps_raw$MQScore)
  gnps_raw$MZErrorPPM <- as.numeric(gnps_raw$MZErrorPPM)
  
  message("GNPS result rows loaded : ", nrow(gnps_raw),
          "| Unique scans : ", length(unique(gnps_raw$feature_id)), "\n")
  
  
  # Filter out low-confidence / unnamed hits
  
  gnps_filtered <- gnps_raw %>%
    dplyr::filter(
      !is.na(Compound_Name), trimws(Compound_Name) != "",
      MQScore >= annot_list$min_mqscore,
      abs(MZErrorPPM) <= annot_list$max_ppm_error
    )
  
  if (nrow(gnps_filtered) == 0) {
    message("No GNPS hit passed the filtering thresholds. Nothing retained.")
    return(NULL)
  }
  
  
  # Select the single best hit per scan (highest MQScore)
  
  gnps_best <- gnps_filtered %>%
    dplyr::group_by(feature_id) %>%
    dplyr::arrange(dplyr::desc(MQScore), .by_group = TRUE) %>%
    dplyr::slice(1) %>%
    dplyr::ungroup()
  
  message("Scans with >=1 valid GNPS hit : ", length(unique(gnps_filtered$feature_id)), "\n")
  message("Scans retained (best hit kept) : ", nrow(gnps_best), "\n")
  
  
  # Export : filtered annotation table
  
  export_dir <- file.path(data_folder, "3_Annotation", "GNPS_FBMNW_annotation")
  dir.create(export_dir, recursive = TRUE, showWarnings = FALSE)
  
  write.csv(gnps_best, file.path(export_dir, "GNPS_FBMNW_annotation_table.csv"), row.names = FALSE)
  message("Annotation table exported : ", file.path(export_dir, "GNPS_FBMNW_annotation_table.csv"), "\n")
  
  
  # Save parameters
  
  param_dir <- file.path(param_folder, "3_Annotation", "GNPS_FBMNW_annotation")
  dir.create(param_dir, recursive = TRUE, showWarnings = FALSE)
  
  write_json(
    list(
      do_annotation = TRUE,
      gnps_file     = annot_list$file_name,
      min_mqscore   = annot_list$min_mqscore,
      max_ppm_error = annot_list$max_ppm_error
    ),
    pretty = TRUE, auto_unbox = TRUE,
    path = file.path(param_dir, "GNPS_FBMNW_annotation_Param.json")
  )
  
  
  # Return results
  
  gnps_best
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Function to filter the "Everything Bagel" GNPS2 result file and select
#'  the best hit per scan
#'
#' @param param_folder Folder path to save parameters
#' @param data_folder  Folder to save the filtered annotation table
#' @return Data frame with the filtered GNPS annotations (1 row / scan, renamed to "feature_id"),
#'         or NULL if the step was skipped/canceled by the user, or if nothing passed filtering.
#'

annotate_GNPS_EB <- function(param_folder, data_folder) {
  
  # Internal function for the Shiny interface
  
  run_annotation_gui <- function() {
    
    ui <- fluidPage(
      titlePanel("GNPS Everything Bagel Result Filtering"),
      sidebarLayout(
        sidebarPanel(
          checkboxInput(
            inputId = "do_annotation",
            label   = "Do you want to annotate your feature with the GNPS Everything Bagel result file ?",
            value   = FALSE
          ),
          conditionalPanel(
            condition = "input.do_annotation == true",
            br(),
            fileInput(
              inputId = "gnps_file",
              label   = "Upload the GNPS Everything Bagel (library_matches.tsv)",
              accept  = c(".tsv", ".txt", ".csv", ".xlsx", ".xls")
            ),
            numericInput(
              inputId = "min_cosine",
              label   = "Minimum cosine",
              value   = 0.7,
              min     = 0,
              max     = 1,
              step    = 0.01
            ),
            numericInput(
              inputId = "max_ppm_error",
              label   = "Maximum |delta_mz| allowed (ppm)",
              value   = 10,
              min     = 0,
              step    = 1
            )
          ),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          h4("Why filter your GNPS Everything Bagel result file ?"),
          p("Once your exported MS2 spectra (.mgf/.msp) have been submitted to GNPS2 ",
            "(Everything Bagel search), GNPS2 returns a result table listing (library_matches.tsv)), for every ",
            "MS2 scan submitted, the candidate spectral library match(es) found (one or several hits ",
            "per scan). This step selects, for each scan, the single best candidate annotation."),
          br(),
          conditionalPanel(
            condition = "input.do_annotation == true",
            h4("Selection logic"),
            p("When several library hits are available for the same scan, hits without a compound ",
              "name are discarded, and the hit with the highest cosine is kept."),
            br(),
            tags$b("Minimum cosine :"),
            p("Hits with a cosine below this threshold are discarded before selection."),
            br(),
            tags$b("Maximum |delta_mz| :"),
            p("Hits with an absolute mass error (ppm) above this threshold are discarded before selection.")
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      observeEvent(input$submit, {
        
        if (!isTRUE(input$do_annotation)) {
          stopApp(list(do_annotation = FALSE))
        } else {
          if (is.null(input$gnps_file)) {
            showNotification("Please upload a GNPS Everything Bagel result file first.", type = "error")
            return(NULL)
          }
          stopApp(list(
            do_annotation = TRUE,
            file_path     = input$gnps_file$datapath,
            file_name     = input$gnps_file$name,
            min_cosine    = input$min_cosine,
            max_ppm_error = input$max_ppm_error
          ))
        }
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  # Run the GUI and retrieve parameters
  
  annot_list <- run_annotation_gui()
  
  # Check if the user canceled
  
  if (is.null(annot_list)) {
    message("GNPS Everything Bagel filtering canceled by user.")
    return(NULL)
  }
  
  # Check if the user chose to skip the filtering
  
  if (!isTRUE(annot_list$do_annotation)) {
    message("GNPS Everything Bagel filtering skipped by user.")
    return(NULL)
  }
  
  
  # Read the GNPS result file
  
  ext <- tolower(tools::file_ext(annot_list$file_name))
  
  gnps_raw <- switch(
    ext,
    "xlsx" = readxl::read_excel(annot_list$file_path),
    "xls"  = readxl::read_excel(annot_list$file_path),
    "tsv"  = read.delim(annot_list$file_path, sep = "\t", check.names = FALSE, stringsAsFactors = FALSE),
    "txt"  = read.delim(annot_list$file_path, sep = "\t", check.names = FALSE, stringsAsFactors = FALSE),
    "csv"  = read.csv(annot_list$file_path, check.names = FALSE, stringsAsFactors = FALSE),
    stop("Unsupported file extension for the GNPS Everything Bagel result file : ", ext)
  )
  gnps_raw <- as.data.frame(gnps_raw)
  
  required_cols <- c("query_scan", "cosine", "delta_mz", "NAME")
  missing_cols  <- setdiff(required_cols, colnames(gnps_raw))
  
  if (length(missing_cols) > 0) {
    stop("The uploaded file is missing expected GNPS columns : ", paste(missing_cols, collapse = ", "))
  }
  
  gnps_raw <- gnps_raw %>% dplyr::rename(feature_id = query_scan, Compound_Name = NAME)
  gnps_raw$feature_id <- as.integer(gnps_raw$feature_id)
  gnps_raw$cosine     <- as.numeric(gnps_raw$cosine)
  gnps_raw$delta_mz   <- as.numeric(gnps_raw$delta_mz)
  
  message("GNPS Everything Bagel result rows loaded : ", nrow(gnps_raw),
          "| Unique scans : ", length(unique(gnps_raw$feature_id)), "\n")
  
  
  # Filter out low-confidence / unnamed hits
  
  gnps_filtered <- gnps_raw %>%
    dplyr::filter(
      !is.na(Compound_Name), trimws(Compound_Name) != "",
      cosine >= annot_list$min_cosine,
      abs(delta_mz) <= annot_list$max_ppm_error
    )
  
  if (nrow(gnps_filtered) == 0) {
    message("No GNPS Everything Bagel hit passed the filtering thresholds. Nothing retained.")
    return(NULL)
  }
  
  
  # Select the single best hit per scan (highest cosine)
  
  gnps_best <- gnps_filtered %>%
    dplyr::group_by(feature_id) %>%
    dplyr::arrange(dplyr::desc(cosine), .by_group = TRUE) %>%
    dplyr::slice(1) %>%
    dplyr::ungroup()
  
  message("Scans with >=1 valid GNPS hit : ", length(unique(gnps_filtered$feature_id)), "\n")
  message("Scans retained (best hit kept) : ", nrow(gnps_best), "\n")
  
  
  # Export : filtered annotation table
  
  export_dir <- file.path(data_folder, "3_Annotation", "GNPS_EB_annotation")
  dir.create(export_dir, recursive = TRUE, showWarnings = FALSE)
  
  write.csv(gnps_best, file.path(export_dir, "GNPS_EB_annotation_table.csv"), row.names = FALSE)
  message("Annotation table exported : ", file.path(export_dir, "GNPS_EB_annotation_table.csv"), "\n")
  
  
  # Save parameters
  
  param_dir <- file.path(param_folder, "3_Annotation", "GNPS_EB_annotation")
  dir.create(param_dir, recursive = TRUE, showWarnings = FALSE)
  
  write_json(
    list(
      do_annotation = TRUE,
      gnps_file     = annot_list$file_name,
      min_cosine    = annot_list$min_cosine,
      max_ppm_error = annot_list$max_ppm_error
    ),
    pretty = TRUE, auto_unbox = TRUE,
    path = file.path(param_dir, "GNPS_EB_annotation_Param.json")
  )
  
  
  # Return results
  
  gnps_best
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################


#' Complete Annotation Pipeline Function
#'
#' @param data_folder Folder path to save results
#' @param param_folder Folder path to save parameters
#' @return List containing the annotated table results and parameters
#' 

perform_annotation_Compound_Discoverer <- function(feature_metadata, data_folder, param_folder) {
  
  # Single Shiny UI gathering the annotation choice, file upload and all parameters
  
  ui <- fluidPage(
    titlePanel("Compound Discoverer Annotation"),
    sidebarLayout(
      sidebarPanel(
        checkboxInput("run_annotation", "Run Annotation ?", value = FALSE),
        
        conditionalPanel(
          condition = "input.run_annotation == true",
          fileInput("file", "Upload CSV or Excel file", accept = c(".csv", ".xlsx", ".xls")),
          helpText("The file must have those columns with the exact following names : Name, `Annot. Source: Predicted Compositions`, `Annot. Source: mzCloud Search`, `Annot. Source: mzVault Search`, `Annot. DeltaMass [ppm]`, `m/z`, `RT [min]`, MS2, `Reference Ion`"),
          numericInput("ppm", "Instrument resolution (ppm) :", value = 7, min = 0.1, step = 1),
          numericInput("mz_tol_ppm", "Maximum permitted m/z tolerance (ppm) :", value = 7, min = 1, step = 1),
          numericInput("rt_tol_sec", "Maximum permitted RT tolerance (sec) :", value = 30, min = 1, step = 1)
        ),
        br(),
        actionButton("submit", "Submit", class = "btn-success")
      ),
      
      mainPanel(
        conditionalPanel(
          condition = "!input.run_annotation",
          h4(tags$b("Annotation :")),
          p("Metabolomics annotation is the process of assigning putative or confirmed chemical identities to detected features based on spectral data, databases, and matching criteria.")
        ),
        conditionalPanel(
          condition = "input.run_annotation == true",
          h4("Preview of uploaded table :"),
          reactableOutput("preview"),
          hr(),
          h4("Parameter description"),
          tags$b("Instrument resolution (ppm)"),
          p("Resolution of your instrument in ppm."),
          tags$b("Maximum permitted m/z tolerance"),
          p("Allowed difference between the m/z values of your feature_metadata and the Compound Discoverer annotation."),
          tags$b("Maximum permitted RT tolerance"),
          p("Allowed difference in retention time (RT) between your feature_metadata and the Compound Discoverer annotation.")
        )
      )
    )
  )
  
  server <- function(input, output, session) {
    
    data_compound_table <- reactive({
      req(input$file)
      ext <- tools::file_ext(input$file$name)
      
      if (ext == "csv") {
        df <- read.csv(input$file$datapath, stringsAsFactors = FALSE)
      } else if (ext %in% c("xlsx", "xls")) {
        df <- read_excel(input$file$datapath)
      } else {
        showNotification("Invalid file type. Please upload CSV or Excel.", type = "error")
        return(NULL)
      }
      
      required_cols <- c(
        "Name",
        "Annot. Source: Predicted Compositions",
        "Annot. Source: mzCloud Search",
        "Annot. Source: mzVault Search",
        "Annot. DeltaMass [ppm]",
        "m/z",
        "RT [min]",
        "MS2",
        "Reference Ion"
      )
      
      missing_cols <- setdiff(required_cols, colnames(df))
      
      if (length(missing_cols) > 0) {
        showNotification(
          paste("One or more requested columns are missing. Missing columns :", paste(missing_cols, collapse = " ; ")),
          type = "error"
        )
        return(NULL)
      }
      
      df[, required_cols, drop = FALSE]
    })
    
    output$preview <- reactable::renderReactable({
      req(data_compound_table())
      reactable(
        data_compound_table(),
        searchable = TRUE,
        sortable = TRUE,
        defaultPageSize = 15,
        highlight = TRUE,
        bordered = TRUE,
        rownames = FALSE
      )
    })
    
    observeEvent(input$submit, {
      
      if (!input$run_annotation) {
        stopApp(list(run_annotation = FALSE))
        return(invisible())
      }
      
      req(data_compound_table())
      
      stopApp(list(
        run_annotation = TRUE,
        data_compound   = data_compound_table(),
        ppm             = input$ppm,
        mz_tol_ppm      = input$mz_tol_ppm,
        rt_tol_sec      = input$rt_tol_sec
      ))
    })
    
  }
  
  annotation_inputs <- runApp(shinyApp(ui, server), launch.browser = TRUE)
  
  if (!annotation_inputs$run_annotation) {
    message("Annotation skipped by the user.")
    return(NULL)
  }
  
  data_compound        <- annotation_inputs$data_compound
  instrument_res       <- list(ppm = annotation_inputs$ppm)
  annotation_windows_params <- list(
    mz_tol_ppm = annotation_inputs$mz_tol_ppm,
    rt_tol_sec = annotation_inputs$rt_tol_sec
  )
  
  # Select useful columns
  
  data_compound <- data_compound %>%
    dplyr::filter(!is.na(Name), trimws(Name) != "", Name != "NA")
  
  # Filter by instrument resolution
  
  data_compound <- data_compound %>%
    filter(abs(`Annot. DeltaMass [ppm]`) <= instrument_res$ppm)
  
  # Filter on MS2
  
  data_compound <- data_compound %>%
    filter(MS2 == "DDA for preferred ion" |
             (MS2 == "DDA for other ion" & !is.na(`Reference Ion`) & `Reference Ion` != "[M+H]+1"))
  
  # Filter on annotation source
  
  data_compound <- data_compound %>%
    filter(rowSums(across(c(`Annot. Source: Predicted Compositions`, `Annot. Source: mzCloud Search`,
                            `Annot. Source: mzVault Search`), ~ .x == "Full match"), na.rm = TRUE) >= 1)
  
  # Add confidence level
  
  data_compound <- data_compound %>%
    mutate(Confidence_level = case_when(
      `Annot. Source: mzVault Search` == "Full match" ~ 1,
      `Annot. Source: mzCloud Search` == "Full match" ~ 2,
      `Annot. Source: Predicted Compositions` == "Full match" ~ 3,
      TRUE ~ NA_real_
    ))
  
  # Perform annotation matching
  
  mz_tol_ppm <- annotation_windows_params$mz_tol_ppm
  rt_tol_sec <- annotation_windows_params$rt_tol_sec
  
  # Prepare feature table
  
  feature_table <- feature_metadata[, c("feat_code", "mzmed", "rtmed")] %>%
    rownames_to_column(var = "feature_name") %>%
    transmute(
      Feature_name = feature_name,
      Feature_name_code = feat_code,
      mz = mzmed,
      rt_sec = rtmed
    )
  
  feature_table$Distance <- NA_real_
  feature_table$Matched_metabolite <- NA_character_
  feature_table$Confidence_level <- NA_real_
  feature_table$All_candidates <- vector("list", nrow(feature_table))
  
  # Match features to compounds
  
  for(i in seq_len(nrow(data_compound))) {
    
    Metabolite <- data_compound$Name[i]
    mz0 <- data_compound$`m/z`[i]
    rt0 <- data_compound$`RT [min]`[i] * 60  # in seconds
    conf_new <- data_compound$Confidence_level[i]
    
    mz_tol_abs <- mz0 * mz_tol_ppm / 1e6
    
    candidates <- which(
      abs(feature_table$mz - mz0) <= mz_tol_abs &
        abs(feature_table$rt_sec - rt0) <= rt_tol_sec
    )
    
    if(length(candidates) > 0) {
      
      # Add the annotated name to all candidate features
      
      for(cand in candidates) {
        feature_table$All_candidates[[cand]] <- c(feature_table$All_candidates[[cand]], Metabolite)
      }
      
      # Find the nearest match
      
      dist <- sqrt((abs(feature_table$mz[candidates] - mz0) / mz_tol_abs)^2 +
                     (abs(feature_table$rt_sec[candidates] - rt0) / rt_tol_sec)^2)
      
      nearest_index_in_candidates <- which.min(dist)
      nearest <- candidates[nearest_index_in_candidates]
      dnew <- dist[nearest_index_in_candidates]
      
      # Update feature table if better match
      
      if(is.na(feature_table$Distance[nearest]) ||
         conf_new < feature_table$Confidence_level[nearest] ||
         (conf_new == feature_table$Confidence_level[nearest] && dnew < feature_table$Distance[nearest])) {
        
        feature_table$Matched_metabolite[nearest] <- Metabolite
        feature_table$Distance[nearest] <- dnew
        feature_table$Confidence_level[nearest] <- conf_new
      }
    }
  }
  
  # Filter out non-annotated features
  
  feature_table <- feature_table %>% filter(!is.na(Matched_metabolite))
  
  
  # Prepare feature table for export
  
  feature_table_export <- feature_table
  feature_table_export$All_candidates <- sapply(feature_table_export$All_candidates, toString)
  
  # Save all results
  
  output_dir <- file.path(data_folder, "3_Annotation", "Compound_Discoverer_annotation")
  param_dir  <- file.path(param_folder, "3_Annotation", "Compound_Discoverer_annotation")
  
  dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
  dir.create(param_dir, recursive = TRUE, showWarnings = FALSE)
  
  
  write.csv(
    feature_table_export,
    file = file.path(output_dir, "CD_annotation.csv"),
    row.names = FALSE
  )
  
  # Save parameters
  
  write_json(
    list(
      instrument_res = instrument_res,
      annotation_windows = annotation_windows_params
    ),
    pretty = TRUE,
    auto_unbox = TRUE,
    path = file.path(param_dir, "CD_Annotation_parameters.json")
  )
  
  # Return results
  
  Annotation_results = list(
    Compound_Discoverer_annotation_results = feature_table_export,
    parameters = list(
      instrument_resolution = instrument_res$ppm,
      mz_tolerance = annotation_windows_params$mz_tol_ppm,
      rt_tolerance = annotation_windows_params$rt_tol_sec
    )
  )
  
  return(Annotation_results)
}


########################################################################################################################
########################################################################################################################
########################################################################################################################
########################################################################################################################
####################         STATISTICAL FUNCTIONS : Modules functions + Methods functions        ######################
########################################################################################################################
########################################################################################################################
######################################################################################################################## 


#' Main function to analyze all hypotheses
#' @param metadata_table Your metadata table with columns ("SampleNames", Hypothesis..., "PairedID)
#' @param pre_scaled_matrix Data Matrix without scaling (usually log transformed) : Samples * Features
#' @param Final_output Data matrix : without annotation (Features * Samples)
#' @param Final_output_annotated Data matrix : only with annotated features (Features * Samples)
#' @param Final_output_annotated_complete Data matrix : With both annotated and non-annotated features (Features * Samples)
#' @param Annotation_summary_table Annotation table (optional)
#' @param chart_folder File path to save charts
#' @param data_folder File path to save data files
#' @param param_folder File path to save parameters
#' @param outliers List of outlier samples to exclude
#' 


# Base structure

run_all_hypotheses <- function(metadata_table, pre_scaled_matrix, Final_output, Final_output_annotated = NULL, 
                               Final_output_annotated_complete = NULL, Annotation_summary_table = NULL,
                               chart_folder, data_folder, param_folder, outliers) {
  
  # Identify hypothesis columns
  
  hypo_cols <- grep("^Hypothesis", colnames(metadata_table), value = TRUE)
  
  
  select_hypotheses_gui <- function(hypotheses_vec) { 
    
    ui <- fluidPage(
      titlePanel("Select which hypotheses you want to be analyze :"),
      sidebarLayout(
        sidebarPanel(
          checkboxGroupInput(
            inputId = "selected_hypotheses",
            label = "Check the hypotheses to analyze :",
            choices = hypotheses_vec
          ),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel()
      )
    )
    
    server <- function(input, output, session) {
      
      observeEvent(input$submit, {
        
        if(length(input$selected_hypotheses) == 0){
          showNotification("Please select at least one hypothesis.", type = "error")
          return()
        }
        
        stopApp(input$selected_hypotheses)
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  selected_hypotheses <- select_hypotheses_gui(hypo_cols)
  
  if (is.null(selected_hypotheses)) {
    stop(paste("Operator canceled the hypothesis selector."))
  }
  
  # Main loop through each hypothesis
  
  for(hypo_name in selected_hypotheses) {
    
    
    message(paste("2_Processing hypothesis :", hypo_name))
    
    # Prepare data for this hypothesis
    
    hypo_data <- prepare_hypothesis_data(
      metadata_table = metadata_table,
      Final_output = Final_output,
      Final_output_annotated = Final_output_annotated,
      Final_output_annotated_complete = Final_output_annotated_complete,
      hypo_name = hypo_name,
      outliers = outliers,
      chart_folder = chart_folder,
      data_folder = data_folder,
      param_folder = param_folder
    )
    
    if (is.null(hypo_data)) {
      message(paste("Skipping hypothesis :", hypo_name))
      next
    }
    
    # Run all analyses for this hypothesis
    
    Hypothesis_Result <- run_hypothesis_analyses(hypo_data, pre_scaled_matrix, Annotation_summary_table,
                                                 chart_folder, data_folder, param_folder)
    
    # Global Statistical Summary
    
    run_global_stats_dashboard(Hypothesis_Result, Annotation_summary_table, hypo_data$filename_hypo)
    
    # Data save
    
    if (!dir.exists(file.path(data_folder, "Hypothesis_RDS"))) {
      dir.create(file.path(data_folder, "Hypothesis_RDS"), recursive = TRUE)
    }
    
    saveRDS(object = Hypothesis_Result, file = file.path(data_folder, "Hypothesis_RDS",
                                                         paste0(hypo_data$filename_hypo,".rds")),
            compress = "xz")
    
    message(paste("Completed analysis for hypothesis :", hypo_name))
    
    
  }
}

#-------------------------------------------------------------------------------------------

# File paths creation

create_output_dirs <- function(chart_folder, data_folder, param_folder, filename_hypo) {
  
  # Create all necessary directories
  
  dirs <- list(
    unsup_chart = file.path(chart_folder, "4_Unsupervised_analyses", filename_hypo),
    unsup_data = file.path(data_folder, "4_Unsupervised_analyses", filename_hypo),
    unsup_param = file.path(param_folder, "4_Unsupervised_analyses", filename_hypo),
    sup_chart = file.path(chart_folder, "5_Supervised_analyses", filename_hypo),
    sup_data = file.path(data_folder, "5_Supervised_analyses", filename_hypo),
    sup_param = file.path(param_folder, "5_Supervised_analyses", filename_hypo)
  )
  
  # Create directories if they don't exist
  
  for(dir in dirs) {
    if(!dir.exists(dir)) {
      dir.create(dir, recursive = TRUE)
    }
  }
  
  # Subfolders
  
  unsupervised_sub <- c("PCA", "HCPC", "Heatmap")
  supervised_sub <- c("OPLS-DA", "PLS-DA", "Random_Forest", "Volcano_Plot")
  
  # Create unsupervised subfolders
  
  for(sub in unsupervised_sub){
    for(base in c(dirs$unsup_chart, dirs$unsup_data, dirs$unsup_param)){
      sub_path <- file.path(base, sub)
      if(!dir.exists(sub_path)){
        dir.create(sub_path)
      }
    }
  }
  
  # Create supervised subfolders
  
  for(sub in supervised_sub){
    for(base in c(dirs$sup_chart, dirs$sup_data, dirs$sup_param)){
      sub_path <- file.path(base, sub)
      if(!dir.exists(sub_path)){
        dir.create(sub_path)
      }
    }
  }
  
  return(dirs)
}


#-------------------------------------------------------------------------------------------

# Data preparation

prepare_hypothesis_data <- function(metadata_table, Final_output, Final_output_annotated = NULL,
                                    Final_output_annotated_complete = NULL, hypo_name, outliers, chart_folder,
                                    data_folder, param_folder) {
  
  # Filter out NA values, and empty cases for this hypothesis
  
  metadata_hypo <- metadata_table[!is.na(metadata_table[[hypo_name]]) & base::trimws(metadata_table[[hypo_name]]) != "", ]
  
  # Check minimum group size
  
  group_counts <- table(metadata_hypo[[hypo_name]])
  
  if(any(group_counts < 5)) {
    warning(paste("Skipping hypothesis : ", hypo_name, "- some groups have less than 5 samples"))
    return(NULL)
  }
  
  # Create a readable folder name and group names
  
  
  get_filename_and_names_gui <- function(hypo_name, metadata_table) {
    
    if (!hypo_name %in% colnames(metadata_table)) {
      stop(paste0("Column '", hypo_name, "' not found in metadata_table"))
    }
    
    unique_vals <- sort(unique(metadata_table[[hypo_name]]))
    unique_vals <- as.character(unique_vals)
    
    # ---- Styles CSS ---------------------------------------------------
    app_css <- "
    body {
      background-color: #f7f8fa;
      font-family: -apple-system, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
    }
    .app-title {
      padding-bottom: 14px;
      margin-bottom: 20px;
      border-bottom: 2px solid #e1e5ea;
    }
    .app-title h2 {
      margin: 0;
      font-weight: 600;
      color: #2c3e50;
      font-size: 22px;
    }
    .well {
      background-color: #ffffff;
      border: 1px solid #e3e6e9;
      border-radius: 6px;
      box-shadow: none;
      padding: 18px;
    }
    .instructions-box {
      background-color: #ffffff;
      border: 1px solid #e3e6e9;
      border-radius: 6px;
      padding: 18px 22px;
    }
    h4 {
      color: #34495e;
      font-weight: 600;
      margin-top: 14px;
    }
    .group-badge {
      display: inline-block;
      background-color: #f1f3f5;
      color: #495057;
      border: 1px solid #dfe3e6;
      border-radius: 4px;
      padding: 3px 10px;
      margin: 3px 5px 3px 0;
      font-family: monospace;
      font-size: 13px;
    }
    #submit {
      width: 100%;
      font-weight: 500;
      padding: 8px;
      border-radius: 4px;
      margin-top: 8px;
    }
  "
    
    ui <- fluidPage(
      
      title = paste0(hypo_name),
      tags$head(tags$style(HTML(app_css))),
      
      div(class = "app-title",
          h2(paste0(hypo_name))
      ),
      
      sidebarLayout(
        
        sidebarPanel(
          width = 5,
          
          textInput("filename",
                    "File name :",
                    value = "Healthy_Treated"),
          
          tags$hr(),
          
          h4("New group names :"),
          
          uiOutput("rename_ui"),
          
          br(),
          
          actionButton("submit", "Submit", icon = icon("check"), class = "btn-success")
        ),
        
        mainPanel(
          width = 7,
          
          div(class = "instructions-box",
              
              h4("Instructions"),
              
              p("Please fill in the two fields on the left :"),
              
              tags$ul(
                tags$li(tags$b("File name :"), " name of the file where the statistical results will be saved (e.g. Healthy_Treated). Minimum 3 characters."),
                tags$li(tags$b("New group names :"), " display names for each group of the variable ", tags$b(hypo_name), " that will appear on your figures. You are under no obligation to change them.")
              ),
              
              tags$hr(),
              
              h4(paste0("Groups detected in '", hypo_name, "' :")),
              
              div(
                lapply(unique_vals, function(v) tags$span(class = "group-badge", v))
              )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      output$rename_ui <- renderUI({
        tagList(
          lapply(seq_along(unique_vals), function(i) {
            textInput(
              inputId = paste0("rename_", i),
              label   = paste0(unique_vals[i], " \u2192"),
              value   = unique_vals[i]
            )
          })
        )
      })
      
      observeEvent(input$submit, {
        
        new_names <- vapply(seq_along(unique_vals), function(i) input[[paste0("rename_", i)]], character(1))
        
        if (nchar(input$filename) < 3) {
          showNotification("Please enter a filename containing at least 3 characters.", type = "error")
          return()
        }
        
        if (any(nchar(new_names) == 0)) {
          showNotification("Please fill in all group names (at least 1 character each).", type = "error")
          return()
        }
        
        stopApp(list(
          filename = input$filename,
          names    = new_names
        ))
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  filename_and_names <- get_filename_and_names_gui(hypo_name, metadata_hypo)
  if (is.null(filename_and_names)) return(NULL)
  
  # File name
  
  filename_hypo <- filename_and_names$filename
  
  # New Group Names
  
  old_g_names <- sort(unique(metadata_hypo[[hypo_name]]))
  new_g_names <- filename_and_names$names
  
  metadata_hypo[[hypo_name]] <- as.character(new_g_names[match(metadata_hypo[[hypo_name]], old_g_names)])
  
  # Sub-folders creation
  
  paths <- create_output_dirs(chart_folder, data_folder, param_folder, filename_hypo)
  
  # Matrix that will be used for statistical analysis
  
  run_stats_matrix_choice_gui <- function(hypo_name, Final_output, Final_output_annotated = NULL,
                                          Final_output_annotated_complete = NULL) {
    
    ui <- fluidPage(
      
      titlePanel(paste0("Select which matrix you want to use for your Statistical Analysis (Hypothesis : ", hypo_name, ")")),
      
      sidebarLayout(
        sidebarPanel(
          selectInput(
            inputId = "matrix_choice",
            label = "Choose the Matrix :",
            choices = c(
              "Without Annotation" = "Final_output",
              
              "With Annotation (Sub-matrix)" =
                "Final_output_annotated",
              
              "With Annotation (Complete matrix)" =
                "Final_output_annotated_complete"
            ),
            
            selected = "Final_output_annotated_complete"
          ),
          br(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        
        mainPanel(
          h4("Matrix Description"),
          
          tags$b("Without Annotation"),
          p("Complete matrix with name code : M...T..."),
          
          tags$b("With Annotation (Sub-matrix)"),
          p("Sub-matrix only with features that had a match."),
          
          tags$b("With Annotation (Complete matrix)"),
          p("Complete matrix with features that had a match and name code without a match."))
      )
    )
    
    server <- function(input, output, session) {
      
      available_matrices <- list(
        Final_output = Final_output,
        Final_output_annotated = Final_output_annotated,
        Final_output_annotated_complete = Final_output_annotated_complete
      )
      
      observeEvent(input$submit, {
        if (is.null(available_matrices[[input$matrix_choice]])) {
          showNotification("The Selected matrix is not available.", type = "error")
        } else {
          stopApp(input$matrix_choice)
        }
      })
      
    }
    
    runApp(shinyApp(ui = ui, server = server), launch.browser = TRUE)
  }
  
  matrix_choice <- run_stats_matrix_choice_gui(hypo_name, Final_output, Final_output_annotated, Final_output_annotated_complete)
  if (is.null(matrix_choice)) return(NULL)
  
  # Matrix selection
  
  if (matrix_choice == "Final_output") {
    
    stats_matrix <- Final_output
    
  } else if (matrix_choice == "Final_output_annotated") {
    
    stats_matrix <- Final_output_annotated
    
  } else if (matrix_choice == "Final_output_annotated_complete") {
    
    stats_matrix <- Final_output_annotated_complete
    
  }
  
  # Filter matrix to keep only relevant samples
  
  samples_to_keep <- setdiff(metadata_hypo$SampleName, outliers)
  metadata_hypo <- metadata_hypo[metadata_hypo$SampleName %in% samples_to_keep, , drop = FALSE]
  
  # Unsupervised Matrix
  
  stats_matrix <- stats_matrix[, colnames(stats_matrix) %in% samples_to_keep, drop = FALSE]
  stats_matrix <- t(stats_matrix) # Samples * Features
  stats_matrix_unsup <- stats_matrix
  
  # Supervised Matrix : Adding Group identification
  
  stats_matrix_sup <- as.data.frame(stats_matrix, check.names = FALSE) %>%
    rownames_to_column(var = "Sample") %>%
    left_join(metadata_hypo[, c("SampleName", hypo_name)], by = c("Sample" = "SampleName")) %>%
    column_to_rownames(var = "Sample")
  
  stats_matrix_sup <- stats_matrix_sup[!is.na(stats_matrix_sup[[hypo_name]]) &
                                         base::trimws(stats_matrix_sup[[hypo_name]]) != "", ]   # NA removing and empty cases
  
  
  return(list(
    hypo_name = hypo_name,
    metadata_hypo = metadata_hypo,
    groups = unique(metadata_hypo[[hypo_name]]),
    stats_matrix_unsup = stats_matrix_unsup,
    stats_matrix_sup = stats_matrix_sup,
    paths = paths,
    matrix_choice = matrix_choice,
    filename_hypo = filename_hypo
  ))
}

#-------------------------------------------------------------------------------------------

# Analysis Function

run_hypothesis_analyses <- function(hypo_data, pre_scaled_matrix, Annotation_summary_table, chart_folder,
                                    data_folder, param_folder) {
  
  # Unpack data
  
  hypo_name <- hypo_data$hypo_name
  metadata_hypo <- hypo_data$metadata_hypo
  groups <- hypo_data$groups
  stats_matrix_unsup <- hypo_data$stats_matrix_unsup
  stats_matrix_sup <- hypo_data$stats_matrix_sup
  matrix_choice <- hypo_data$matrix_choice
  paths <- hypo_data$paths
  
  
  # Function to choose the color palette for the groups
  
  get_pca_palette <- function(groups, n_palette_steps = 50) {
    
    groups <- groups
    
    ui <- fluidPage(
      titlePanel("Color selector :"),
      
      sidebarLayout(
        sidebarPanel(
          selectInput("palette", "Viridis Palette :",
                      choices = c("viridis","turbo","magma","plasma",
                                  "inferno","cividis","rocket","mako"),
                      selected = "turbo"),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        
        mainPanel(
          h4("Palette preview :"),
          uiOutput("palette_preview"),
          hr(),
          h4("Assign colors to groups :"),
          uiOutput("color_inputs")
        )
      )
    )
    
    server <- function(input, output, session) {
      
      # Reactive Palette
      
      palette_colors <- reactive({
        viridisLite::viridis(
          n = n_palette_steps,
          option = input$palette
        )
      })
      
      # Full palette with labels shown below
      
      output$palette_preview <- renderUI({
        cols <- palette_colors()
        tagList(
          div(
            style="display:flex;flex-wrap:wrap;align-items:flex-end;",
            lapply(seq_along(cols), function(i) {
              div(
                style="display:flex;flex-direction:column;align-items:center;margin:1px;",
                div(
                  style=paste0(
                    "width:25px;height:25px;background:", cols[i],
                    ";margin:1px;border-radius:5px;"
                  )
                ),
                span(style="font-size:12px;", i)
              )
            })
          )
        )
      })
      
      # Inputs per group
      
      output$color_inputs <- renderUI({
        
        cols <- palette_colors()
        default_idx <- round(seq(1, n_palette_steps, length.out = length(groups)))
        
        tagList(
          lapply(seq_along(groups), function(i) {
            fluidRow(
              column(
                6,
                selectInput(
                  inputId = paste0("col_", i),
                  label = groups[i],
                  choices = seq_along(cols),       
                  selected = default_idx[i]
                )
              ),
              column(
                6,
                uiOutput(paste0("preview_", i))
              )
            )
          })
        )
      })
      
      # Individual Preview per group
      
      for (i in seq_along(groups)) {
        local({
          i_local <- i
          output[[paste0("preview_", i_local)]] <- renderUI({
            idx <- as.numeric(input[[paste0("col_", i_local)]])
            cols <- palette_colors()
            col <- cols[idx]
            div(
              style = paste0(
                "width:40px;height:25px;background:", col,
                ";border:1px solid #333;border-radius:4px;margin-top:25px;"
              )
            )
          })
        })
      }
      
      # Submit
      
      observeEvent(input$submit, {
        selected_idx <- sapply(seq_along(groups), function(i) {
          as.numeric(input[[paste0("col_", i)]])
        })
        cols <- palette_colors()
        selected_colors <- cols[selected_idx]
        names(selected_colors) <- groups
        
        stopApp(selected_colors)  
        
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  chosen_color <- get_pca_palette(groups, 100)      
  
  #---------------------------- Unsupervised analyses
  
  PCA_res <- run_pca_analysis(stats_matrix_unsup, metadata_hypo, hypo_name, paths, chosen_color)
  
  HCPC_res <- run_hcpc_analysis(stats_matrix_unsup, hypo_name, paths, chosen_color, PCA_res$Hypo_coords, PCA_res$tab_pca)
  
  HEATMAP_res <- run_heatmap_analysis(stats_matrix_unsup, metadata_hypo, hypo_name, paths, chosen_color)
  
  
  #-------------------------- Supervised analyses
  
  # Function to choose the VIP score treshold
  
  get_VIP_score_threshold <- function() {
    
    ui <- fluidPage(
      titlePanel("Selecting the minimum score for a variable to be considered as a VIP (OPLS-DA and PLS-DA)"),
      
      sidebarLayout(
        sidebarPanel(
          
          numericInput(
            inputId = "VIP_threshold",
            label = "Choose the VIP-score threshold :",
            value = 2,
            min = 0,
            max = 5,
            step = 0.5
          ),
          
          br(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        
        mainPanel(
          
          h4("VIP Score Threshold — Usage & Impact on the Volcano Plot"),
          
          wellPanel(
            style = "background-color: #f0f7ff; border-left: 4px solid #2196F3; padding: 15px;",
            
            h4(icon("info-circle"), " What is a VIP score?",
               style = "color: #1565C0; margin-top: 0;"),
            
            p("The", strong("Variable Importance in Projection (VIP)"), "score quantifies the contribution
       of each feature to the group discrimination captured by the",
              strong("PLS-DA and OPLS-DA"), "predictive component.",
              "A VIP ≥ 1 is conventionally considered relevant ; a threshold of",
              strong("≥ 2"), "is more conservative and selects only the most discriminant features.")
          ),
          
          hr(),
          
          h4(icon("chart-bar"), " Two complementary Volcano Plot strategies"),
          
          p("The statistical testing pipeline runs two parallel analyses on the same dataset :"),
          
          fluidRow(
            
            column(6,
                   wellPanel(
                     style = "border-left: 4px solid #4CAF50;",
                     h5(icon("check-circle"), strong(" All features — Confirmatory"),
                        style = "color: #2E7D32;"),
                     p("Statistical tests (Linear Mixed Model: paired data / Wilcoxon: non-paired data) are applied to ",
                       strong("all detected features"),
                       ". P-values are then adjusted using the Benjamini-Hochberg (BH) multiple testing correction across the full feature set."),
                     tags$ul(
                       tags$li("Maximum statistical rigour"),
                       tags$li("Higher multiple testing penalty"),
                       tags$li("Results are conservative but robust")
                     )
                   )
            ),
            
            column(6,
                   wellPanel(
                     style = "border-left: 4px solid #FF9800;",
                     h5(icon("filter"), strong(" VIP pre-filtered — Exploratory"),
                        style = "color: #E65100;"),
                     p("Tests are restricted to features with",
                       strong("VIP ≥ selected threshold"),
                       "from PLS-DA and/or OPLS-DA, then BH correction is applied within this reduced set."),
                     tags$ul(
                       tags$li("Reduced multiple testing burden"),
                       tags$li("Fewer tests → less stringent BH correction → more features reach significance"),
                       tags$li(strong("Risk of false positives"), 
                               " inflated by the feature pre-selection bias (double-dipping)"),
                     )
                   )
            )
          ),
          
          hr(),
          
          wellPanel(
            style = "background-color: #fff8e1; border-left: 4px solid #FFC107;",
            h5(icon("exclamation-triangle"), strong(" Interpretation guidance"),
               style = "color: #F57F17; margin-top: 0;"),
            tags$ul(
              tags$li(strong("Significant in both strategies → "),
                      "strong candidate, signal is robust regardless of the testing approach."),
              tags$li(strong("Significant in exploratory only → "),
                      "weak signal, requires independent validation before any biological conclusion."),
              tags$li(strong("Significant in confirmatory only → "),
                      "reliable hit not necessarily captured by the multivariate model.")
            )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      # Return the value when Submit is clicked
      
      observeEvent(input$submit, {
        stopApp(input$VIP_threshold)
      })
    }
    
    # Launch Shiny app
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
    
  }
  VIP_score_threshold <- get_VIP_score_threshold()
  
  PLSDA_res <- run_plsda_analysis(stats_matrix_sup, hypo_name, paths, chosen_color, VIP_score_threshold)
  
  OPLSDA_res <- run_oplsda_analysis(stats_matrix_sup, hypo_name, paths, chosen_color, VIP_score_threshold)
  
  RF_res <- run_RF_analysis(stats_matrix_sup, hypo_name, paths)
  
  VOLCANO_res <- run_volcano_analysis(pre_scaled_matrix, matrix_choice, metadata_hypo, hypo_name,
                                      paths, PLSDA_res$vip, OPLSDA_res$vip, Annotation_summary_table)
  
  VIP_plot_res <- run_vip_summary_plot(
    pre_scaled_matrix, matrix_choice, metadata_hypo, hypo_name,
    paths, chosen_color, PLSDA_res$all_vip, OPLSDA_res$all_vip, Annotation_summary_table)
  
  VIP_boxplot_res <- run_vip_boxplot(pre_scaled_matrix, matrix_choice, metadata_hypo, hypo_name,
                                     paths, chosen_color, PLSDA_res$all_vip, OPLSDA_res$all_vip,
                                     Annotation_summary_table, VOLCANO_res)
  
  VIP_heatmap_res <- run_vip_heatmap(stats_matrix_sup, matrix_choice, metadata_hypo, hypo_name,
                                     paths, chosen_color, PLSDA_res$all_vip, OPLSDA_res$all_vip,
                                     Annotation_summary_table, VOLCANO_res)
  
  
  # Return list
  
  return(list(
    PCA = PCA_res,
    HCPC = HCPC_res,
    HEATMAP = HEATMAP_res,
    PLSDA = PLSDA_res,
    OPLSDA = OPLSDA_res,
    VIP_plot = VIP_plot_res,
    VIP_boxplot = VIP_boxplot_res,
    VIP_heatmap = VIP_heatmap_res,
    RF = RF_res,
    VOLCANO = VOLCANO_res,
    colors = chosen_color
  ))
}


#-------------------------------------------------------------------------------------------


########################################################################################################################
######################          STATISTICAL FUNCTIONS : UNSUPERVISED ANALYSIS              #############################
########################################################################################################################


#-------------------------------------------------------------------------------------------

#' Perform Principal Component Analysis (PCA) 
#'
#' @param stats_matrix Input data matrix centered and scaled : Samples * Features
#' @param metadata_hypo Metadata table containing sample information : columns ("SampleName", hypo_name)
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name in the hypothesis currently being tested (Named chr)
#' @return List containing PCA results and plot


run_pca_analysis <- function(stats_matrix, metadata_hypo, hypo_name, paths, chosen_color) {
  
  # --- Remove near-zero variance -------------------------------------------
  
  nzv <- nearZeroVar(stats_matrix, names = TRUE)
  if (length(nzv) > 0) {
    message(sprintf("PCA — %d feature(s) removed due to near-zero variance.", length(nzv)))
    stats_matrix <- stats_matrix[, !colnames(stats_matrix) %in% nzv]
  }
  
  # Join metadata once
  
  group_vec <- setNames(
    metadata_hypo[[hypo_name]][match(rownames(stats_matrix), metadata_hypo$SampleName)],
    rownames(stats_matrix)
  )
  
  samples_with_group <- rownames(stats_matrix)[!is.na(group_vec)]
  matrix_filtered    <- stats_matrix[samples_with_group, , drop = FALSE]
  group_filtered     <- as.factor(group_vec[samples_with_group])
  
  # ── UI ────────────────────────────────────────────────────────────────────
  
  ui <- fluidPage(
    titlePanel(paste0("PCA — ", hypo_name)),
    sidebarLayout(
      sidebarPanel(
        
        h4("Axes"),
        uiOutput("axis_selectors"),
        
        hr(),
        h4("Display options"),
        # Toggle display of the PERMANOVA stats annotation (F-value/R2/p-value) on the plot
        checkboxInput("show_stats",    "Show metrics (F-value/R²/p-value)", value = TRUE),
        checkboxInput("show_ellipses", "Confidence ellipses (95%)", value = TRUE),
        checkboxInput("show_labels",   "Sample labels",             value = FALSE),
        
        hr(),
        h4("Export"),
        # Custom filename : if left empty, the automatic name is used instead
        textInput("fig_name", "File name (without extension)", value = ""),
        actionButton("export_fig", "Save figure", class = "btn-primary"),
        textOutput("export_status"),
        hr(),
        actionButton("save", "Continue", class = "btn-success")
      ),
      mainPanel(plotOutput("pca_plot", height = "75vh"))
    )
  )
  
  # ── Server ────────────────────────────────────────────────────────────────
  
  server <- function(input, output, session) {
    
    # Exportation safety
    
    fig_exported <- reactiveVal(FALSE)
    export_msg   <- reactiveVal("")
    
    # PCA — recomputed only when centering changes
    
    pca_result <- reactive({
      
      res_quality <- pcaMethods::pca(
        matrix_filtered,
        method = if (any(is.na(matrix_filtered))) "rnipals" else "svd",
        nPcs   = min(10L, ncol(matrix_filtered) - 1L),
        cv     = "q2", scale = "none", center = FALSE
      )
      
      pcaMethods::pca(
        matrix_filtered,
        method = if (any(is.na(matrix_filtered))) "rnipals" else "svd",
        nPcs   = pmax(which.max(res_quality@cvstat), 2L),
        scale  = "none", center = FALSE
      )
    })
    
    # Axis selectors — updated dynamically based on number of components
    
    output$axis_selectors <- renderUI({
      n_pcs      <- ncol(pcaMethods::scores(pca_result()))
      pc_choices <- setNames(seq_len(n_pcs), paste0("PC", seq_len(n_pcs)))
      tagList(
        selectInput("pc_x", "X axis :", choices = pc_choices, selected = 1),
        selectInput("pc_y", "Y axis :", choices = pc_choices, selected = 2)
      )
    })
    
    # Scores + group info
    
    tab_pca <- reactive({
      
      req(input$pc_x, input$pc_y)
      
      scores_m <- pcaMethods::scores(pca_result())
      pc_x     <- as.integer(input$pc_x)
      pc_y     <- as.integer(input$pc_y)
      
      data.frame(
        PCx    = scores_m[, pc_x],
        PCy    = scores_m[, pc_y],
        Sample = rownames(scores_m),
        Group  = group_filtered[rownames(scores_m)]
      )
    })
    
    # PERMANOVA
    
    permanova_stats <- reactive({
      
      req(input$pc_x, input$pc_y)
      
      scores_m <- pcaMethods::scores(pca_result())
      groups   <- group_filtered[rownames(scores_m)]
      
      if (length(unique(groups)) < 2L || any(table(groups) < 2L))
        return(NULL)
      
      res <- vegan::adonis2(
        vegan::vegdist(scores_m, method = "euclidean") ~ groups,
        permutations = 999
      )
      
      list(f_value = res$F[1], p_value = res$`Pr(>F)`[1], r_squared = res$R2[1])
      # R2      : proportion of total variance in dissimilarity explained by the factor.
      # p-value : probability of observing such clustering by chance if groups had no effect.
    })
    
    # ── Plot Creation ────────────────────────────────────────────────────────
    
    plot_reactive <- reactive({
      
      req(input$pc_x, input$pc_y)
      
      res     <- pca_result()
      df_plot <- tab_pca()
      stats   <- permanova_stats()
      pc_x    <- as.integer(input$pc_x)
      pc_y    <- as.integer(input$pc_y)
      
      df_plot$Group <- factor(df_plot$Group, levels = names(chosen_color))
      
      p <- ggplot(df_plot, aes(x = PCx, y = PCy, fill = Group, colour = Group)) +
        geom_point(size = 4.5, shape = 21, stroke = 1.2, alpha = 0.9, colour = "black") +
        scale_fill_manual(values   = chosen_color) +
        scale_colour_manual(values = chosen_color) +
        labs(
          x      = paste0("PC", pc_x, " (", round(res@R2[pc_x] * 100, 1), "%)"),
          y      = paste0("PC", pc_y, " (", round(res@R2[pc_y] * 100, 1), "%)"),
          fill   = "", colour = ""
        ) +
        theme_classic() +
        theme(
          legend.key.size      = unit(0.4, "cm"),
          plot.margin          = margin(10, 10, 10, 10),
          legend.position      = c(0.97, 0.99),
          legend.justification = c(1, 1),
          legend.text          = element_text(size = 14),
          axis.title.x         = element_text(size = 18, face = "bold", margin = margin(t = 12)),
          axis.title.y         = element_text(size = 18, face = "bold", margin = margin(r = 12)),
          axis.text            = element_text(size = 13),
          panel.grid.major     = element_blank(),
          panel.grid.minor     = element_blank(),
          panel.border         = element_rect(color = "black", fill = NA, linewidth = 0.8),
          axis.line            = element_blank(),
          axis.ticks           = element_line(color = "black", linewidth = 0.8),
          axis.ticks.length    = unit(-6, "pt")
        ) +
        coord_cartesian(clip = "off")
      
      if (input$show_ellipses)
        p <- p + stat_ellipse(
          aes(group = Group), level = 0.95,
          linetype = "solid", linewidth = 0.8, alpha = 0.05,
          geom = "polygon", show.legend = FALSE
        )
      
      if (input$show_labels)
        p <- p + ggrepel::geom_text_repel(
          aes(label = Sample), size = 3, max.overlaps = 30, show.legend = FALSE
        )
      
      # Stats annotation is optional : lets the operator export a clean figure
      # without metrics for publication purposes
      if (!is.null(stats) && isTRUE(input$show_stats))
        p <- p + annotate(
          "label", x = Inf, y = -Inf, hjust = 1.05, vjust = -0.3,
          label = paste0(
            "F-value : ", round(stats$f_value,   3), "\n",
            "R²      : ", round(stats$r_squared, 3), "\n",
            "p-value : ", round(stats$p_value,   3)
          ),
          size = 4.5, fill = alpha("white", 0.6)
        )
      p
    })
    
    output$pca_plot      <- renderPlot({ plot_reactive() })
    output$export_status <- renderText({ export_msg() })
    
    # ── Export figure ────────────────────────────────────────────────────────
    
    observeEvent(input$export_fig, {
      
      req(input$pc_x, input$pc_y)
      
      pc_x <- as.integer(input$pc_x)
      pc_y <- as.integer(input$pc_y)
      
      # ── Add suffix if sample labels are displayed ─────────────────────────
      label_suffix <- if (isTRUE(input$show_labels)) "_labelled" else ""
      
      # ── Filename : the one typed by the operator, otherwise the automatic name ─
      custom_name <- trimws(input$fig_name)
      
      if (nzchar(custom_name)) {
        # Strip a possible ".pdf" extension already typed by the user
        custom_name <- sub("\\.pdf$", "", custom_name, ignore.case = TRUE)
        fig_name <- paste0(custom_name, ".pdf")
      } else {
        fig_name <- paste0("PCA_", hypo_name, "_PC", pc_x, "vsPC", pc_y, label_suffix, ".pdf")
      }
      
      fig_path <- file.path(paths$unsup_chart, "PCA", fig_name)
      
      ggsave(fig_path, plot = plot_reactive(), width = 10, height = 10, bg = "white")
      
      fig_exported(TRUE)
      export_msg(paste0("✔ Saved : ", fig_name))
    })
    
    # ── Continue & exit ──────────────────────────────────────────────────────
    
    observeEvent(input$save, {
      
      # Safety : at least one figure must have been exported
      
      if (!fig_exported()) {
        showNotification(
          "⚠ Please export at least one figure before continuing.",
          type     = "warning",
          duration = 4
        )
        return()
      }
      
      p        <- plot_reactive()
      res      <- pca_result()
      scores_m <- pcaMethods::scores(res)
      
      params <- list(
        pc_x          = as.integer(input$pc_x),
        pc_y          = as.integer(input$pc_y),
        show_stats    = input$show_stats,
        show_ellipses = input$show_ellipses,
        show_labels   = input$show_labels
      )
      
      saveRDS(res, file.path(paths$unsup_data, "PCA", paste0("PCA_model_", hypo_name, ".rds")))
      
      write.csv(
        tab_pca(),
        file.path(paths$unsup_data, "PCA", paste0("PCA_", hypo_name, "_df.csv")),
        row.names = TRUE
      )
      
      jsonlite::write_json(
        params,
        file.path(paths$unsup_data, "PCA", paste0("PCA_", hypo_name, "_params.json")),
        pretty = TRUE, auto_unbox = TRUE
      )
      
      stopApp(list(
        model       = res,
        plot        = p,
        tab_pca     = tab_pca(),
        Hypo_coords = scores_m[tab_pca()$Sample, , drop = FALSE],
        stats       = permanova_stats(),
        parameters  = params
      ))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}

#-------------------------------------------------------------------------------------------

#' Perform Hierarchical Clustering on Principal Components (HCPC) 
#'
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name in the hypothesis currently being tested (Named chr)
#' @param coords Coordinates of the PCA components for the samples in the hypothesis under test 
#' @param tab_PCA Coordinates of the PCA components for the samples in the hypothesis under test + 1 column with Group identification
#' @return List containing HCPC results and plot
#' 

run_hcpc_analysis <- function(stats_matrix, hypo_name, paths, chosen_color, coords, tab_pca){
  
  # HCPC will not be performed if NA in data
  
  if(any(is.na(stats_matrix))){
    # NULL return 
    return(NULL)
  }
  
  ######################################  Clustering  #############################
  
  # Function to determine the distance and clustering methods for the HCPC
  
  select_HCPC_methods_gui <- function() {
    
    ui <- fluidPage(
      titlePanel("Clustering Parameters Selector for the HCPC"),
      sidebarLayout(
        sidebarPanel(
          selectInput("dist_method",
                      "Distance method (dist)",
                      choices = c("euclidean", "manhattan", "maximum", "canberra", "minkowski"),
                      selected = "euclidean"),
          br(),
          
          selectInput("hclust_method",
                      "Hierarchical clustering method (hclust)",
                      choices = c("ward.D", "ward.D2", "complete", "average", "single", "centroid"),
                      selected = "ward.D2"),
          br(),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        
        mainPanel(
          h3("Parameter Description"),
          
          tabsetPanel(
            tabPanel(title = "Distance method",
                     br(),
                     p("Definition : Defines how dissimilarity between samples is computed."),
                     br(),
                     
                     tags$b("Euclidean"),
                     p("Standard geometric distance. Sensitive to scale and large values."),
                     
                     tags$b("Manhattan"),
                     p("Sum of absolute differences. More robust to outliers than Euclidean distance."),
                     
                     tags$b("Maximum"),
                     p("Uses the largest absolute difference across variables. Focuses on the most divergent feature."),
                     
                     tags$b("Canberra"),
                     p("Weighted distance giving more importance to small values. Sensitive to noise and zeros."),
                     
                     tags$b("Minkowski"),
                     p("Generalized distance including Euclidean and Manhattan as special cases.")
            ),
            
            tabPanel(title = "Hierarchical clustering method",
                     br(),
                     p("Definition : Defines how clusters are merged during hierarchical clustering."),
                     br(),
                     
                     tags$b("Ward.D2"),
                     p("Minimizes the increase in within-cluster variance. Recommended for quantitative data and compatible with Euclidean distance."),
                     
                     tags$b("Ward.D"),
                     p("Older implementation of Ward criterion. Less consistent than Ward.D2 and generally not recommended."),
                     
                     tags$b("Complete"),
                     p("Uses the maximum distance between clusters. Produces compact and well-separated clusters."),
                     
                     tags$b("Average"),
                     p("Uses the average distance between all pairs of observations. Provides balanced clustering."),
                     
                     tags$b("Single"),
                     p("Uses the minimum distance between clusters. Sensitive to chaining effects."),
                     
                     tags$b("Centroid"),
                     p("Uses the distance between cluster centroids. Can lead to inversions in dendrogram structure.")
                     
            )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      observeEvent(input$submit, {
        
        if (input$hclust_method == "ward.D2" && input$dist_method != "euclidean") {
          showNotification("Ward.D2 requires euclidean distance", type = "error")
          return()
        }
        
        stopApp(list(
          dist_method = input$dist_method,
          hclust_method = input$hclust_method
        ))
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  HCPC_methods <- select_HCPC_methods_gui()
  
  # Distance Calculation
  
  dist_matrix <- dist(coords, method = HCPC_methods$dist_method)
  
  # Euclidean: The most common distance, measures the length of a straight line segment between two points; suitable for continuous and well-balanced data.
  # Manhattan️: Sum of absolute differences on each dimension (grid movements, such as in a city); useful if the variables have different scales.
  # Minkowski: Generalisation of the previous two with a power parameter p, adjusts between Euclidean (p=2) and Manhattan (p=1).
  
  # Hierarchical Clustering
  
  hclust_res <- hclust(dist_matrix, method = HCPC_methods$hclust_method)
  
  # ward.D️: Minimises intra-cluster variance at each merger ; produces compact and balanced clusters.
  # complete: Distance between two clusters = maximum distance between their points; favours well-separated clusters.
  # single: Minimum distance between two clusters; forms chains of points (risk of ‘snake’ effect).
  # average: Average distance between all points in both clusters; balance between complete and single.
  
  ############################## HCPC Creation ###########################################
  
  # Extracting data from the dendrogram
  
  dendro <- dendro_data(hclust_res)
  
  # Labelling
  
  dendro_labels <- dendro$labels
  
  # Add group information to labels
  
  dendro_labels <- dendro_labels %>%
    left_join(tab_pca[, c("Sample", "Group")], by = c("label" = "Sample"))
  
  dendro_labels <- dendro_labels %>% filter(!is.na(Group))
  
  # HCPC
  
  HCPC_chart <- ggplot() +
    geom_segment(data = dendro$segments, aes(x = x, y = y, xend = xend, yend = yend)) + # Plotting the branches of the dendrogram
    geom_text(data = dendro_labels,
              aes(x = x, y = y, label = label, color = Group),
              hjust = 1, angle = 90, size = 5) +
    labs(x = "Samples",
         y = paste0("Distance (", HCPC_methods$dist_method,")")) +
    scale_color_manual(values = chosen_color) +
    theme_minimal() +
    theme(plot.title = element_blank()) +
    theme(legend.title = element_text(size = 16, face = "bold"),
          legend.text = element_text(size = 14)) +
    theme(axis.title.x = element_text(size = 20, margin = margin(t = 20))) +
    theme(axis.title.y = element_text(size = 20, margin = margin(r = 20))) +
    theme(plot.background = element_rect(fill = "white", color = NA)) +
    theme(plot.margin = margin(10, 10, 10, 10)) +  # Increases the bottom margin
    theme(panel.grid = element_blank()) +
    coord_cartesian(ylim = c(-30, max(dendro$segments$yend)))
  
  # Chart and Parameters save 
  
  write_json(HCPC_methods, pretty = TRUE, auto_unbox = TRUE,
             path = file.path(paths$unsup_param, "HCPC", paste0("HCPC_", hypo_name,"_methods.json")))
  
  ggsave(file.path(paths$unsup_chart, "HCPC", paste0("HCPC_", hypo_name, "_chart.pdf")),
         plot = HCPC_chart, width = 21, height = 7, bg = "white")
  
  # Return list
  
  return(list(
    hcpc_model = hclust_res,
    plot = HCPC_chart,
    dist_matrix = dist_matrix,
    methods = HCPC_methods
  ))
  
}


#-------------------------------------------------------------------------------------------


#' Perform Heatmap analysis
#' 
#' @param stats_matrix Input data matrix : Samples * Features
#' @param metadata_hypo Metadata table containing sample information : columns ("SampleName", hypo_name)
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name in the hypothesis currently being tested (Named chr)
#' @return List containing Heatmap parameters and plot
#' 

run_heatmap_analysis <- function(stats_matrix, metadata_hypo, hypo_name, paths, chosen_color){

  # Heatmap will not be performed if NA in data
  
  if(any(is.na(stats_matrix))){
    # NULL return 
    return(NULL)
  }
  
  # ComplexHeatmap::Heatmap needs a matrix : Features * Samples
  
  stats_matrix <- base::t(stats_matrix)
  
  # Creating annotations
  
  annotations <- data.frame(
    Sample = metadata_hypo$SampleName,
    Group  = metadata_hypo[[hypo_name]]
  )
  
  annotations$Group <- factor(annotations$Group, levels = unique(annotations$Group))
  annotations <- tibble::column_to_rownames(annotations, var = "Sample")
  
  # Alignment
  
  common_samples <- intersect(colnames(stats_matrix), rownames(annotations))
  stats_matrix <- stats_matrix[, common_samples, drop = FALSE]
  annotations <- annotations[common_samples, , drop = FALSE]
  
  annotations <- annotations[colnames(stats_matrix), , drop = FALSE] 
  
  # Creating the colour annotation
  
  col_ann <- HeatmapAnnotation(
    df = annotations,
    col = list(Group = chosen_color)
  )
  
  # Custom order : samples ordered by Group
  
  column_custom_order <- rownames(annotations)[order(annotations$Group)]
  
  # Optional : provide column_split to draw group blocks automatically
  
  column_split_vec <- annotations$Group
  
  # Optimal number of clusters calculation (on row clustering)
  
  set.seed(31)
  
  gap <- clusGap(
    stats_matrix,
    FUN = function(x, k) kmeans(x, centers = k, nstart = 25),
    K.max = 8,
    B = 50
  )
  
  suggested_k <- maxSE(
    gap$Tab[, "gap"],
    gap$Tab[, "SE.sim"],
    method = "firstSEmax"
  )
  
  # Heatmap Creation
  
  heatmap_builder <- function(stats_matrix, col_ann, column_custom_order, column_split_vec, suggested_k){
    
    ui <- fluidPage(
      titlePanel("Heatmap Builder"),
      
      sidebarLayout(
        sidebarPanel(
          
          numericInput("row_km", paste0("Row k-means clusters (suggested number of cluster according to the Gap Statistic method = ", suggested_k, ")"),
                       value = suggested_k, min = 1, max = nrow(stats_matrix), step = 1),
          
          checkboxInput("cluster_rows", "Cluster rows", TRUE),
          
          checkboxInput("cluster_columns", "Cluster columns", TRUE),
          
          selectInput("clustering_distance_rows", "Row clustering distance",
                      choices = c("euclidean","manhattan","maximum","canberra","binary","minkowski"),
                      selected = "euclidean"),
          
          selectInput("clustering_distance_columns", "Column clustering distance",
                      choices = c("euclidean","manhattan","maximum","canberra","binary","minkowski"),
                      selected = "euclidean"),
          
          selectInput("clustering_method_rows", "Row clustering method",
                      choices = c("ward.D","ward.D2","complete","average","single","centroid"),
                      selected = "ward.D2"),
          
          selectInput("clustering_method_columns", "Column clustering method",
                      choices = c("ward.D","ward.D2","complete","average","single","centroid"),
                      selected = "ward.D2"),
          
          sliderInput("row_dend_width", "Row dendrogram width (cm)", 0.5, 10, 2, 0.5),
          
          sliderInput("column_dend_height", "Column dendrogram height (cm)", 0.5, 10, 3, 0.5),
          
          sliderInput("row_gap", "row_gap (cm)", 0, 2, 0.5, 0.1),
          
          checkboxInput("show_row_names", "Show row names", FALSE),
          
          checkboxInput("show_row_dend", "Show row dendrogram", TRUE),
          
          checkboxInput("show_parent_dend_line", "Show parent dendrogram lines", TRUE),
          
          checkboxInput("use_column_split", "Use column split", TRUE),
          
          checkboxInput("use_column_order", "Use custom column order", TRUE),
          
          actionButton("submit", "Submit", class = "btn-success")
          
        ),
        
        mainPanel(
          tabsetPanel(
            tabPanel("Parameter Description",
                     
                     hr(),
                     tags$b("Row k-means clustering"),
                     p("Apply k-means clustering on rows. If > 1, heatmap rows are split by k-means."),
                     
                     tags$b("Cluster rows"),
                     p("Enable hierarchical clustering on rows."),
                     
                     tags$b("Cluster columns"),
                     p("Enable hierarchical clustering on columns."),
                     
                     tags$b("Row clustering distance"),
                     p("Distance metric used for hierarchical clustering of rows."),
                     
                     tags$b("Column clustering distance"),
                     p("Distance metric used for hierarchical clustering of columns."),
                     
                     tags$b("Row clustering method"),
                     p("Agglomeration method used for row hierarchical clustering."),
                     
                     tags$b("Column clustering method"),
                     p("Agglomeration method used for column hierarchical clustering."),
                     
                     tags$b("Row dendrogram width"),
                     p("Adjusts the width of the row dendrogram lines."),
                     
                     tags$b("Column dendrogram height"),
                     p("Height of the column dendrogram."),
                     
                     tags$b("Row gap"),
                     p("Adds a space between feature clusters."),
                     
                     tags$b("Show row names"),
                     p("Display feature names on the heatmap rows."),
                     
                     tags$b("Show row dendrogram"),
                     p("Displays the hierarchical clustering dendrogram for rows."),
                     
                     tags$b("Show parent dendrogram lines"),
                     p("Adds lines to mark the manual splits in the dendrogram."),
                     
                     tags$b("Use column split"),
                     p("Split heatmap columns by group to create visual blocks of samples."),
                     
                     tags$b("Use column order"),
                     p("Apply a predefined custom order to columns. When enabled, the heatmap ignores the original column order. Note: this option is ignored if column clustering is activated.")),
            
            
            tabPanel("Reactive Heatmap",
                     plotOutput("heatmap_plot", height = "80vh"))
            
          )
        )
      )
    )
    
    server <- function(input, output, session){
      
      heatmap_reactive <- reactive({
        ComplexHeatmap::Heatmap(stats_matrix,
                name = "Value",
                top_annotation = col_ann,
                show_row_names = input$show_row_names,
                column_title = "Samples",
                row_title = "Features",
                row_names_side = "left",
                cluster_columns = input$cluster_columns,
                cluster_rows = input$cluster_rows,
                clustering_method_columns = input$clustering_method_columns,
                clustering_method_rows = input$clustering_method_rows,
                clustering_distance_columns = input$clustering_distance_columns,
                clustering_distance_rows = input$clustering_distance_rows,
                column_order = if(input$use_column_order && !input$cluster_columns) {
                  column_custom_order
                } else {
                  NULL
                },
                column_split = if(input$use_column_split && !input$cluster_columns) column_split_vec else NULL,
                col = turbo(256),
                show_row_dend = input$show_row_dend,
                row_dend_width = unit(input$row_dend_width, "cm"),
                column_dend_height = unit(input$column_dend_height, "cm"),
                row_dend_gp = gpar(col = "black", lwd = 1),
                row_gap = unit(input$row_gap, "cm"),
                row_km = input$row_km,
                show_parent_dend_line = input$show_parent_dend_line
        )
      })
      
      observe({
        if(input$cluster_columns){
          updateCheckboxInput(session, "use_column_order", value = FALSE)
          updateCheckboxInput(session, "use_column_split", value = FALSE)
        }
      })
      
      output$heatmap_plot <- renderPlot({
        draw(heatmap_reactive())
      })
      
      observeEvent(input$submit,{
        
        
        if (input$clustering_method_rows == "ward.D2" && input$clustering_distance_rows != "euclidean") {
          showNotification("Row clustering : Ward.D2 requires euclidean distance", type = "error")
          return()
        }
        
        if (input$clustering_method_columns == "ward.D2" && input$clustering_distance_columns != "euclidean") {
          showNotification("Column clustering : Ward.D2 requires euclidean distance", type = "error")
          return()
        }
        
        stopApp(list(
          Heatmap = heatmap_reactive(),
          Parameters = list(name = "Value",
                            top_annotation = col_ann,
                            show_row_names = input$show_row_names,
                            column_title = "Samples",
                            row_title = "Features",
                            row_names_side = "left",
                            cluster_columns = input$cluster_columns,
                            cluster_rows = input$cluster_rows,
                            clustering_method_columns = input$clustering_method_columns,
                            clustering_method_rows = input$clustering_method_rows,
                            clustering_distance_columns = input$clustering_distance_columns,
                            clustering_distance_rows = input$clustering_distance_rows,
                            column_order = if(input$use_column_order && !input$cluster_columns) {
                              column_custom_order
                            } else {
                              NULL
                            },
                            column_split = if(input$use_column_split) column_split_vec else NULL,
                            col = turbo(256),
                            show_row_dend = input$show_row_dend,
                            row_dend_width = input$row_dend_width,
                            column_dend_height = input$column_dend_height,
                            row_dend_gp = gpar(col = "black", lwd = 1),
                            row_gap = input$row_gap,
                            row_km = input$row_km,
                            show_parent_dend_line = input$show_parent_dend_line)
        ))
      })
      
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
    
  }
  
  Heatmap_obj <- heatmap_builder(stats_matrix, col_ann, column_custom_order, column_split_vec, suggested_k) 
  
  
  # Chart save 
  
  n_features <- nrow(stats_matrix)
  n_samples  <- ncol(stats_matrix)
  
  pdf_width <- min(
    max(10, 0.35 * n_samples + 4),
    30
  )
  
  pdf_height <- min(
    max(8, 0.25 * n_features + 4),
    30
  )
  
  pdf(
    file.path(
      paths$unsup_chart,
      "Heatmap",
      paste0("Heatmap_", hypo_name, ".pdf")
    ),
    width = pdf_width,
    height = pdf_height
  )
  
  draw(Heatmap_obj$Heatmap)
  
  dev.off()
  
  # Parameters
  
  saveRDS(Heatmap_obj$Parameters, file = file.path(paths$unsup_data, "Heatmap", paste0("Heatmap_", hypo_name,"_parameters.rds")))
  
  # Return list
  
  return(list(
    plot = Heatmap_obj$Heatmap,
    params = Heatmap_obj$Parameters
  ))
  
}



########################################################################################################################
##########################          STATISTICAL FUNCTIONS : SUPERVISED ANALYSIS              ###########################
########################################################################################################################


#-------------------------------------------------------------------------------------------

#' Perform OPLS-DA analysis
#'
#' @param stats_matrix Input data matrix centered and scaled : Samples * Features + 1 class column
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name in the hypothesis currently being tested (Named chr)
#' @param VIP_score_threshold Threshold for VIP scores to filter important features (numeric)
#' @return List containing OPLS-DA results and plots


run_oplsda_analysis <- function(stats_matrix, hypo_name, paths, chosen_color, VIP_score_threshold) {
  
  if (length(unique(stats_matrix[[hypo_name]])) != 2) return(NULL)
  
  # ── Preprocessing ─────────────────────────────────────────────────────────
  
  X <- stats_matrix[, colnames(stats_matrix) != hypo_name]
  Y <- as.factor(stats_matrix[, hypo_name])
  
  nzv <- nearZeroVar(X, names = TRUE)
  if (length(nzv) > 0) X <- X[, !colnames(X) %in% nzv]
  
  n <- nrow(X)
  
  # ── K selection for internal ropls CV ─────────────────────────────────────
  
  # This K is used ONLY to select predI (number of predictive components).
  # It is NOT used to estimate model performance — Bootstrap handles that.
  #
  # Rodriguez-Perez 2018 (Analytical and Bioanalytical Chemistry) showed that LOO is the worst
  # CV estimator in omics data: highest bias AND highest variance, especially
  # in small sample conditions. Even with n < 30, LOO should be avoided.
  #
  # A minimum of 5 folds ensures each validation fold contains enough samples
  # to produce a stable Q2 estimate for component selection.
  
  crossval_fold <- dplyr::case_when(
    n >= 100 ~ 10L,
    TRUE     ~ 5L
  )
  
  # ── Main model fitting ────────────────────────────────────────────────────
  
  # orthoI = NA  : ropls selects the optimal number of orthogonal components
  #               automatically using crossval_fold CV and Q2 maximisation.
  # permI = 1000 : permutation test on the full model to assess significance.
  
  model <- ropls::opls(X, Y, predI = 1L, orthoI = NA, scaleC = "none",
                       crossvalI = crossval_fold, permI = 1000, algoC = "nipals")
  
  # Number of predictive components
  npred_comp <- ncol(model@scoreMN)
  
  # Number of orthogonal components selected by internal CV
  n_ortho <- ncol(model@orthoScoreMN)
  
  # Safety 
  
  if (n_ortho == 0) {
    
    warning(
      "[OPLS-DA] No significant component found by cross-validation. ",
      "Forcing orthoI = 1 for exploratory purposes. ",
      "Interpret results with caution — model is not statistically validated."
    )
    
    model <- ropls::opls(X, Y,
                         predI     = 1,
                         orthoI    = 1,
                         scaleC    = "none",
                         crossvalI = crossval_fold,
                         permI     = 1000,       
                         algoC     = "nipals")
    
    # Re-check : ropls may STILL return an empty object even with orthoI = 1
    n_ortho <- ncol(model@orthoScoreMN)
    
    if (n_ortho == 0) {
      warning(
        "[OPLS-DA] Model could not be built even with orthoI = 1. ",
        "This usually means X and Y are completely unrelated, or the data ",
        "has too few samples / too much noise. Returning NULL."
      )
      return(NULL)
    }
  } 
  
  # ── Bootstrap CV (internal resampling) ────────────────────────────────────
  
  bootstrap_cv_oplsda <- function(X, Y, crossval_fold, n_ortho, n_boot = 100) {
    
    n       <- nrow(X)
    classes <- levels(Y)
    ba_vec  <- rep(NA_real_, n_boot)
    
    for (b in seq_len(n_boot)) {
      
      # Stratified bootstrap sampling : sample independently within each class
      # to guarantee balanced class representation in every training set.
      
      train_idx <- unlist(lapply(classes, function(cl) {
        idx_cl <- which(Y == cl)
        sample(idx_cl, length(idx_cl), replace = TRUE)
      }))
      
      # OOB samples
      
      test_idx <- setdiff(seq_len(n), unique(train_idx))
      
      # Safety check : require ALL classes present in OOB (not just >= 2),
      # so that Balanced Accuracy is always averaged over the same number
      # of classes across every bootstrap iteration.
      
      if (length(test_idx) < 2 || length(unique(Y[test_idx])) < length(classes)) next
      
      tryCatch({
        
        # Sub-model trained on bootstrap sample only
        
        m <- ropls::opls(
          X[train_idx, , drop = FALSE],
          Y[train_idx],
          predI     = 1L,
          orthoI    = n_ortho,
          scaleC    = "none",
          crossvalI = crossval_fold,
          permI     = 0L,
          algoC     = "nipals"
        )
        
        # Predict OOB samples — these were never seen during sub-model training.
        
        pred <- ropls::predict(m, X[test_idx, , drop = FALSE])
        true <- Y[test_idx]
        
        # ── Balanced Accuracy : mean of per-class recall ─────────────────────
        #
        # For each class, we compute the proportion of its own OOB samples
        # correctly predicted (its recall / sensitivity). Averaging these
        # recalls across classes gives equal weight to every class no matter
        # its size, unlike raw accuracy which favours the majority class.
        # For K = 2 classes this is mathematically identical to
        # (sensitivity + specificity) / 2.
        
        recalls_per_class <- rep(NA_real_, length(classes))
        
        for (k in seq_along(classes)) {
          cl          <- classes[k]
          idx_class_k <- which(true == cl)
          
          if (length(idx_class_k) > 0) {
            recalls_per_class[k] <- mean(pred[idx_class_k] == cl)
          }
        }
        
        ba_vec[b] <- mean(recalls_per_class, na.rm = TRUE)
        
      }, error = function(e) {
        ba_vec[b] <<- NA_real_
      })
    }
    
    ba_vec <- ba_vec[!is.na(ba_vec)]
    
    list(
      BA_mean   = round(mean(ba_vec), 3),   # BA_mean   : average balanced accuracy across valid Bootstrap iterations
      BA_median = round(median(ba_vec), 3), # BA_median : median — more robust to extreme draws than mean
      BA_sd     = round(sd(ba_vec), 3),     # BA_sd     : standard deviation of BA = variance of the estimator
      n_valid   = length(ba_vec)            # n_valid   : number of successful iterations (should be close to n_boot)
    )
  }
  
  set.seed(31)
  boot_results <- bootstrap_cv_oplsda(X, Y, crossval_fold, n_ortho, n_boot = 100)
  
  # ── Permutation p-value ───────────────────────────────────────────────────
  
  perm_vals        <- model@suppLs$permMN
  ref_Q2           <- perm_vals[1, "Q2(cum)"]
  perm_df          <- data.frame(Q2 = perm_vals[-1, "Q2(cum)"])
  permutation_pval <- (sum(perm_df$Q2 >= ref_Q2) + 1) / (nrow(perm_df) + 1)
  
  # ── Permutation plot ──────────────────────────────────────────────────────
  
  perm_plot <- ggplot(perm_df, aes(Q2)) +
    geom_histogram(bins = 30, fill = "lightblue", color = "black") +
    geom_vline(xintercept = ref_Q2, color = "red", linewidth = 1.2) +
    labs(title = paste0("Permuted Q2 distribution — p = ",
                        round(permutation_pval * 100, 2), " %"),
         x = "Permuted Q2", y = "Count") +
    theme_minimal() +
    theme(plot.title = element_text(hjust = 0.5))
  
  # ── Scores ────────────────────────────────────────────────────────────────
  
  ortho_mat <- model@orthoScoreMN
  has_ortho <- !is.null(ortho_mat) && ncol(ortho_mat) > 0
  
  score_df <- as.data.frame(
    if (has_ortho) cbind(model@scoreMN, ortho_mat) else model@scoreMN
  ) %>%
    setNames(c("t1", if (has_ortho) paste0("to", seq_len(ncol(ortho_mat))) else character(0))) %>%
    tibble::rownames_to_column("Sample") %>%
    dplyr::left_join(
      stats_matrix %>% tibble::rownames_to_column("Sample") %>%
        dplyr::select(Sample, !!rlang::sym(hypo_name)),
      by = "Sample"
    ) %>%
    tibble::column_to_rownames("Sample") %>%
    dplyr::mutate(across(!!rlang::sym(hypo_name), ~ droplevels(as.factor(.))))
  
  ortho_cols <- grep("^to", colnames(score_df), value = TRUE)
  groups     <- levels(score_df[[hypo_name]])
  shape_pool <- c(21L, 24L, 22L, 25L, 23L)
  
  # ── VIP ───────────────────────────────────────────────────────────────────
  
  vip_df <- data.frame(feature = names(model@vipVn), vip_score = model@vipVn) %>%
    dplyr::arrange(dplyr::desc(vip_score))
  
  # ── Stats label ───────────────────────────────────────────────────────────
  
  n_groups <- length(levels(Y))
  chance_BA <- 1 / n_groups
  
  stats_label <- paste0(
    "R2X : ", round(model@summaryDF$`R2X(cum)`, 3),
    "\nR2Y : ", round(model@summaryDF$`R2Y(cum)`, 3),
    "\nQ2  : ", round(model@summaryDF$`Q2(cum)`, 3),
    "\n── Bootstrap CV (", boot_results$n_valid, " iter) ──",
    "\nBA : ", round(boot_results$BA_mean * 100, 1),
    " ± ", round(boot_results$BA_sd * 100, 1), " %",
    "\n(random chance = ", round(chance_BA * 100, 1), "%)",
    "\n── Significance ──",
    "\np(perm) : ", round(permutation_pval, 3)
  )
  
  # ── UI ────────────────────────────────────────────────────────────────────
  
  ui <- fluidPage(
    titlePanel(paste0("OPLS-DA — ", hypo_name)),
    sidebarLayout(
      sidebarPanel(
        
        if (length(ortho_cols) >= 1) {
          tagList(
            h4("Components"),
            radioButtons("ortho_comp", "Orthogonal component (Y-axis)",
                         choices = ortho_cols, selected = ortho_cols[1], inline = TRUE),
            hr()
          )
        },
        
        h4("Display options"),
        checkboxInput("show_stats", "Show metrics (R2X/R2Y/Q2/BA/p)", value = TRUE),
        checkboxInput("show_ellipse", "Confidence ellipses (95%)", value = TRUE),
        
        conditionalPanel(
          condition = "input.show_ellipse == true",
          selectInput("ellipse_type", "Ellipse type",
                      c("Normal" = "norm", "Student t" = "t")),
          sliderInput("ellipse_alpha", "Fill opacity",
                      value = 0.15, min = 0.05, max = 0.8, step = 0.05)
        ),
        
        hr(),
        h4("Group shapes"),
        uiOutput("shape_ui"),
        
        hr(),
        checkboxInput("show_labels", "Sample labels", value = FALSE),
        
        conditionalPanel(
          condition = "input.show_labels == true",
          sliderInput("label_size", "Label size", value = 4, min = 0.5, max = 6, step = 0.5)
        ),
        
        hr(),
        h4("Export"),
        textInput("fig_name", "File name (without extension)", value = ""),
        actionButton("export_fig", "Save figure", class = "btn-primary"),
        textOutput("export_status"),
        hr(),
        actionButton("save", "Continue", class = "btn-success")
      ),
      mainPanel(
        tabsetPanel(
          tabPanel("Score plot",   plotOutput("plot",      height = "75vh")),
          tabPanel("Permutations", plotOutput("perm_plot", height = "75vh")),
          tabPanel("VIP table",    DT::dataTableOutput("vip_table"))
        )
      )
    )
  )
  
  # ── Server ────────────────────────────────────────────────────────────────
  
  server <- function(input, output, session) {
    
    # Exportation safety
    
    fig_exported <- reactiveVal(FALSE)
    export_msg   <- reactiveVal("")
    
    # Shape mapping
    
    shape_choices <- c(
      "Circle"        = 21,
      "Triangle up"   = 24,
      "Square"        = 22,
      "Triangle down" = 25,
      "Diamond"       = 23
    )
    
    output$shape_ui <- renderUI({
      lapply(seq_along(groups), function(i) {
        selectInput(
          inputId  = paste0("shape_", i),
          label    = paste("Shape —", groups[i]),
          choices  = shape_choices,
          selected = shape_pool[i]
        )
      })
    })
    
    shape_map_reactive <- reactive({
      shapes <- sapply(seq_along(groups), function(i) {
        val <- input[[paste0("shape_", i)]]
        if (is.null(val)) shape_pool[(i - 1L) %% length(shape_pool) + 1L] else as.integer(val)
      })
      setNames(shapes, groups)
    })
    
    # ── Plot Creation ────────────────────────────────────────────────────────
    
    no_ortho <- length(ortho_cols) == 0
    
    ortho_comp_rv <- reactive({
      if (no_ortho) return(NA_character_)
      if (is.null(input$ortho_comp)) ortho_cols[1] else input$ortho_comp
    })
    
    plot_reactive <- reactive({
      
      ortho <- ortho_comp_rv()
      
      if (no_ortho || is.na(ortho)) {
        y_var <- rep(0, nrow(score_df))
        y_lab <- "No orthogonal component"
        
      } else {
        
        idx_o <- as.integer(sub("to", "", ortho))
        y_var <- score_df[[ortho]]
        y_lab <- paste0(
          "Orthogonal component ", ortho,
          " (", round(model@modelDF$R2X[idx_o + 1] * 100, 1), " %)"
        )
      }
      
      p <- ggplot(score_df, aes(t1, y_var,
                                fill  = .data[[hypo_name]],
                                shape = .data[[hypo_name]])) +
        geom_hline(yintercept = 0, linetype = "dashed", color = "grey70", linewidth = 0.4) +
        geom_vline(xintercept = 0, linetype = "dashed", color = "grey70", linewidth = 0.4) +
        geom_point(size = 5, stroke = 1.2, alpha = 0.9, colour = "black") +
        scale_fill_manual(values  = chosen_color) +
        scale_color_manual(values = chosen_color, guide = "none") +
        scale_shape_manual(values = shape_map_reactive()) +
        guides(fill  = guide_legend(title = NULL, override.aes = list(size = 5)),
               shape = guide_legend(title = NULL)) +
        labs(
          x = paste0("Predictive component t1 (", round(model@modelDF$R2X[1] * 100, 1), " %)"),
          y = y_lab
        ) +
        coord_cartesian(clip = "on") +
        theme_classic() +
        theme(
          legend.key.size      = unit(0.4, "cm"),
          plot.margin          = margin(10, 10, 10, 10),
          legend.position      = c(0.97, 0.99),
          legend.justification = c(1, 1),
          legend.text          = element_text(size = 14),
          axis.title.x         = element_text(size = 18, face = "bold", margin = margin(t = 12)),
          axis.title.y         = element_text(size = 18, face = "bold", margin = margin(r = 12)),
          axis.text            = element_text(size = 13),
          panel.grid.major     = element_blank(),
          panel.grid.minor     = element_blank(),
          panel.border         = element_rect(color = "black", fill = NA, linewidth = 0.8),
          axis.line            = element_blank(),
          axis.ticks        = element_line(color = "black", linewidth = 0.8),
          axis.ticks.length = unit(-6, "pt")
        )
      
      if (isTRUE(input$show_stats))
        p <- p + annotate("label", x = Inf, y = -Inf, hjust = 1, vjust = 0, size = 4.5,
                          fill = scales::alpha("white", 0.6), label.padding = unit(0.4, "lines"),
                          label = stats_label)
      
      if (isTRUE(input$show_ellipse) && min(table(score_df[[hypo_name]])) > 2)
        p <- p + stat_ellipse(
          aes(color = .data[[hypo_name]]),
          type      = input$ellipse_type,
          level     = 0.95,
          linewidth = 0.8,
          alpha     = input$ellipse_alpha,
          geom      = "polygon",
          show.legend = FALSE
        )
      
      if (isTRUE(input$show_labels))
        p <- p + ggrepel::geom_text_repel(
          aes(label = rownames(score_df)),
          size          = input$label_size,
          color         = "black",
          segment.color = "grey50",
          max.overlaps  = 5
        )
      p
    })
    
    output$plot      <- renderPlot({ plot_reactive() })
    output$perm_plot <- renderPlot({ perm_plot })
    
    output$vip_table <- DT::renderDataTable(
      DT::datatable(vip_df, rownames = FALSE,
                    options = list(pageLength = 20, searchHighlight = TRUE)) %>%
        DT::formatRound("vip_score", 2)
    )
    
    output$export_status <- renderText({ export_msg() })
    
    # ── Export figure ────────────────────────────────────────────────────────
    
    observeEvent(input$export_fig, {
      
      ortho    <- ortho_comp_rv()
      y_label  <- if (no_ortho || is.na(ortho)) "noOrtho" else ortho
      
      # ── Add suffix if sample labels are displayed ─────────────────────────
      label_suffix <- if (isTRUE(input$show_labels)) "_labelled" else ""
      
      # ── File name: the name entered by the operator, otherwise an automatic name ─
      custom_name <- trimws(input$fig_name)
      
      if (nzchar(custom_name)) {
        # Remove any .pdf extension that the user may have already entered
        custom_name <- sub("\\.pdf$", "", custom_name, ignore.case = TRUE)
        fig_name <- paste0(custom_name, ".pdf")
      } else {
        fig_name <- paste0("OPLS-DA_", hypo_name, "_t1vs", y_label, label_suffix, ".pdf")
      }
      
      fig_path <- file.path(paths$sup_chart, "OPLS-DA", fig_name)
      
      ggsave(fig_path, plot = plot_reactive(), width = 13, height = 13, bg = "white")
      
      fig_exported(TRUE)
      export_msg(paste0("✔ Saved : ", fig_name))
    })
    
    # ── Continue & exit ───────────────────────────────────────────────────────
    
    observeEvent(input$save, {
      
      # Safety : at least one figure must have been exported
      
      if (!fig_exported()) {
        showNotification(
          "⚠ Please export at least one figure before continuing.",
          type     = "warning",
          duration = 4
        )
        return()
      }
      
      p      <- plot_reactive()
      params <- list(ortho_comp    = ortho_comp_rv(),
                     show_stats    = input$show_stats,
                     show_ellipse  = input$show_ellipse,
                     ellipse_type  = input$ellipse_type,
                     ellipse_alpha = input$ellipse_alpha,
                     show_labels   = input$show_labels)
      
      ggsave(file.path(paths$sup_chart, "OPLS-DA", paste0("OPLS-DA_Permutation_", hypo_name, ".pdf")),
             plot = perm_plot, width = 15, height = 10, bg = "white")
      
      write.csv(vip_df,
                file.path(paths$sup_data, "OPLS-DA", paste0("OPLS-DA_All_VIP_", hypo_name, ".csv")),
                row.names = FALSE)
      write.csv(dplyr::filter(vip_df, vip_score >= VIP_score_threshold),
                file.path(paths$sup_data, "OPLS-DA", paste0("OPLS-DA_Top_VIP_", hypo_name, ".csv")),
                row.names = FALSE)
      write.csv(score_df,
                file.path(paths$sup_data, "OPLS-DA", paste0("Component_scores_", hypo_name, ".csv")),
                row.names = TRUE)
      
      jsonlite::write_json(params,
                           file.path(paths$sup_param, "OPLS-DA", paste0("OPLS-DA_", hypo_name, "_params.json")),
                           pretty = TRUE, auto_unbox = TRUE)
      
      jsonlite::write_json(boot_results,
                           file.path(paths$sup_data, "OPLS-DA", paste0("OPLS-DA_", hypo_name, "_bootstrap_result.json")),
                           pretty = TRUE, auto_unbox = TRUE)
      
      stopApp(list(
        model            = model,
        plot             = p,
        scores           = score_df,
        vip              = dplyr::filter(vip_df, vip_score >= VIP_score_threshold),
        all_vip          = vip_df,
        R2X              = round(model@summaryDF$`R2X(cum)`, 3),
        R2Y              = round(model@summaryDF$`R2Y(cum)`, 3),
        Q2               = round(model@summaryDF$`Q2(cum)`, 3),
        permutation_pval = permutation_pval,
        bootstrap_cv     = boot_results,
        params           = params
      ))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}

#-------------------------------------------------------------------------------------------



#' Perform PLS-DA analysis
#'
#' @param stats_matrix Input data matrix centered and scaled : Samples * Features + 1 class column
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name in the hypothesis currently being tested (Named chr)
#' @param VIP_score_threshold Threshold for VIP scores to filter important features (numeric)
#' @return List containing PLS-DA results and plots

run_plsda_analysis <- function(stats_matrix, hypo_name, paths, chosen_color, VIP_score_threshold) {
  
  # ── Preprocessing ─────────────────────────────────────────────────────────
  
  X <- stats_matrix[, colnames(stats_matrix) != hypo_name]
  Y <- as.factor(stats_matrix[, hypo_name])
  
  nzv <- nearZeroVar(X, names = TRUE)
  if (length(nzv) > 0) X <- X[, !colnames(X) %in% nzv]
  
  n <- nrow(X)
  
  # ── K selection for internal ropls CV ─────────────────────────────────────
  
  # This K is used ONLY to select predI (number of predictive components).
  # It is NOT used to estimate model performance — Bootstrap handles that.
  #
  # Rodriguez-Perez 2018 (Analytical and Bioanalytical Chemistry) showed that LOO is the worst
  # CV estimator in omics data : highest bias AND highest variance, especially
  # in small sample conditions. Even with n < 30, LOO should be avoided.
  #
  # A minimum of 5 folds ensures each validation fold contains enough samples
  # to produce a stable Q2 estimate for component selection.
  
  crossval_fold <- dplyr::case_when(
    n >= 100 ~ 10L,
    TRUE     ~ 5L
  )
  
  # ── Main model fitting ────────────────────────────────────────────────────
  
  # predI = NA  : ropls selects the optimal number of predictive components
  #               automatically using crossval_fold CV and Q2 maximisation.
  # permI = 1000 : permutation test on the full model to assess significance.
  
  model <- ropls::opls(X, Y, predI = NA, orthoI = 0, scaleC = "none",
                       crossvalI = crossval_fold, permI = 1000, algoC = "nipals")
  
  # Number of predictive components
  n_comp <- ncol(model@scoreMN)
  
  # Safety 
  
  if (n_comp < 2) {
    
    warning(
      "[PLS-DA] No significant component found by cross-validation. ",
      "Forcing predI = 2 for exploratory purposes. ",
      "Interpret results with caution — model is not statistically validated."
    )
    
    model <- ropls::opls(X, Y,
                         predI     = 2,
                         orthoI    = 0,
                         scaleC    = "none",
                         crossvalI = crossval_fold,
                         permI     = 1000,       
                         algoC     = "nipals")
    
    # Re-check : ropls may STILL return an empty object even with predI = 2
    n_comp <- ncol(model@scoreMN)
    
    if (n_comp == 0) {
      warning(
        "[PLS-DA] Model could not be built even with predI = 2. ",
        "This usually means X and Y are completely unrelated, or the data ",
        "has too few samples / too much noise. Returning NULL."
      )
      return(NULL)
    }
  } 
  
  # ── Bootstrap CV (internal resampling)  ────────────────────────────────────────────
  
  bootstrap_cv_plsda <- function(X, Y, crossval_fold, n_comp, n_boot = 100) {
    
    n       <- nrow(X)
    classes <- levels(Y)
    ba_vec  <- rep(NA_real_, n_boot)
    
    for (b in seq_len(n_boot)) {
      
      # Stratified bootstrap sampling : sample independently within each class
      # to guarantee balanced class representation in every training set.
      
      train_idx <- unlist(lapply(classes, function(cl) {
        idx_cl <- which(Y == cl)
        sample(idx_cl, length(idx_cl), replace = TRUE)
      }))
      
      # OOB samples
      
      test_idx <- setdiff(seq_len(n), unique(train_idx))
      
      # Safety check : require ALL classes present in OOB (not just >= 2),
      # so that Balanced Accuracy is always averaged over the same number
      # of classes across every bootstrap iteration.
      
      if (length(test_idx) < 2 || length(unique(Y[test_idx])) < length(classes)) next
      
      tryCatch({
        
        # Sub-model trained on bootstrap sample only
        
        m <- ropls::opls(
          X[train_idx, , drop = FALSE],
          Y[train_idx],
          predI     = n_comp,
          orthoI    = 0L,
          scaleC    = "none",
          crossvalI = crossval_fold,
          permI     = 0L,
          algoC     = "nipals"
        )
        
        # Predict OOB samples — these were never seen during sub-model training.
        
        pred <- ropls::predict(m, X[test_idx, , drop = FALSE])
        true <- Y[test_idx]
        
        # ── Balanced Accuracy : mean of per-class recall ─────────────────────
        #
        # For each class, we compute the proportion of its own OOB samples
        # correctly predicted (its recall / sensitivity). Averaging these
        # recalls across classes gives equal weight to every class no matter
        # its size, unlike raw accuracy which favours the majority class.
        # For K = 2 classes this is mathematically identical to
        # (sensitivity + specificity) / 2.
        
        recalls_per_class <- rep(NA_real_, length(classes))
        
        for (k in seq_along(classes)) {
          cl          <- classes[k]
          idx_class_k <- which(true == cl)
          
          if (length(idx_class_k) > 0) {
            recalls_per_class[k] <- mean(pred[idx_class_k] == cl)
          }
        }
        
        ba_vec[b] <- mean(recalls_per_class, na.rm = TRUE)
        
      }, error = function(e) {
        ba_vec[b] <<- NA_real_
      })
    }
    
    ba_vec <- ba_vec[!is.na(ba_vec)]
    
    list(
      BA_mean   = round(mean(ba_vec), 3),   # BA_mean   : average balanced accuracy across valid Bootstrap iterations
      BA_median = round(median(ba_vec), 3), # BA_median : median — more robust to extreme draws than mean
      BA_sd     = round(sd(ba_vec), 3),     # BA_sd     : standard deviation of BA = variance of the estimator
      n_valid   = length(ba_vec)            # n_valid   : number of successful iterations (should be close to n_boot)
    )
  }
  
  # Bootstrapping
  
  set.seed(31)
  boot_results <- bootstrap_cv_plsda(X, Y, crossval_fold, n_comp, n_boot = 100)
 
  
  # ── Permutation p-value ───────────────────────────────────────────────────

  perm_vals        <- model@suppLs$permMN
  ref_Q2           <- perm_vals[1, "Q2(cum)"]
  perm_df          <- data.frame(Q2 = perm_vals[-1, "Q2(cum)"])
  permutation_pval <- (sum(perm_df$Q2 >= ref_Q2) + 1) / (nrow(perm_df) + 1) # p-value = proportion of permuted Q2 values >= observed Q2.
  
  # ── Permutation plot ───────────────────────────────────────────────────────
  
  perm_plot <- ggplot(perm_df, aes(Q2)) +
    geom_histogram(bins = 30, fill = "lightblue", color = "black") +
    geom_vline(xintercept = ref_Q2, color = "red", linewidth = 1.2) +
    labs(title = paste0("Permuted Q2 distribution — p = ",
                        round(permutation_pval * 100, 2), " %"),
         x = "Permuted Q2", y = "Count") +
    theme_minimal() +
    theme(plot.title = element_text(hjust = 0.5))
  
  # ── Scores ────────────────────────────────────────────────────────────────
  
  score_df <- as.data.frame(model@scoreMN) %>%
    setNames(paste0("p", seq_len(n_comp))) %>%
    tibble::rownames_to_column("Sample") %>%
    dplyr::left_join(
      stats_matrix %>%
        tibble::rownames_to_column("Sample") %>%
        dplyr::select(Sample, !!rlang::sym(hypo_name)),
      by = "Sample"
    ) %>%
    tibble::column_to_rownames("Sample") %>%
    dplyr::mutate(across(!!rlang::sym(hypo_name), ~ droplevels(as.factor(.))))
  
  groups  <- levels(score_df[[hypo_name]])
  pc_cols <- paste0("p", seq_len(n_comp))
  
  shape_pool <- c(21L, 24L, 22L, 25L, 23L)
  
  # ── VIP ───────────────────────────────────────────────────────────────────
  
  vip_df <- data.frame(feature = names(model@vipVn), vip_score = model@vipVn) %>%
    dplyr::arrange(dplyr::desc(vip_score))
  
  # ── Stats label ───────────────────────────────────────────────────────────

  n_groups <- length(levels(Y))
  chance_BA <- 1 / n_groups
  
  stats_label <- paste0(
    "R2X : ", round(model@summaryDF$`R2X(cum)`, 3),
    "\nR2Y : ", round(model@summaryDF$`R2Y(cum)`, 3),
    "\nQ2  : ", round(model@summaryDF$`Q2(cum)`, 3),
    "\n── Bootstrap CV (", boot_results$n_valid, " iter) ──",
    "\nBA : ", round(boot_results$BA_mean * 100, 1),
    " ± ", round(boot_results$BA_sd * 100, 1), " %",
    "\n(random chance = ", round(chance_BA * 100, 1), "%)",
    "\n── Significance ──",
    "\np(perm) : ", round(permutation_pval, 3)
  )
  
  # ── UI ────────────────────────────────────────────────────────────────────
  
  ui <- fluidPage(
    titlePanel(paste0("PLS-DA — ", hypo_name)),
    sidebarLayout(
      sidebarPanel(
        
        h4("Components"),
        selectInput("pc_x", "X axis", choices = setNames(pc_cols, pc_cols), selected = pc_cols[1]),
        selectInput("pc_y", "Y axis", choices = setNames(pc_cols, pc_cols), selected = pc_cols[min(2, n_comp)]),
        
        hr(),
        h4("Display options"),
        # Toggle display of the stats annotation (R2X/R2Y/Q2/BA/p) on the score plot
        checkboxInput("show_stats", "Show metrics (R2X/R2Y/Q2/BA/p)", value = TRUE),
        checkboxInput("show_ellipse", "Confidence ellipses (95%)", value = TRUE),
        
        conditionalPanel(
          condition = "input.show_ellipse == true",
          selectInput("ellipse_type", "Ellipse type",
                      c("Normal" = "norm", "Student t" = "t")),
          sliderInput("ellipse_alpha", "Fill opacity",
                      value = 0.15, min = 0.05, max = 0.8, step = 0.05)
        ),
        
        hr(),
        h4("Group shapes"),
        uiOutput("shape_ui"),
        
        checkboxInput("show_labels", "Sample labels", value = FALSE),
        
        conditionalPanel(
          condition = "input.show_labels == true",
          sliderInput("label_size", "Label size", value = 4, min = 0.5, max = 6, step = 0.5)
        ),
        
        hr(),
        h4("Export"),
        # Custom filename : if left empty, the automatic name is used instead
        textInput("fig_name", "File name (without extension)", value = ""),
        actionButton("export_fig", "Save figure", class = "btn-primary"),
        textOutput("export_status"),
        hr(),
        actionButton("save", "Continue", class = "btn-success")
      ),
      mainPanel(
        tabsetPanel(
          tabPanel("Score plot",   plotOutput("plot",      height = "75vh")),
          tabPanel("Permutations", plotOutput("perm_plot", height = "75vh")),
          tabPanel("VIP table",    DT::dataTableOutput("vip_table"))
        )
      )
    )
  )
  
  # ── Server ────────────────────────────────────────────────────────────────
  
  server <- function(input, output, session) {
    
    # Exportation safety
    
    fig_exported <- reactiveVal(FALSE)
    export_msg <- reactiveVal("")
    
    # Shape mapping
    
    shape_choices <- c(
      "Circle"        = 21,
      "Triangle up"   = 24,
      "Square"        = 22,
      "Triangle down" = 25,
      "Diamond"       = 23
    )
    
    output$shape_ui <- renderUI({
      lapply(seq_along(groups), function(i) {
        selectInput(
          inputId  = paste0("shape_", i),
          label    = paste("Shape —", groups[i]),
          choices  = shape_choices,
          selected = shape_pool[i]
        )
      })
    })
    
    shape_map_reactive <- reactive({
      shapes <- sapply(seq_along(groups), function(i) {
        val <- input[[paste0("shape_", i)]]
        if (is.null(val)) shape_pool[(i - 1L) %% length(shape_pool) + 1L] else as.integer(val)
      })
      setNames(shapes, groups)
    })
    
    
    # ── Plot Creation ───────────────────────────────────────────────────────
    
    plot_reactive <- reactive({
      
      pc_x <- if (is.null(input$pc_x)) "p1" else input$pc_x
      pc_y <- input$pc_y %||% pc_cols[min(2, n_comp)]
      
      
      idx_x <- as.integer(sub("p", "", pc_x))
      idx_y <- as.integer(sub("p", "", pc_y))
      
      # Single-component model : force flat Y axis
      
      if (n_comp == 1) {
        x_var <- score_df[[pc_x]]
        y_var <- rep(0, nrow(score_df))
        x_lab <- paste0("Predictive component ", pc_x,
                        " (", round(model@modelDF$R2X[idx_x] * 100, 1), " %)")
        y_lab <- "Only 1 predictive component"
        
      } else {
        
        x_var <- score_df[[pc_x]]
        y_var <- score_df[[pc_y]]
        x_lab <- paste0("Predictive component ", pc_x,
                        " (", round(model@modelDF$R2X[idx_x] * 100, 1), " %)")
        y_lab <- paste0("Predictive component ", pc_y,
                        " (", round(model@modelDF$R2X[idx_y] * 100, 1), " %)")
      }
      
      p <- ggplot(score_df, aes(x_var, y_var,
                                fill  = .data[[hypo_name]],
                                shape = .data[[hypo_name]])) +
        geom_hline(yintercept = 0, linetype = "dashed", color = "grey70", linewidth = 0.4) +
        geom_vline(xintercept = 0, linetype = "dashed", color = "grey70", linewidth = 0.4) +
        geom_point(size = 5, stroke = 1.2, alpha = 0.9, colour = "black") +
        scale_fill_manual(values = chosen_color) +
        scale_color_manual(values = chosen_color, guide = "none") +
        scale_shape_manual(values = shape_map_reactive()) +
        guides(fill  = guide_legend(title = NULL, override.aes = list(size = 5)),
               shape = guide_legend(title = NULL)) +
        labs(
          x = x_lab,
          y = y_lab
        ) +
        coord_cartesian(clip = "on") +
        theme_classic() +
        theme(
          legend.key.size      = unit(0.4, "cm"),
          plot.margin          = margin(10, 10, 10, 10),
          legend.position      = c(0.97, 0.99),
          legend.justification = c(1, 1),
          legend.text          = element_text(size = 14),
          axis.title.x         = element_text(size = 18, face = "bold", margin = margin(t = 12)),
          axis.title.y         = element_text(size = 18, face = "bold", margin = margin(r = 12)),
          axis.text            = element_text(size = 13),
          panel.grid.major     = element_blank(),
          panel.grid.minor     = element_blank(),
          panel.border         = element_rect(color = "black", fill = NA, linewidth = 0.8),
          axis.line            = element_blank(),
          axis.ticks        = element_line(color = "black", linewidth = 0.8),  
          axis.ticks.length = unit(-6, "pt")
        )
      
      # Stats annotation is optional : lets the operator export a clean figure
      # without metrics for publication purposes
      
      if (isTRUE(input$show_stats))
        p <- p + annotate("label", x = Inf, y = -Inf, hjust = 1, vjust = 0, size = 4.5,
                          fill = scales::alpha("white", 0.6), label.padding = unit(0.4, "lines"),
                          label = stats_label)
      
      if (isTRUE(input$show_ellipse) && min(table(score_df[[hypo_name]])) > 2)
        p <- p +
        stat_ellipse(aes(color = .data[[hypo_name]]), type = input$ellipse_type,
                     level = 0.95, linewidth = 0.8, alpha = input$ellipse_alpha,
                     geom = "polygon",
                     show.legend = FALSE)
      
      if (isTRUE(input$show_labels))
        p <- p + ggrepel::geom_text_repel(aes(label = rownames(score_df)),
                                          size = input$label_size, color = "black",
                                          segment.color = "grey50", max.overlaps = 5)
      p
    })
    
    
    output$plot      <- renderPlot({ plot_reactive() })
    output$perm_plot <- renderPlot({ perm_plot })
    
    output$vip_table <- DT::renderDataTable(
      DT::datatable(vip_df, rownames = FALSE,
                    options = list(pageLength = 20, searchHighlight = TRUE)) %>%
        DT::formatRound("vip_score", 2)
    )
    
    output$export_status <- renderText({ export_msg() })
    
    # ── Save & exit ───────────────────────────────────────────────────────
    
    observeEvent(input$export_fig, {
      
      pc_x <- if (is.null(input$pc_x)) "p1" else input$pc_x
      pc_y <- if (is.null(input$pc_y)) pc_cols[min(2, n_comp)] else input$pc_y
      
      # ── Add suffix if sample labels are displayed ─────────────────────────
      label_suffix <- if (isTRUE(input$show_labels)) "_labelled" else ""
      
      # ── Filename : the one typed by the operator, otherwise the automatic name ─
      custom_name <- trimws(input$fig_name)
      
      if (nzchar(custom_name)) {
        # Strip a possible ".pdf" extension already typed by the user
        custom_name <- sub("\\.pdf$", "", custom_name, ignore.case = TRUE)
        fig_name <- paste0(custom_name, ".pdf")
      } else {
        fig_name <- paste0("PLS-DA_", hypo_name, "_", pc_x, "vs", pc_y, label_suffix, ".pdf")
      }
      
      fig_path <- file.path(paths$sup_chart, "PLS-DA", fig_name)
      
      ggsave(fig_path, plot = plot_reactive(), width = 13, height = 13, bg = "white")
      
      fig_exported(TRUE) # At least one exportation : OK
      
      export_msg(paste0("✔ Saved : ", fig_name))
    })
    
    
    observeEvent(input$save, {
      
      # Safety export : at least one
      
      if (!fig_exported()) {
        showNotification(
          "⚠ Please export at least one figure before continuing.",
          type     = "warning",
          duration = 4
        )
        return()  
      }
      
      
      p      <- plot_reactive()
      params <- list(pc_x          = input$pc_x,
                     pc_y          = input$pc_y,
                     show_stats    = input$show_stats,
                     show_ellipse  = input$show_ellipse,
                     ellipse_type  = input$ellipse_type,
                     ellipse_alpha = input$ellipse_alpha,
                     show_labels   = input$show_labels)
      
      ggsave(file.path(paths$sup_chart, "PLS-DA", paste0("PLS-DA_Permutation_", hypo_name, ".pdf")),
             plot = perm_plot, width = 15, height = 10, bg = "white")
      
      write.csv(vip_df,
                file.path(paths$sup_data, "PLS-DA", paste0("PLS-DA_All_VIP_", hypo_name, ".csv")),
                row.names = FALSE)
      write.csv(dplyr::filter(vip_df, vip_score >= VIP_score_threshold),
                file.path(paths$sup_data, "PLS-DA", paste0("PLS-DA_Top_VIP_", hypo_name, ".csv")),
                row.names = FALSE)
      write.csv(score_df,
                file.path(paths$sup_data, "PLS-DA", paste0("Component_scores_", hypo_name, ".csv")),
                row.names = TRUE)
      
      jsonlite::write_json(params,
                           file.path(paths$sup_param, "PLS-DA", paste0("PLS-DA_", hypo_name, "_params.json")),
                           pretty = TRUE, auto_unbox = TRUE)
      
      jsonlite::write_json(boot_results, file.path(paths$sup_data, "PLS-DA", paste0("PLS-DA_", hypo_name, "_bootstrap_result.json")),
                           pretty = TRUE, auto_unbox = TRUE)
      
      stopApp(list(
        model            = model,
        plot             = p,
        scores           = score_df,
        vip              = dplyr::filter(vip_df, vip_score >= VIP_score_threshold),
        all_vip          = vip_df,
        R2X              = round(model@summaryDF$`R2X(cum)`, 3),
        R2Y              = round(model@summaryDF$`R2Y(cum)`, 3),
        Q2               = round(model@summaryDF$`Q2(cum)`, 3),
        permutation_pval = permutation_pval,
        bootstrap_cv     = boot_results,  
        params           = params
      ))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}


#-------------------------------------------------------------------------------------------------------------------


#' Generate a VIP score summary plot (dot plot + group intensity heatmap)
#'
#' @param pre_scaled_matrix Input data matrix without scaling (log-transformed) : Samples × Features
#' #' @param matrix_choice  Choice of matrix made at an early stage :  unannotated features / annotated features / features with and without annotations
#' @param metadata_hypo Metadata table containing sample information : columns ("SampleName", hypo_name)
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name (Named chr)
#' @param plsda_vip data.frame (feature, vip_score) from run_plsda_analysis()$all_vip, or NULL
#' @param oplsda_vip data.frame (feature, vip_score) from run_oplsda_analysis()$all_vip, or NULL
#' @return List containing the plot, underlying data and export params. NULL if no VIP table available.

run_vip_summary_plot <- function(pre_scaled_matrix, matrix_choice, metadata_hypo, 
                                 hypo_name, paths, chosen_color,
                                 plsda_vip = NULL, oplsda_vip = NULL, Annotation_summary_table = NULL) {
  
  # ── Guards ─────────────────────────────────────────────────────────────
  
  if (is.null(plsda_vip) && is.null(oplsda_vip)) {
    warning("[VIP summary] No VIP table available. Returning NULL.")
    return(NULL)
  }
  
  vip_sources <- list("PLS-DA" = plsda_vip, "OPLS-DA" = oplsda_vip)
  vip_sources <- vip_sources[!sapply(vip_sources, is.null)]
  
  
  # ══════════════════════════════════════════════════════════════════════════
  # DATA PREPARATION
  # ══════════════════════════════════════════════════════════════════════════
  
  X <- pre_scaled_matrix
  
  # ── Feature annotation ────────────────────────────────────────────────────
  
  if (matrix_choice %in% c("Final_output_annotated",
                           "Final_output_annotated_complete") &&
      !is.null(Annotation_summary_table)) {
    
    X_t <- t(X)   # Features × Samples
    
    X_t <- as.data.frame(X_t, check.names = FALSE) %>%
      tibble::rownames_to_column("Feature_name_code") %>%
      dplyr::left_join(
        Annotation_summary_table[, c("Feature_name_code", "Only_annot_unique_name")],
        by = "Feature_name_code"
      )
    
    if (matrix_choice == "Final_output_annotated") {
      
      # Removal of all unannotated features (NA in Only_annot_unique_name)
      X_t <- X_t %>%
        dplyr::filter(!is.na(Only_annot_unique_name))
      
    } else {
      
      X_t <- X_t %>%
        dplyr::mutate(
          Only_annot_unique_name = ifelse(is.na(Only_annot_unique_name),
                                      Feature_name_code,
                                      Only_annot_unique_name)
        )
    }
    
    X_t <- X_t %>%
      mutate(
        Only_annot_unique_name = make.unique(
          Only_annot_unique_name,
          sep = "_#"
        )) %>%
      dplyr::select(-Feature_name_code) %>%
      tibble::column_to_rownames("Only_annot_unique_name")
    
    X <- as.data.frame(t(X_t), check.names = FALSE)   # Samples × Features
  }
  
  # ── Attach Sample column ──────────────────────────────────────────────────
  
  X <- data.frame(Sample = rownames(X), X, row.names = NULL, check.names = FALSE)
  
  # ── Join metadata ─────────────────────────────────────────────────────────
  
  pre_scaled_matrix <- X %>%
    dplyr::left_join(
      metadata_hypo[, c("SampleName", hypo_name)],
      by = c("Sample" = "SampleName")
    ) %>%
    dplyr::filter(!is.na(.data[[hypo_name]]))
  
  
  
  groups <- levels(droplevels(as.factor(pre_scaled_matrix[[hypo_name]])))
  
  if (length(groups) < 2) {
    warning("[VIP summary] Fewer than 2 groups found. Returning NULL.")
    return(NULL)
  }
  
  max_n <- max(sapply(vip_sources, nrow))
  
  # ── UI ─────────────────────────────────────────────────────────────────
  
  ui <- fluidPage(
    titlePanel(paste0("\U0001F4C8 VIP plots — ", hypo_name)),
    sidebarLayout(
      sidebarPanel(
        radioButtons("vip_source", "VIP source", choices = names(vip_sources)),
        sliderInput("top_n", "Number of features", value = min(max_n, 20), min = 1, max = max_n, step = 1),
        hr(),
        textInput("fig_name", "File name (without extension)", value = ""),
        actionButton("export_fig", "Save figure", class = "btn-primary"),
        textOutput("export_status"),
        hr(),
        actionButton("save", "Continue", class = "btn-success")
      ),
      mainPanel(plotOutput("plot", height = "80vh"))
    )
  )
  
  # ── Server ────────────────────────────────────────────────────────────
  
  server <- function(input, output, session) {
    
    fig_exported <- reactiveValues()
    for (nm in names(vip_sources)) fig_exported[[nm]] <- FALSE
    export_msg   <- reactiveVal("")
    
    # Top-N VIP features, sorted ascending so the highest VIP ends up at the
    # top of the plot (ggplot draws the first factor level at the bottom).
    
    vip_df <- reactive({
      vip_sources[[input$vip_source]] %>%
        dplyr::arrange(dplyr::desc(vip_score)) %>%
        dplyr::slice_head(n = input$top_n) %>%
        dplyr::arrange(vip_score) %>%
        dplyr::mutate(feature = factor(feature, levels = feature))
    })
    
    # Group means per feature, then row-scaled 0-1 (blue = low, red = high),
    # computed on the pre-scaled matrix 
    
    heat_df <- reactive({
      
      feats <- as.character(vip_df()$feature)
      
      medians_long <- pre_scaled_matrix %>%
        dplyr::select(dplyr::all_of(c(hypo_name, feats))) %>%
        dplyr::group_by(.data[[hypo_name]]) %>%
        dplyr::summarise(dplyr::across(everything(), ~ median(.x, na.rm = TRUE)), .groups = "drop") %>%
        tidyr::pivot_longer(-dplyr::all_of(hypo_name), names_to = "feature", values_to = "value") %>%
        dplyr::group_by(feature) %>%
        dplyr::mutate(scaled = if (diff(range(value, na.rm = TRUE)) == 0) 0.5
                      else (value - min(value)) / diff(range(value))) %>%
        dplyr::ungroup()
      
      medians_long$feature         <- factor(medians_long$feature, levels = levels(vip_df()$feature))
      medians_long[[hypo_name]]    <- factor(medians_long[[hypo_name]], levels = groups)
      medians_long
    })
    
    plot_reactive <- reactive({
      
      p_dot <- ggplot(vip_df(), aes(vip_score, feature)) +
        geom_segment(aes(x = min(vip_score)-0.5, xend = vip_score, yend = feature),
                     color = "grey85", linetype = "dotted") +
        geom_point(size = 3.5, shape = 21, fill = "grey20", color = "black") +
        labs(x = "VIP scores", y = NULL) +
        theme_classic()
      
      p_heat <- ggplot(heat_df(), aes(.data[[hypo_name]], feature, fill = scaled)) +
        geom_tile(color = "white") +
        scale_fill_gradientn(colors = c("#2166AC", "white", "#B2182B"), limits = c(0, 1),
                             breaks = c(0, 1), labels = c("Decrease", "Increase"), name = NULL) +
        scale_x_discrete(position = "top") +
        labs(x = NULL, y = NULL) +
        theme_minimal() +
        theme(axis.text.y = element_blank(), axis.ticks = element_blank(), panel.grid = element_blank(),
              axis.text.x = ggtext::element_markdown(angle = 0, hjust = 0, vjust = 0))
      
      patchwork::wrap_plots(p_dot, p_heat, widths = c(3, 1))
    })
    
    output$plot           <- renderPlot({ plot_reactive() })
    output$export_status  <- renderText({ export_msg() })
    
    observeEvent(input$export_fig, {
      
      name <- trimws(input$fig_name)
      fig_name <- if (nzchar(name)) paste0(sub("\\.pdf$", "", name), ".pdf")
      else paste0("VIP_plot_", hypo_name, "_", input$vip_source, ".pdf")
      
      fig_path <- file.path(paths$sup_chart, "VIP_plots", fig_name)
      dir.create(dirname(fig_path), recursive = TRUE, showWarnings = FALSE)
      ggsave(fig_path, plot_reactive(), width = 14, height = 10, bg = "white")
      
      fig_exported[[input$vip_source]] <- TRUE
      export_msg(paste0("✔ Saved : ", fig_name))
    })
    
    observeEvent(input$save, {
      
      missing_sr <- names(vip_sources)[!sapply(names(vip_sources), function(s) fig_exported[[s]])]
      
      if (length(missing_sr) > 0) {
        showNotification(
          paste("⚠ Don’t forget to save :", paste(missing_sr, collapse = ", "), " \U0001F40B"),
          type = "warning"
        )
        return()
      }
      
      out_data  <- file.path(paths$sup_data,  "VIP_plots")
      out_param <- file.path(paths$sup_param, "VIP_plots")
      dir.create(out_data,  recursive = TRUE, showWarnings = FALSE)
      dir.create(out_param, recursive = TRUE, showWarnings = FALSE)
      
      final_table <- heat_df() %>%
        tidyr::pivot_wider(names_from = dplyr::all_of(hypo_name), values_from = scaled,
                           names_prefix = "scaled_") %>%
        dplyr::left_join(as.data.frame(vip_df()), by = "feature")
      
      write.csv(final_table, file.path(out_data, paste0("VIP_plot_table", hypo_name,
                                                        input$vip_source,".csv")), row.names = FALSE)
      
      params <- list(vip_source = input$vip_source, top_n = input$top_n)
      jsonlite::write_json(params, file.path(out_param, paste0("VIP_plots_", hypo_name,
                                                               input$vip_source, "_params.json")),
                           pretty = TRUE, auto_unbox = TRUE)
      
      stopApp(list(plot = plot_reactive(), data = final_table, params = params))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}


#-------------------------------------------------------------------------------------------------------------------


#' Generate a VIP score boxplot summary (one panel per feature)
#'
#' @param pre_scaled_matrix Input data matrix without scaling (log-transformed) : Samples × Features
#' @param matrix_choice  Choice of matrix made at an early stage :  unannotated features / annotated features / features with and without annotations
#' @param metadata_hypo Metadata table containing sample information : columns ("SampleName", hypo_name)
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name (Named chr)
#' @param plsda_vip data.frame (feature, vip_score) from run_plsda_analysis()$all_vip, or NULL
#' @param oplsda_vip data.frame (feature, vip_score) from run_oplsda_analysis()$all_vip, or NULL
#' @param Volcano_res Full return value of run_volcano_analysis() for this hypothesis, or NULL.
#'   Only used when the hypothesis has exactly 2 groups, via Volcano_res$confirmatory$volcano_stats
#'   (columns feature, padj).
#' @return List containing the plot, underlying data and export params. NULL if no VIP table available.


run_vip_boxplot <- function(pre_scaled_matrix, matrix_choice, metadata_hypo, 
                            hypo_name, paths, chosen_color,
                            plsda_vip = NULL, oplsda_vip = NULL, Annotation_summary_table = NULL,
                            Volcano_res = NULL) {
  
  # ── Guards ─────────────────────────────────────────────────────────────
  
  if (is.null(plsda_vip) && is.null(oplsda_vip)) {
    warning("[VIP summary] No VIP table available. Returning NULL.")
    return(NULL)
  }
  
  vip_sources <- list("PLS-DA" = plsda_vip, "OPLS-DA" = oplsda_vip)
  vip_sources <- vip_sources[!sapply(vip_sources, is.null)]
  
  
  # ══════════════════════════════════════════════════════════════════════════
  # DATA PREPARATION
  # ══════════════════════════════════════════════════════════════════════════
  
  X <- pre_scaled_matrix
  
  # ── Feature annotation ────────────────────────────────────────────────────
  
  if (matrix_choice %in% c("Final_output_annotated",
                           "Final_output_annotated_complete") &&
      !is.null(Annotation_summary_table)) {
    
    X_t <- t(X)   # Features × Samples
    
    X_t <- as.data.frame(X_t, check.names = FALSE) %>%
      tibble::rownames_to_column("Feature_name_code") %>%
      dplyr::left_join(
        Annotation_summary_table[, c("Feature_name_code", "Only_annot_unique_name")],
        by = "Feature_name_code"
      )
    
    if (matrix_choice == "Final_output_annotated") {
      
      # Removal of all unannotated features (NA in Only_annot_unique_name)
      X_t <- X_t %>%
        dplyr::filter(!is.na(Only_annot_unique_name))
      
    } else {
      
      X_t <- X_t %>%
        dplyr::mutate(
          Only_annot_unique_name = ifelse(is.na(Only_annot_unique_name),
                                          Feature_name_code,
                                          Only_annot_unique_name)
        )
    }
    
    X_t <- X_t %>%
      mutate(
        Only_annot_unique_name = make.unique(
          Only_annot_unique_name,
          sep = "_#"
        )) %>%
      dplyr::select(-Feature_name_code) %>%
      tibble::column_to_rownames("Only_annot_unique_name")
    
    X <- as.data.frame(t(X_t), check.names = FALSE)   # Samples × Features
  }
  
  # ── Attach Sample column ──────────────────────────────────────────────────
  
  X <- data.frame(Sample = rownames(X), X, row.names = NULL, check.names = FALSE)
  
  # ── Join metadata ─────────────────────────────────────────────────────────
  
  pre_scaled_matrix <- X %>%
    dplyr::left_join(
      metadata_hypo[, c("SampleName", hypo_name)],
      by = c("Sample" = "SampleName")
    ) %>%
    dplyr::filter(!is.na(.data[[hypo_name]]))
  
  
  
  groups <- levels(droplevels(as.factor(pre_scaled_matrix[[hypo_name]])))
  
  if (length(groups) < 2) {
    warning("[VIP summary] Fewer than 2 groups found. Returning NULL.")
    return(NULL)
  }
  
  # ── Reorder groups : reference on the left, comparison on the right ──────
  # (Only when exactly 2 groups and Volcano_res carries ref_group/comp_group
  # matching this hypothesis — otherwise the natural/alphabetical order is kept)
  
  if (length(groups) == 2 && !is.null(Volcano_res) && !is.null(Volcano_res$parameters)) {
    
    ref_group  <- Volcano_res$parameters$ref_group
    comp_group <- Volcano_res$parameters$comp_group
    
    if (all(c(ref_group, comp_group) %in% groups)) {
      groups <- c(ref_group, comp_group)
    }
  }
  
  max_n <- max(sapply(vip_sources, nrow))
  
  # ── Significance stars (2-group hypotheses only, reusing volcano padj) ────
  
  padj_table <- if (length(groups) == 2 && !is.null(Volcano_res) && !is.null(Volcano_res$confirmatory)) {
    Volcano_res$confirmatory$volcano_stats %>%
      dplyr::select(feature, padj) %>%
      dplyr::mutate(stars = dplyr::case_when(
        padj < 0.001 ~ "***",
        padj < 0.01  ~ "**",
        padj < 0.05  ~ "*",
        TRUE         ~ "NS"
      ))
  } else {
    NULL
  }
  
  # ── UI ─────────────────────────────────────────────────────────────────
  
  ui <- fluidPage(
    titlePanel(paste0("\U0001F4C8 VIP boxplots — ", hypo_name)),
    sidebarLayout(
      sidebarPanel(
        radioButtons("vip_source", "VIP source", choices = names(vip_sources)),
        sliderInput("top_n", "Number of features", value = min(max_n, 20), min = 1, max = max_n, step = 1),
        hr(),
        uiOutput("feature_picker"),
        hr(),
        textInput("folder_name", "Export folder name (optional)", value = ""),
        actionButton("export_fig", "Save all boxplots", class = "btn-primary"),
        textOutput("export_status"),
        hr(),
        actionButton("save", "Continue", class = "btn-success")
      ),
      mainPanel(plotOutput("plot", height = "80vh"))
    )
  )
  
  # ── Server ────────────────────────────────────────────────────────────
  
  server <- function(input, output, session) {
    
    fig_exported <- reactiveValues()
    for (nm in names(vip_sources)) fig_exported[[nm]] <- FALSE
    export_msg   <- reactiveVal("")
    
    # Top-N VIP features, sorted descending
    
    vip_df <- reactive({
      vip_sources[[input$vip_source]] %>%
        dplyr::arrange(dplyr::desc(vip_score)) %>%
        dplyr::slice_head(n = input$top_n) %>%
        dplyr::mutate(feature = factor(feature, levels = feature))
    })
    
    # Long-format table (log-transformed, non-scaled values) for boxplots
    
    box_df <- reactive({
      
      feats <- as.character(vip_df()$feature)
      
      pre_scaled_matrix %>%
        dplyr::select(dplyr::all_of(c(hypo_name, feats))) %>%
        tidyr::pivot_longer(-dplyr::all_of(hypo_name), names_to = "feature", values_to = "value") %>%
        dplyr::mutate(
          feature = factor(feature, levels = levels(vip_df()$feature)),
          !!hypo_name := factor(.data[[hypo_name]], levels = groups)
        )
    })
    
    # Single-feature boxplot, reused for on-screen preview and export
    
    single_plot <- function(feat) {
      
      df <- dplyr::filter(box_df(), feature == feat)
      
      # Group labels with sample size
      
      n_labels <- df %>%
        dplyr::count(.data[[hypo_name]]) %>%
        dplyr::mutate(label = paste0(.data[[hypo_name]], "\n(n=", n, ")"))
      
      # Plot
      
      p <- ggplot(df, aes(x = .data[[hypo_name]], y = value, fill = .data[[hypo_name]])) +
        geom_boxplot(outlier.shape = NA, alpha = 0.8) +
        geom_jitter(width = 0.15, size = 1.8, alpha = 0.8, shape = 21,
                    fill = "black", color = "white", stroke = 0.4) +
        scale_fill_manual(values = chosen_color) +
        scale_x_discrete(labels = n_labels$label) +
        labs(x = NULL, y = "Log10 intensity", title = feat, fill = NULL) +
        theme_classic() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1),
              plot.title = element_text(face = "bold", hjust = 0.5))
      
      # Significance stars from the confirmatory volcano padj (2-group hypotheses only)
      
      if (!is.null(padj_table) && feat %in% padj_table$feature) {
        
        stars_lab <- padj_table$stars[padj_table$feature == feat]
        
        p <- p +
          scale_y_continuous(expand = expansion(mult = c(0.05, 0.15))) +
          ggsignif::geom_signif(comparisons = list(groups),
                                annotations = stars_lab,
                                y_position  = max(df$value, na.rm = TRUE) * 1.05,
                                tip_length  = 0.01)
      }
      
      p
    }
    
    output$feature_picker <- renderUI({
      selectInput("feature_pick", "Preview feature", choices = levels(vip_df()$feature))
    })
    
    output$plot <- renderPlot({
      req(input$feature_pick)
      single_plot(input$feature_pick)
    })
    
    output$export_status  <- renderText({ export_msg() })
    
    observeEvent(input$export_fig, {
      
      folder_name <- trimws(input$folder_name)
      folder_name <- if (nzchar(folder_name)) folder_name
      else paste0("VIP_boxplots_", hypo_name, "_", input$vip_source)
      
      out_dir <- file.path(paths$sup_chart, "VIP_boxplot", folder_name)
      dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
      
      # One ggsave per feature -> one PDF per VIP, saved automatically
      
      for (feat in levels(vip_df()$feature)) {
        safe_name <- gsub("[/\\:*?\"<>|]", "_", feat)
        tryCatch(
          ggsave(file.path(out_dir, paste0(safe_name, ".pdf")), single_plot(feat),
                 width = 7, height = 6, bg = "white"),
          error = function(e) warning("[VIP boxplot] Skipped '", feat, "' : ", conditionMessage(e))
        )
      }
      
      fig_exported[[input$vip_source]] <- TRUE
      export_msg(paste0("✔ ", input$top_n, " boxplots saved in : ", folder_name))
    })
    
    observeEvent(input$save, {
      
      missing_sr <- names(vip_sources)[!sapply(names(vip_sources), function(s) fig_exported[[s]])]
      
      if (length(missing_sr) > 0) {
        showNotification(
          paste("⚠ Don’t forget to save :", paste(missing_sr, collapse = ", "), " \U0001F40B"),
          type = "warning"
        )
        return()
      }
      
      out_data  <- file.path(paths$sup_data,  "VIP_boxplot")
      out_param <- file.path(paths$sup_param, "VIP_boxplot")
      dir.create(out_data,  recursive = TRUE, showWarnings = FALSE)
      dir.create(out_param, recursive = TRUE, showWarnings = FALSE)
      
      final_table <- box_df() %>%
        dplyr::left_join(as.data.frame(vip_df()), by = "feature")
      
      if (!is.null(padj_table)) {
        final_table <- final_table %>%
          dplyr::left_join(padj_table, by = "feature")
      }
      
      write.csv(final_table, file.path(out_data, paste0("VIP_boxplot_table_", hypo_name, "_",
                                                        input$vip_source, ".csv")), row.names = FALSE)
      
      params <- list(vip_source = input$vip_source, top_n = input$top_n)
      jsonlite::write_json(params, file.path(out_param, paste0("VIP_boxplots_", hypo_name, "_",
                                                               input$vip_source, "_params.json")),
                           pretty = TRUE, auto_unbox = TRUE)
      
      stopApp(list(data = final_table, params = params))
    })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
}


#-------------------------------------------------------------------------------------------------------------------


#' Generate a VIP heatmap
#'
#' @param stats_matrix Input data matrix : Samples * Features + 1 class column
#' @param matrix_choice  Choice of matrix made at an early stage :  unannotated features / annotated features / features with and without annotations
#' @param metadata_hypo Metadata table containing sample information : columns ("SampleName", hypo_name)
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @param chosen_color Colours associated with each group name (Named chr)
#' @param plsda_vip data.frame (feature, vip_score) from run_plsda_analysis()$all_vip, or NULL
#' @param oplsda_vip data.frame (feature, vip_score) from run_oplsda_analysis()$all_vip, or NULL
#' @param Volcano_res Full return value of run_volcano_analysis() for this hypothesis, or NULL.
#'   Only used when the hypothesis has exactly 2 groups, via Volcano_res$confirmatory$volcano_stats
#'   (columns feature, padj).
#' @return List containing the plot, underlying data and export params. NULL if no VIP table available.
#' 

run_vip_heatmap <- function(stats_matrix, matrix_choice, metadata_hypo,
                            hypo_name, paths, chosen_color,
                            plsda_vip = NULL, oplsda_vip = NULL, Annotation_summary_table = NULL,
                            Volcano_res = NULL) {
  
  # ── Guards ─────────────────────────────────────────────────────────────
  
  if (is.null(plsda_vip) && is.null(oplsda_vip)) {
    warning("[VIP heatmap] No VIP table available. Returning NULL.")
    return(NULL)
  }
  
  vip_sources <- list("PLS-DA" = plsda_vip, "OPLS-DA" = oplsda_vip)
  vip_sources <- vip_sources[!sapply(vip_sources, is.null)]
  
  groups <- levels(droplevels(as.factor(metadata_hypo[[hypo_name]])))
  
  if (length(groups) < 2) {
    warning("[VIP heatmap] Fewer than 2 groups found. Returning NULL.")
    return(NULL)
  }
  
  # ── Reorder groups : reference on the left, comparison on the right ──────
  
  if (length(groups) == 2 && !is.null(Volcano_res) && !is.null(Volcano_res$parameters)) {
    
    ref_group  <- Volcano_res$parameters$ref_group
    comp_group <- Volcano_res$parameters$comp_group
    
    if (all(c(ref_group, comp_group) %in% groups)) {
      groups <- c(ref_group, comp_group)
    }
  }
  
  max_n <- max(sapply(vip_sources, nrow))
  
  # ── Significance stars (2-group hypotheses only, reusing volcano padj) ────
  
  padj_table <- if (length(groups) == 2 && !is.null(Volcano_res) && !is.null(Volcano_res$confirmatory)) {
    Volcano_res$confirmatory$volcano_stats %>%
      dplyr::select(feature, padj) %>%
      dplyr::mutate(stars = dplyr::case_when(
        padj < 0.001 ~ "***",
        padj < 0.01  ~ "**",
        padj < 0.05  ~ "*",
        TRUE         ~ "NS"
      ))
  } else {
    NULL
  }
  
  # ── Sample / Group annotation ────────────────────────────────────────────
  # Built once : it only depends on samples (metadata_hypo), never on which
  # features/VIP source is selected, so it is shared by every VIP source.
  
  annotations_full <- data.frame(
    Sample = metadata_hypo$SampleName,
    Group  = metadata_hypo[[hypo_name]]
  )
  annotations_full$Group <- factor(annotations_full$Group, levels = groups)
  annotations_full <- tibble::column_to_rownames(annotations_full, var = "Sample")
  
  sample_order <- rownames(stats_matrix)[rownames(stats_matrix) %in% rownames(annotations_full)]
  annotations  <- annotations_full[sample_order, , drop = FALSE]
  
  col_ann             <- HeatmapAnnotation(df = annotations, col = list(Group = chosen_color))
  column_custom_order <- rownames(annotations)[order(annotations$Group)]
  column_split_vec    <- annotations$Group
  
  # ── Feature selection + Gap statistic for a given VIP source ─────────────
  
  build_features <- function(vip_source, top_n) {
    
    feats <- vip_sources[[vip_source]] %>%
      dplyr::arrange(dplyr::desc(vip_score)) %>%
      dplyr::slice_head(n = top_n)
    
    valid_feats <- intersect(as.character(feats$feature), colnames(stats_matrix))
    if (length(valid_feats) < nrow(feats)) {
      warning("[VIP heatmap] ", nrow(feats) - length(valid_feats),
              " VIP feature(s) not found in stats_matrix and were dropped.")
    }
    feats <- feats[as.character(feats$feature) %in% valid_feats, ]
    
    mat <- t(as.matrix(stats_matrix[sample_order, valid_feats, drop = FALSE]))
    
    row_labels <- rownames(mat)
    if (!is.null(padj_table)) {
      stars <- padj_table$stars[match(row_labels, padj_table$feature)]
      stars[is.na(stars)] <- ""
      row_labels <- trimws(paste0(row_labels, " (", stars,")"))
    }
    
    set.seed(31)
    gap <- clusGap(
      mat,
      FUN = function(x, k) kmeans(x, centers = k, nstart = 15),
      K.max = min(8, nrow(mat) - 1),
      B = 25
    )
    suggested_k <- maxSE(gap$Tab[, "gap"], gap$Tab[, "SE.sim"], method = "firstSEmax")
    
    list(
      stats_matrix = mat,
      row_labels   = row_labels,
      vip_scores   = round(feats$vip_score, 2),
      suggested_k  = suggested_k
    )
  }
  
  # ── Heatmap object from a feature set + a set of display options ─────────
  # Same builder used for the live Shiny preview and for the final save loop.
  
  make_heatmap <- function(mat, row_labels, vip_scores, opts) {
    ComplexHeatmap::Heatmap(
      mat,
      name = "Scaled value",
      top_annotation = col_ann,
      right_annotation = if (opts$show_vip_bars) {
        rowAnnotation(
          `VIP score` = anno_barplot(
            vip_scores,
            baseline = 0,
            border = TRUE,
            bar_width = 0.7,
            gp = gpar(
              fill = "grey40",
              col = NA
            ),
            ylim = c(0, max(vip_scores, na.rm = TRUE) * 1.05),
            extend = 0,
            axis = TRUE,
            background = FALSE,
            width = unit(3, "cm")
          )
        )
      } else NULL,
      row_labels = row_labels,
      show_row_names = opts$show_row_names,
      column_title = "Samples",
      row_title = "Features",
      row_names_side = "left",
      cluster_columns = opts$cluster_columns,
      cluster_rows = opts$cluster_rows,
      clustering_method_columns = opts$clustering_method_columns,
      clustering_method_rows = opts$clustering_method_rows,
      clustering_distance_columns = opts$clustering_distance_columns,
      clustering_distance_rows = opts$clustering_distance_rows,
      column_order = opts$column_order,
      column_split = opts$column_split,
      col = circlize::colorRamp2(c(-2, 0, 2), c("#2166AC", "white", "#B2182B")),
      show_row_dend = opts$show_row_dend,
      row_dend_width = unit(opts$row_dend_width, "cm"),
      column_dend_height = unit(opts$column_dend_height, "cm"),
      row_dend_gp = gpar(col = "black", lwd = 1),
      row_gap = unit(opts$row_gap, "cm"),
      row_km = opts$row_km,
      show_parent_dend_line = opts$show_parent_dend_line
    )
  }
  
  # ══════════════════════════════════════════════════════════════════════════
  # SHINY APP — used only to tune display options. Feature selection (VIP
  # source / top N) drives the live preview, but on Submit only the display
  # options are returned : every available VIP source is then rendered and
  # saved with those same options (see save loop below).
  # ══════════════════════════════════════════════════════════════════════════
  
  run_shiny_builder <- function() {
    
    ui <- fluidPage(
      titlePanel(paste0("\U0001F3C5 VIP heatmap — ", hypo_name)),
      
      sidebarLayout(
        sidebarPanel(
          
          radioButtons("vip_source", "VIP source (preview only)", choices = names(vip_sources)),
          
          sliderInput("top_n", "Number of features", value = min(max_n, 25), min = 2, max = max_n, step = 1),
          
          actionButton("update_features", "Update features", class = "btn-secondary"),
          
          textOutput("suggested_k_text"),
          
          hr(),
          
          numericInput("row_km", "Row k-means clusters", value = 1, min = 1, max = max_n, step = 1),
          
          checkboxInput("cluster_rows", "Cluster rows", TRUE),
          
          checkboxInput("cluster_columns", "Cluster columns", TRUE),
          
          selectInput("clustering_distance_rows", "Row clustering distance",
                      choices = c("euclidean","manhattan","maximum","canberra","binary","minkowski"),
                      selected = "euclidean"),
          
          selectInput("clustering_distance_columns", "Column clustering distance",
                      choices = c("euclidean","manhattan","maximum","canberra","binary","minkowski"),
                      selected = "euclidean"),
          
          selectInput("clustering_method_rows", "Row clustering method",
                      choices = c("ward.D","ward.D2","complete","average","single","centroid"),
                      selected = "ward.D2"),
          
          selectInput("clustering_method_columns", "Column clustering method",
                      choices = c("ward.D","ward.D2","complete","average","single","centroid"),
                      selected = "ward.D2"),
          
          sliderInput("row_dend_width", "Row dendrogram width (cm)", 0.5, 10, 2, 0.5),
          
          sliderInput("column_dend_height", "Column dendrogram height (cm)", 0.5, 10, 3, 0.5),
          
          sliderInput("row_gap", "row_gap (cm)", 0, 2, 0.5, 0.1),
          
          checkboxInput("show_row_names", "Show row names", TRUE),
          
          checkboxInput("show_row_dend", "Show row dendrogram", TRUE),
          
          checkboxInput("show_parent_dend_line", "Show parent dendrogram lines", TRUE),
          
          checkboxInput("use_column_split", "Use column split", TRUE),
          
          checkboxInput("use_column_order", "Use custom column order", TRUE),
          
          checkboxInput("show_vip_bars", "Show VIP score bars", TRUE),
          
          helpText("On Submit, these display settings are applied to save one heatmap ",
                   "per available VIP source (PLS-DA / OPLS-DA)."),
          
          actionButton("submit", "Submit", class = "btn-success")
        ),
        
        mainPanel(
          tabsetPanel(
            tabPanel("Parameter Description",
                     
                     hr(),
                     tags$b("VIP source"),
                     p("Which VIP table (PLS-DA / OPLS-DA) drives the live preview. Both are saved regardless of this choice."),
                     
                     tags$b("Number of features"),
                     p("Top-N features ranked by VIP score."),
                     
                     tags$b("Update features"),
                     p("Rebuilds the preview matrix and recomputes the Gap statistic for the selected VIP source and top N."),
                     
                     tags$b("Row k-means clustering"),
                     p("Apply k-means clustering on rows. If > 1, heatmap rows are split by k-means."),
                     
                     tags$b("Cluster rows"),
                     p("Enable hierarchical clustering on rows."),
                     
                     tags$b("Cluster columns"),
                     p("Enable hierarchical clustering on columns."),
                     
                     tags$b("Row / Column clustering distance"),
                     p("Distance metric used for hierarchical clustering."),
                     
                     tags$b("Row / Column clustering method"),
                     p("Agglomeration method used for hierarchical clustering."),
                     
                     tags$b("Row dendrogram width / Column dendrogram height"),
                     p("Adjusts dendrogram line size."),
                     
                     tags$b("Row gap"),
                     p("Adds a space between feature clusters."),
                     
                     tags$b("Show row names"),
                     p("Display feature names (with significance stars, if available) on the heatmap rows."),
                     
                     tags$b("Show row dendrogram / parent dendrogram lines"),
                     p("Displays the hierarchical clustering dendrogram / manual split lines."),
                     
                     tags$b("Use column split / column order"),
                     p("Split / order heatmap columns by group. Ignored if column clustering is activated."),
                     
                     tags$b("Show VIP score bars"),
                     p("Adds a right-side bar plot of the VIP score for each feature.")),
            
            tabPanel("Reactive Heatmap",
                     plotOutput("heatmap_plot", height = "80vh"))
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      feat_data <- reactiveValues(stats_matrix = NULL, row_labels = NULL, vip_scores = NULL, suggested_k = 1)
      
      update_feat_data <- function(vip_source, top_n) {
        feat <- build_features(vip_source, top_n)
        feat_data$stats_matrix <- feat$stats_matrix
        feat_data$row_labels   <- feat$row_labels
        feat_data$vip_scores   <- feat$vip_scores
        feat_data$suggested_k  <- feat$suggested_k
        updateNumericInput(session, "row_km", value = feat$suggested_k)
      }
      
      # Eager initial computation : ensures feat_data is populated BEFORE
      # the first render, instead of relying on reactive execution order.
      update_feat_data(names(vip_sources)[1], min(max_n, 25))
      
      observeEvent(input$update_features, {
        update_feat_data(input$vip_source, input$top_n)
      })
      
      output$suggested_k_text <- renderText({
        req(feat_data$suggested_k)
        paste0("Suggested clusters (Gap statistic) : ", feat_data$suggested_k)
      })
      
      current_opts <- reactive({
        list(
          show_row_names = input$show_row_names,
          cluster_columns = input$cluster_columns,
          cluster_rows = input$cluster_rows,
          clustering_method_columns = input$clustering_method_columns,
          clustering_method_rows = input$clustering_method_rows,
          clustering_distance_columns = input$clustering_distance_columns,
          clustering_distance_rows = input$clustering_distance_rows,
          column_order = if (input$use_column_order && !input$cluster_columns) column_custom_order else NULL,
          column_split = if (input$use_column_split && !input$cluster_columns) column_split_vec else NULL,
          show_row_dend = input$show_row_dend,
          row_dend_width = input$row_dend_width,
          column_dend_height = input$column_dend_height,
          row_gap = input$row_gap,
          row_km = input$row_km,
          show_parent_dend_line = input$show_parent_dend_line,
          show_vip_bars = input$show_vip_bars
        )
      })
      
      heatmap_reactive <- reactive({
        req(feat_data$stats_matrix)
        make_heatmap(feat_data$stats_matrix, feat_data$row_labels, feat_data$vip_scores, current_opts())
      })
      
      output$heatmap_plot <- renderPlot({
        draw(heatmap_reactive())
      })
      
      observe({
        if (input$cluster_columns) {
          updateCheckboxInput(session, "use_column_order", value = FALSE)
          updateCheckboxInput(session, "use_column_split", value = FALSE)
        }
      })
      
      observeEvent(input$submit, {
        
        if (input$clustering_method_rows == "ward.D2" && input$clustering_distance_rows != "euclidean") {
          showNotification("Row clustering : Ward.D2 requires euclidean distance", type = "error")
          return()
        }
        
        if (input$clustering_method_columns == "ward.D2" && input$clustering_distance_columns != "euclidean") {
          showNotification("Column clustering : Ward.D2 requires euclidean distance", type = "error")
          return()
        }
        
        stopApp(modifyList(current_opts(), list(top_n = input$top_n)))
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  Parameters <- run_shiny_builder()
  
  # ── Save one heatmap per available VIP source ────────────────────────────
  
  out_chart <- file.path(paths$sup_chart, "VIP_heatmap")
  out_data  <- file.path(paths$sup_data, "VIP_heatmap")
  dir.create(out_chart, recursive = TRUE, showWarnings = FALSE)
  dir.create(out_data,  recursive = TRUE, showWarnings = FALSE)
  
  results <- list()
  
  for (src in names(vip_sources)) {
    
    feat <- build_features(src, Parameters$top_n)
    hm   <- make_heatmap(feat$stats_matrix, feat$row_labels, feat$vip_scores, Parameters)
    
    params_src <- modifyList(Parameters, list(
      vip_source = src,
      features   = rownames(feat$stats_matrix),
      name = "Scaled value",
      column_title = "Samples",
      row_title = "Features",
      row_names_side = "left"
    ))
    
    n_features <- nrow(feat$stats_matrix)
    n_samples  <- ncol(feat$stats_matrix)
    
    pdf_width <- min(
      max(10, 0.35 * n_samples + 4),
      30
    )
    
    pdf_height <- min(
      max(8, 0.25 * n_features + 4),
      30
    )
    
    pdf(
      file.path(
        out_chart,
        paste0("VIP_heatmap_", hypo_name, "_", src, ".pdf")
      ),
      width = pdf_width,
      height = pdf_height
    )
    
    draw(hm)
    dev.off()
    
    saveRDS(params_src,
            file = file.path(out_data, paste0("VIP_heatmap_", hypo_name, "_", src, "_parameters.rds")))
    
    results[[src]] <- list(plot = hm, params = params_src)
  }
  
  return(results)
}


#-------------------------------------------------------------------------------------------------------------------


#' Perform Random Forest analysis
#'
#' @param stats_matrix Input data matrix : Samples * Features + 1 class column
#' @param hypo_name Name of the hypothesis currently being analysed (chr)
#' @param paths Output paths for saving results (list of chr)
#' @return List containing RF results and plots


run_RF_analysis <- function(stats_matrix, hypo_name, paths){
  
  
  # Explanatory variables without class column
  
  X <- stats_matrix[, colnames(stats_matrix) != hypo_name]
  
  # Categorical variable (groups)
  
  Y <- as.factor(stats_matrix[, hypo_name])
  
  # Function for selecting Random forest parameters
  
  get_RF_params_gui <- function(defaults = list(), X = NULL) {
    
    `%||%` <- function(a, b) if (!is.null(a)) a else b
    
    ui <- fluidPage(
      
      tags$head(
        tags$style(HTML("
      .param-section-title {
        margin-top: 26px;
        margin-bottom: 10px;
        padding-left: 10px;
        border-left: 4px solid #2C7BE5;
        font-weight: 600;
        font-size: 15px;
        letter-spacing: 0.4px;
        text-transform: uppercase;
        color: #2c3e50;
      }
      .param-section-title:first-of-type { margin-top: 4px; }

      .param-hint {
        font-size: 12.5px;
        color: #8a93a0;
        margin-bottom: 18px;
      }

      details.param-card {
        background: #fbfcfd;
        border: 1px solid #e3e7ec;
        border-radius: 8px;
        margin-bottom: 8px;
        overflow: hidden;
      }

      details.param-card summary {
        cursor: pointer;
        list-style: none;
        padding: 10px 14px;
        font-size: 14px;
        font-weight: 600;
        color: #1f2d3d;
        background: #f1f4f8;
        display: flex;
        align-items: center;
      }
      details.param-card summary::-webkit-details-marker { display: none; }
      details.param-card summary::before {
        content: '\u25B8';
        color: #2C7BE5;
        margin-right: 8px;
        display: inline-block;
        transition: transform 0.15s ease;
      }
      details.param-card[open] summary::before { transform: rotate(90deg); }
      details.param-card[open] summary { border-bottom: 1px solid #e3e7ec; }

      .param-card-body {
        padding: 12px 16px;
        font-size: 13.5px;
        line-height: 1.55;
        color: #3a3f44;
      }
      .param-card-body ul { margin: 6px 0 0 18px; padding: 0; }
      .param-card-body li { margin-bottom: 4px; }
    "))
      ),
      
      titlePanel("\U0001F333 Random Forest Parameters"),
      
      sidebarLayout(
        sidebarPanel(
          
          numericInput("num.trees", "Number of trees",
                       value = defaults$num.trees %||% 1000, min = 10, step = 50),
          
          numericInput("mtry", "mtry",
                       value = defaults$mtry %||% floor(sqrt(ncol(X))), min = 1, step = 1),
          
          selectInput("importance", "Variable importance",
                      choices = c("none", "impurity", "impurity_corrected", "permutation"),
                      selected = defaults$importance %||% "permutation"),
          
          checkboxInput("scale.permutation.importance", "Scale permutation importance",
                        value = defaults$scale.permutation.importance %||% TRUE),
          
          checkboxInput("write.forest", "Keep forest",
                        value = defaults$write.forest %||% TRUE),
          
          checkboxInput("probability", "Probability forest",
                        value = defaults$probability %||% FALSE),
          
          checkboxInput("classification", "Classification",
                        value = defaults$classification %||% TRUE),
          
          numericInput("min.node.size", "Minimum node size",
                       value = defaults$min.node.size %||% 1, min = 1, step = 1),
          
          checkboxInput("replace", "Bootstrap (replace)",
                        value = defaults$replace %||% TRUE),
          
          checkboxInput("oob.error", "Compute OOB error",
                        value = defaults$oob.error %||% TRUE),
          
          checkboxInput("keep.inbag", "Keep inbag",
                        value = defaults$keep.inbag %||% TRUE),
          
          numericInput("num.threads", "Threads",
                       value = defaults$num.threads %||% 8, min = 1, step = 4),
          
          numericInput("seed", "Seed",
                       value = defaults$seed %||% 31, min = 1, step = 1),
          
          selectInput("splitrule", "Split rule",
                      choices = c("gini", "extratrees", "hellinger"),
                      selected = defaults$splitrule %||% "gini"),
          
          actionButton("submit", "Submit", class = "btn-success")
          
        ),
        
        mainPanel(
          
          h4("Parameter Description"),
          p(class = "param-hint", "Click a parameter below to expand its detailed explanation."),
          
          # ── Forest Structure ─────────────────────────────────────────────────
          
          div(class = "param-section-title", "Forest Structure"),
          
          tags$details(class = "param-card",
                       tags$summary("Number of trees"),
                       div(class = "param-card-body",
                           p("Controls the number of trees grown in the forest. Higher values improve stability but increase computation time.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Mtry — It is not recommended to change this value"),
                       div(class = "param-card-body",
                           p("Defines the number of variables tested at each split. Lower values increase randomness while higher values reduce bias.", br(),
                             "This value has been calculated by : floor(sqrt(ncol(X))) ")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Minimum node size"),
                       div(class = "param-card-body",
                           p("Controls the minimum size of terminal nodes. Smaller values produce more complex trees.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Split rule"),
                       div(class = "param-card-body",
                           p("Defines the criterion used to split nodes. Gini is the standard for classification tasks.")
                       )
          ),
          
          # ── Sampling & Validation ────────────────────────────────────────────
          
          div(class = "param-section-title", "Sampling & Validation"),
          
          tags$details(class = "param-card",
                       tags$summary("Bootstrap sampling"),
                       div(class = "param-card-body",
                           p("Indicates whether sampling is done with replacement. This is the standard random forest approach.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("OOB error"),
                       div(class = "param-card-body",
                           p("Enables the computation of out-of-bag error, which provides an internal estimate of model performance.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Keep inbag"),
                       div(class = "param-card-body",
                           p("Stores information about which samples were used in each tree. Useful for stability analysis.")
                       )
          ),
          
          # ── Variable Importance ──────────────────────────────────────────────
          
          div(class = "param-section-title", "Variable Importance"),
          
          tags$details(class = "param-card",
                       tags$summary("Variable importance"),
                       div(class = "param-card-body",
                           p("Specifies how the importance of variables is computed. Permutation importance is more reliable for biological interpretation.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Scale permutation importance"),
                       div(class = "param-card-body",
                           p("Normalizes permutation importance by its variability to reduce the impact of noisy variables.")
                       )
          ),
          
          # ── Output & Reproducibility ─────────────────────────────────────────
          
          div(class = "param-section-title", "Output & Reproducibility"),
          
          tags$details(class = "param-card",
                       tags$summary("Classification"),
                       div(class = "param-card-body",
                           p("Defines whether the model is a classification or regression forest. Must be TRUE for categorical outcomes.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Probability forest"),
                       div(class = "param-card-body",
                           p("If enabled, the model outputs class probabilities instead of only class labels.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Keep forest"),
                       div(class = "param-card-body",
                           p("Determines whether the trained forest is stored for future predictions.")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Threads"),
                       div(class = "param-card-body",
                           p("Defines the number of CPU cores used for parallel computation ",
                             tags$span("(adjust according to your device)", style = "color:#FD7E14;"), ".")
                       )
          ),
          
          tags$details(class = "param-card",
                       tags$summary("Seed"),
                       div(class = "param-card-body",
                           p("Ensures reproducibility of the results.")
                       )
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      observeEvent(input$submit, {
        
        chosen_mtry <- if (is.na(input$mtry)) NULL else input$mtry
        
        stopApp(list(
          num.trees = input$num.trees,
          mtry = chosen_mtry,
          importance = input$importance,
          write.forest = input$write.forest,
          probability = input$probability,
          classification = input$classification,
          min.node.size = input$min.node.size,
          replace = input$replace,
          oob.error = input$oob.error,
          keep.inbag = input$keep.inbag,
          num.threads = input$num.threads,
          seed = input$seed,
          scale.permutation.importance = input$scale.permutation.importance,
          splitrule = input$splitrule
        ))
        
      })
      
    }
    
    shiny::runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  RF_params <- get_RF_params_gui(X = X)
  
  # RF Model creation 
  
  rf_model <- ranger(
    x = X,                                   # Matrix of explanatory variables : Samples x Features
    y = Y,                                   # Response : must be a factor for classification
    num.trees = RF_params$num.trees,         # Number of trees ; higher = more stable, slower
    mtry = RF_params$mtry,                   # Number of candidate variables at each split
    importance = RF_params$importance,       # How the importance is calculated
    write.forest = RF_params$write.forest,   # Saves the forest for subsequent predictions
    probability = RF_params$probability,     # TRUE only if you want probabilities per class
    min.node.size = RF_params$min.node.size, # Small leaves = more flexible trees
    replace = RF_params$replace,             # Classic bootstrap for the random forest
    oob.error = RF_params$oob.error,         # Calculates the OOB error
    keep.inbag = RF_params$keep.inbag,       # Useful for stability analyses / advanced OOB
    num.threads = RF_params$num.threads,     # Number of threads used for Parallelisation 
    verbose = TRUE,                          # Displays progress
    seed = RF_params$seed,                   # Reproducibility
    scale.permutation.importance = RF_params$scale.permutation.importance, # Permutation importance scaling
    splitrule = RF_params$splitrule,         # Defines the criterion used to split nodes.
    na.action = "na.learn"                   # Learns to handle missing values without imputation, by determining the optimal direction at each node
  )
  
  # RF Variable Importance
  
  var_imp <- as.data.frame(rf_model$variable.importance)
  var_imp$feature <- rownames(var_imp)
  colnames(var_imp)[1] <- "RF_Importance"
  
  var_imp <- var_imp[order(-var_imp$RF_Importance), ] # Importance Reordering
  
  var_imp <- var_imp %>%
    select(feature, RF_Importance) # Column Reordering
  
  # OOB error
  
  OOB_error <- rf_model$prediction.error
  
  # Confusion matrix
  
  Confusion_mat <- rf_model$confusion.matrix
  
  # Data save
  
  saveRDS(object = rf_model, file = file.path(paths$sup_data, "Random_Forest", paste0("RF_Model_", hypo_name,".rds")))
  write.csv(Confusion_mat,
            file = file.path(paths$sup_data, "Random_Forest", paste0("RF_Confusion_matrix_", hypo_name,".csv")),
            row.names = FALSE)
  write.csv(OOB_error,
            file = file.path(paths$sup_data, "Random_Forest", paste0("RF_OOB_error_", hypo_name,".csv")),
            row.names = FALSE)
  write.csv(var_imp, file = file.path(paths$sup_data, "Random_Forest", paste0("VIP_RF_", hypo_name,".csv")),
            row.names = FALSE)
  
  # Return list
  
  return(list(
    model = rf_model,
    all_vip = var_imp,
    Confusion_mat = Confusion_mat,
    OOB_error = OOB_error
  ))
  
}  
  
  

#-------------------------------------------------------------------------------------------------------------------


#' Perform Volcano Plot Analysis — Dual strategy (confirmatory + exploratory)
#'
#' Runs two parallel volcano analyses on the same dataset:
#'   - Confirmatory : all detected features + BH correction across the full set
#'   - Exploratory  : VIP pre-filtered features (PLS-DA / OPLS-DA) + BH correction
#'                    within the reduced set. Results are hypothesis-generating only
#'                    (feature selection and testing share the same data).
#'
#' @param pre_scaled_matrix Input data matrix without scaling (log-transformed) : Samples × Features
#' @param matrix_choice             Choice of matrix made at an early stage :  unannotated features / annotated features / features with and without annotations
#' @param metadata_hypo             Metadata table : columns ("SampleName", hypo_name, "PairedID")
#' @param hypo_name                 Name of the hypothesis currently being analysed (chr)
#' @param paths                     Output paths for saving results (list of chr)
#' @param PLSDA_VIP                 PLS-DA VIP data frame : columns feature + vip_score
#' @param OPLSDA_VIP                OPLS-DA VIP data frame : columns feature + vip_score (optional)
#' @param Annotation_summary_table             Annotation table (optional)
#'
#' @return List with two slots :
#'   $confirmatory : list(volcano_stats, plot)
#'   $exploratory  : list(volcano_stats, plot) or NULL if no VIP features
#'   $parameters   : list(pval_thresh, logfc_thresh, is_paired, ref_group, comp_group)


run_volcano_analysis <- function(pre_scaled_matrix, 
                                 matrix_choice,
                                 metadata_hypo,
                                 hypo_name,
                                 paths,
                                 PLSDA_VIP,
                                 OPLSDA_VIP   = NULL,
                                 Annotation_summary_table = NULL) {
  
  
  # SHARED SHINY THEME  (reused by every UI screen of this function)
  
  app_css <- "
    body {
      background-color:#F4F6F9;
      font-family:'Segoe UI','Helvetica Neue',Arial,sans-serif;
      color:#1A2C42;
    }
    .app-title {
      color:#1A2C42; font-weight:700; font-size:23px;
      padding:16px 4px 2px 4px; letter-spacing:0.2px;
    }
    .app-subtitle {
      color:#6B7686; font-size:13px; padding:0 4px 18px 4px;
    }
    .well {
      background:#FFFFFF; border:none; border-radius:12px;
      box-shadow:0 2px 12px rgba(24,39,75,0.08); padding:22px;
    }
    .example-box {
      background: #F5F7FA;
      border-left: 4px solid #4A90D9;
      border-radius: 4px;
      padding: 10px 14px;
      margin: 10px 0;
      font-size: 13px;
      line-height: 1.5;
    }
    .section-card {
      background:#FFFFFF; border-radius:12px;
      box-shadow:0 2px 12px rgba(24,39,75,0.08);
      padding:20px 24px; margin-bottom:16px;
    }
    h3, h4 { color:#1A2C42; font-weight:600; }
    h4 { margin-top:4px; }
    hr { border-top:1px solid #E3E7ED; margin:16px 0; }
    p, li { color:#3A4657; font-size:13.5px; line-height:1.55; }
    .btn-success {
      background-color:#2C7BE5; border-color:#2C7BE5;
      border-radius:7px; font-weight:600; padding:9px 26px;
      transition:all .15s ease; box-shadow:0 2px 6px rgba(44,123,229,0.35);
    }
    .btn-success:hover {
      background-color:#1B5FC0; border-color:#1B5FC0; transform:translateY(-1px);
    }
    .info-badge {
      padding:10px 14px; border-radius:8px; margin-bottom:14px;
      font-weight:600; font-size:12.5px; color:#FFFFFF;
    }
    .form-control, .selectize-input {
      border-radius:7px !important; border:1px solid #DCE1E9 !important;
    }
    .irs-bar, .irs-bar-edge { background:#2C7BE5 !important; border-color:#2C7BE5 !important; }
    .checkbox label, .radio label { font-size:13.5px; }
    .shiny-input-container { margin-bottom:10px; }
  "
  
  page_header <- function(title, subtitle = NULL) {
    tagList(
      div(class = "app-title", title),
      if (!is.null(subtitle)) div(class = "app-subtitle", subtitle)
    )
  }
  
  # ══════════════════════════════════════════════════════════════════════════
  # DATA PREPARATION
  # ══════════════════════════════════════════════════════════════════════════
  
  X <- pre_scaled_matrix
  
  # ── Feature annotation ────────────────────────────────────────────────────
  
  if (matrix_choice %in% c("Final_output_annotated",
                           "Final_output_annotated_complete") &&
      !is.null(Annotation_summary_table)) {
    
    X_t <- t(X)   # Features × Samples
    
    X_t <- as.data.frame(X_t, check.names = FALSE) %>%
      tibble::rownames_to_column("Feature_name_code") %>%
      dplyr::left_join(
        Annotation_summary_table[, c("Feature_name_code", "Only_annot_unique_name")],
        by = "Feature_name_code"
      )
    
    if (matrix_choice == "Final_output_annotated") {
      
      # Removal of all unannotated features (NA in Only_annot_unique_name)
      X_t <- X_t %>%
        dplyr::filter(!is.na(Only_annot_unique_name))
      
    } else {
      
      X_t <- X_t %>%
        dplyr::mutate(
          Only_annot_unique_name = ifelse(is.na(Only_annot_unique_name),
                                          Feature_name_code,
                                          Only_annot_unique_name)
        )
    }
    
    X_t <- X_t %>%
      mutate(
        Only_annot_unique_name = make.unique(
          Only_annot_unique_name,
          sep = "_#"
        )) %>%
      dplyr::select(-Feature_name_code) %>%
      tibble::column_to_rownames("Only_annot_unique_name")
    
    X <- as.data.frame(t(X_t), check.names = FALSE)   # Samples × Features
  }
  
  # ── Attach Sample column ──────────────────────────────────────────────────
  
  X <- data.frame(Sample = rownames(X), X, row.names = NULL, check.names = FALSE)
  
  # ── Join metadata ─────────────────────────────────────────────────────────
  
  volcano_df <- X %>%
    dplyr::left_join(
      metadata_hypo[, c("SampleName", hypo_name, "PairedID", "Longitudinal_TimePoint")],
      by = c("Sample" = "SampleName")
    ) %>%
    dplyr::filter(!is.na(.data[[hypo_name]]))
  
  # ── Guard : exactly 2 groups required ────────────────────────────────────
  
  n_groups <- length(unique(volcano_df[[hypo_name]]))
  
  if (n_groups != 2) {
    
    message("=== VOLCANO DEBUG ===")
    message("nrow volcano_df   : ", nrow(volcano_df))
    message("unique groups     : ", n_groups)
    message("group values      : ", paste(unique(volcano_df[[hypo_name]]), collapse = " | "))
    message("match brut        : ", sum(X$Sample %in% metadata_hypo$SampleName))
    message("match trimws      : ", sum(trimws(X$Sample) %in% trimws(metadata_hypo$SampleName)))
    message("=====================")
    message("Volcano plot cannot be performed : requires exactly 2 groups.")
    return(NULL)
  }
  
  # ── All features (confirmatory set) ───────────────────────────────────────
  
  all_features <- setdiff(colnames(volcano_df), c("Sample", hypo_name, "PairedID", "Longitudinal_TimePoint"))
  
  # ── VIP features (exploratory set) ───────────────────────────────────────
  
  vip_pls  <- if (!is.null(PLSDA_VIP))  PLSDA_VIP$feature  else character(0)
  vip_opls <- if (!is.null(OPLSDA_VIP)) OPLSDA_VIP$feature else character(0)
  
  vip_features <- intersect(union(vip_pls, vip_opls), all_features)
  
  if (length(vip_features) == 0) {
    message("No VIP features found — exploratory analysis will be skipped.")
  }
  
  # ══════════════════════════════════════════════════════════════════════════
  # SHARED USER INPUTS  (asked once, applied to both analyses)
  # ══════════════════════════════════════════════════════════════════════════
  
  # ── Reference / comparison groups ─────────────────────────────────────────
  
  get_reference_comparison <- function() {
    
    ui <- fluidPage(
      title = paste0("Define Reference and Comparison Groups"),
      tags$head(tags$style(HTML(app_css))),
      page_header("🎯 Define Reference and Comparison Groups",
                  paste0("Hypothesis : ", hypo_name)),
      sidebarLayout(
        sidebarPanel(
          selectInput("ref_group",  "Reference Group :",
                      choices = unique(volcano_df[[hypo_name]])),
          selectInput("comp_group", "Comparison Group :",
                      choices = unique(volcano_df[[hypo_name]])),
          br(),
          helpText("What has increased or decreased in the Comparison Group vs the Reference Group ?"),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          div(class = "section-card",
              h4("Current selections :"),
              verbatimTextOutput("current_selections")
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      output$current_selections <- renderText({
        paste0("Reference  : ", input$ref_group,  "\n",
               "Comparison : ", input$comp_group)
      })
      
      observeEvent(input$submit, {
        if (input$ref_group == input$comp_group) {
          showNotification(
            "Error : Reference and Comparison groups must be different.",
            type = "error", duration = 5
          )
        } else {
          stopApp(list(ref_group  = input$ref_group,
                       comp_group = input$comp_group))
        }
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  group_selection <- get_reference_comparison()
  ref_group       <- group_selection$ref_group
  comp_group      <- group_selection$comp_group
  
  # ── Paired data + longitudinal covariate ──────────────────────────────────
  #
  # Both questions live in the SAME Shiny app : whether to enable the
  # paired (subject-level) statistical model, and — only if paired is
  # enabled and the data actually support it — whether to also model the
  # Longitudinal_TimePoint column as a fixed-effect covariate.
  
  design_choice_ui <- function(hypo_name) {
    
    # ── Guard : PairedID column not entirely empty ───────────────────────
    
    pairedID_is_empty <- all(is.na(volcano_df$PairedID))
    
    # ── Count valid pairs (skipped if PairedID is empty) ─────────────────
    
    valid_paired_df <- if (pairedID_is_empty) {
      volcano_df[0, ]
    } else {
      volcano_df %>%
        dplyr::filter(stats::complete.cases(dplyr::select(., c("Sample", hypo_name, "PairedID")))) %>%
        dplyr::group_by(PairedID) %>%
        dplyr::filter(dplyr::n_distinct(.data[[hypo_name]]) == 2) %>%
        dplyr::ungroup()
    }
    
    n_valid_pairs <- if (pairedID_is_empty) {
      0L
    } else {
      length(unique(valid_paired_df$PairedID))
    }
    
    pair_badge_color <- dplyr::case_when(
      n_valid_pairs >= 10 ~ "#1CE82C",
      n_valid_pairs >=  5 ~ "#FFC107",
      n_valid_pairs >=  3 ~ "#F58300",
      TRUE                ~ "#F54927"
    )
    
    pair_badge_text <- dplyr::case_when(
      n_valid_pairs >= 10 ~ paste0("\u2713 ", n_valid_pairs, " complete pairs \u2014 Paired analysis allowed"),
      n_valid_pairs >=  5 ~ paste0("\u26A0 ", n_valid_pairs, " pairs \u2014 Allowed but low power"),
      n_valid_pairs >=  3 ~ paste0("\u203C ", n_valid_pairs, " pair(s) \u2014 The volcano plot will be generated, 
                           but the statistics will have very little statistical power 
                           (for generating hypotheses only)."),
      TRUE                ~ paste0("\u203C ", n_valid_pairs, " pair(s) \u2014 The volcano plot will not be produced,
                           as the statistics would not be reliable.")
    )
    
    # ── Guard : Longitudinal_TimePoint has >= 2 distinct values among the
    #            valid pairs (only meaningful once paired data is possible) ──
    
    longitudinal_is_empty <- all(is.na(volcano_df$Longitudinal_TimePoint))
    
    n_timepoints <- if (pairedID_is_empty || longitudinal_is_empty) {
      0L
    } else {
      valid_paired_df %>%
        dplyr::filter(!is.na(Longitudinal_TimePoint)) %>%
        dplyr::pull(Longitudinal_TimePoint) %>%
        unique() %>%
        length()
    }
    
    longitudinal_available <- n_timepoints > 2
    
    longitudinal_badge_color <- if (longitudinal_available) "#1CE82C" else "#9AA3B1"
    longitudinal_badge_text <- if (longitudinal_available) {
      paste0("\u2713 ", n_timepoints, " distinct time points detected \u2014 covariate available")
    } else if (n_timepoints == 2) {
      paste0("\u26D4 Only 2 distinct time points detected (", n_timepoints,
             ") \u2014 this is a simple before/after design, covariate not applicable")
    } else {
      "\u26D4 Longitudinal covariate unavailable (column empty or fewer than 3 time points among valid pairs)"
    }
    
    ui <- fluidPage(
      title = paste0("Volcano Stat - Study Design"),
      tags$head(tags$style(HTML(app_css))),
      page_header(paste0("\U0001F52C Study Design \u2014 ", hypo_name),
                  "Pairing and longitudinal-time settings apply to both the confirmatory and exploratory analyses."),
      sidebarLayout(
        sidebarPanel(
          checkboxInput("is_paired",
                        "Are the data paired for the current hypothesis ?",
                        value = FALSE),
          uiOutput("paired_error_banner"),
          uiOutput("paired_badge"),
          
          hr(),
          
          conditionalPanel(
            condition = "input.is_paired == true",
            tags$b("Include the longitudinal time covariate ?"),
            br(), br(),
            uiOutput("longitudinal_badge"),
            radioButtons("use_longitudinal", NULL,
                         choices  = c("No" = "no", "Yes" = "yes"),
                         selected = "no", inline = TRUE)
          ),
          
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          div(class = "section-card",
              tags$b("Paired data"),
              p("Each observation in one group is linked to a specific observation in
        another group (e.g. same subject measured twice). When enabled, a
        subject-level random effect is added to the model (Linear Mixed Model
        instead of Mann-Whitney).")
          ),
          div(class = "section-card",
              tags$b("Longitudinal time covariate"),
              p("Use this when subjects were measured at ", strong("three or more repeated time points"),
                " (e.g. Day 0 / Day 7 / Day 30). Time itself often creates a natural trend, ",
                "independent of your groups (drift, seasonality, regression to the mean...). ",
                "This option tells the model to isolate that trend, so it doesn't get ",
                "mixed up with the group effect you actually want to measure."),
              
              tags$div(class = "example-box",
                       tags$p(strong("Yes \u2014 use it:"),
                              " Glucose measured at Day 0/14/28/60 in a drug vs placebo trial. ",
                              "Glucose naturally drifts over 2 months regardless of treatment. ",
                              "Separating time from group avoids over- or under-estimating the drug effect.")
              ),
              tags$div(class = "example-box",
                       tags$p(strong("No \u2014 simple before/after:"),
                              " Weight measured before and after a 2-week diet. With only 2 time points, ",
                              "\u2018time\u2019 and \u2018group\u2019 (before vs after) are the same thing \u2014 ",
                              "there's nothing left to separate.")
              ),
              tags$div(class = "example-box",
                       tags$p(strong("No \u2014 sparse/unbalanced follow-up:"),
                              " 4 time points planned, but subjects were actually measured on very ",
                              "different days. Not enough shared structure to estimate a reliable time trend.")
              ),
              
              tags$ul(
                tags$li(strong("Yes"), " if: \u2265 3 shared time points across subjects, and time ",
                        "could plausibly confound the group effect."),
                tags$li(strong("No"), " if: only 2 time points, or time points too irregular/sparse ",
                        "to estimate a trend reliably.")
              ),
              
              p(em("This option only appears once \u2018paired\u2019 is enabled, and can only be set ",
                   "to \u2018Yes\u2019 when at least three distinct time points exist in the data."))
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      # ── Force checkbox back to FALSE if PairedID is empty ─────────────────
      
      observeEvent(input$is_paired, {
        if (pairedID_is_empty && isTRUE(input$is_paired)) {
          updateCheckboxInput(session, "is_paired", value = FALSE)
          showNotification(
            "\u26D4 Cannot enable paired analysis : PairedID column is empty.",
            type = "error", duration = 5
          )
        }
      })
      
      # ── Force longitudinal choice back to "no" if unavailable ─────────────
      
      observeEvent(input$use_longitudinal, {
        if (!longitudinal_available && identical(input$use_longitudinal, "yes")) {
          updateRadioButtons(session, "use_longitudinal", selected = "no")
          showNotification(
            "\u26D4 Longitudinal covariate unavailable for this hypothesis.",
            type = "error", duration = 5
          )
        }
      }, ignoreInit = TRUE)
      
      output$paired_error_banner <- renderUI({
        if (pairedID_is_empty) {
          div(class = "info-badge", style = "background:#F54927;",
              "\u26D4 Paired analysis is not available : the PairedID column is empty.",
              tags$br(),
              tags$span(
                style = "font-weight:normal;font-size:12px;",
                "Please fill in PairedID in your metadata if your data are paired."
              )
          )
        }
      })
      
      output$paired_badge <- renderUI({
        if (!pairedID_is_empty) {
          div(class = "info-badge", style = paste0("background:", pair_badge_color, ";"),
              pair_badge_text)
        }
      })
      
      output$longitudinal_badge <- renderUI({
        div(class = "info-badge", style = paste0("background:", longitudinal_badge_color, ";"),
            longitudinal_badge_text)
      })
      
      observeEvent(input$submit, {
        stopApp(list(
          is_paired        = isTRUE(input$is_paired),
          use_longitudinal = isTRUE(input$is_paired) &&
            longitudinal_available &&
            identical(input$use_longitudinal, "yes")
        ))
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  design_choice    <- design_choice_ui(hypo_name)
  is_paired        <- design_choice$is_paired
  use_longitudinal <- design_choice$use_longitudinal
  
  # ── Apply paired filtering once ───────────────────────────────────────────
  
  if (is_paired) {
    
    volcano_df <- volcano_df %>%
      dplyr::filter(stats::complete.cases(dplyr::select(., c("Sample", hypo_name, "PairedID")))) %>%
      dplyr::group_by(PairedID) %>%
      dplyr::filter(dplyr::n_distinct(.data[[hypo_name]]) == 2) %>%
      dplyr::ungroup()
    
    
    # Statistical Safety (Gomes, Dylan G. E. 2022.): A minimum of 3 complete pairs is required by this pipeline
    # because estimation of random-effects variance becomes unreliable with very few subjects.
    # Results obtained with 5–9 pairs should be considered exploratory and hypothesis-generating.
    
    if (length(unique(volcano_df$PairedID)) < 3) {
      warning("Less than 3 complete pairs for hypothesis : ", hypo_name)
      return(list(
        confirmatory = NULL,
        exploratory  = NULL,
        skip_reason  = paste0("Paired analysis requested but only ",
                              length(unique(volcano_df$PairedID)),
                              " complete pairs available (minimum : 3).")
      ))
    }
  } else {
    use_longitudinal <- FALSE
  }
  
  # ── Significance thresholds ────────────────────────────────────────────────
  
  get_Volcano_threshold <- function() {
    
    ui <- fluidPage(
      title = paste0("Volcano Plot - Select Thresholds"),
      tags$head(tags$style(HTML(app_css))),
      page_header("\U0001F30B Volcano Plot \u2014 Select Thresholds",
                  paste0("Hypothesis : ", hypo_name)),
      sidebarLayout(
        sidebarPanel(
          numericInput("pval_thresh",
                       "Error risk α (0–1) :",
                       value = 0.05, min = 0, max = 1, step = 0.01),
          br(),
          numericInput("logfc_thresh",
                       "Minimum |log10FC| for biological significance :",
                       value = log10(2), min = 0.0001, step = 0.01),
          p("Recommended alternatives : Low FC = log10(1.2) ≈ 0.079 ; Medium FC = log10(1.5) ≈ 0.176"),
          br(),
          actionButton("submit", "Submit", class = "btn-success")
        ),
        mainPanel(
          div(class = "section-card",
              h3("What is a Volcano Plot ?"),
              p("A ", strong("Volcano Plot"), " is a scatter plot used in differential analysis (e.g. proteomics, transcriptomics, metabolomics)
              to simultaneously visualise the ", strong("statistical significance"), " and the ",
                strong("magnitude of change"), " for each feature (protein, gene, metabolite etc.).
              Each point represents one feature :"),
              tags$ul(
                tags$li("The ", strong("X-axis"), " shows the log", tags$sub("10"), "(Fold Change) — how much the feature changes between conditions. (Comparison Group vs Reference Group)"),
                tags$li("The ", strong("Y-axis"), " shows −log", tags$sub("10"), "(p-value) — how statistically significant that change is.")
              ),
              p("Points that are both ", em("far from the centre"), " (large |log FC|) and ", em("high up"), " (low p-value)
              appear in the upper corners of the plot, forming the characteristic volcano shape.
              These are the features considered ", strong("statistically and biologically significant.")),
          ),
          div(class = "section-card",
              h4(tags$span("📐", style="margin-right:6px"), "log", tags$sub("10"), "(FC) Threshold — Biological Significance"),
              p("The ", strong("Fold Change (FC)"), " is the ratio of median peak areas between 
              two conditions (e.g. FC = 2 means the feature's peak area is twice as large 
              in the Comparison Group than in the Reference Group)."),
              p("We use the ", strong("log"), tags$sub("10"), " transformation so that increases 
              and decreases in peak area are symmetric around 0 
              (e.g. log₁₀(2) ≈ 0.301 for a 2× increase, log₁₀(0.5) ≈ −0.301 for a 2× decrease)."),
              p("The threshold defines the ", strong("minimum magnitude of change"), " required to consider a
              feature biologically meaningful, independently of statistical significance.
              Features with |log₁₀(FC)| below this threshold are considered negligible even if statistically significant."),
          ),
          div(class = "section-card",
              h4(tags$span("📊", style="margin-right:6px"), "p-value Threshold — Statistical Significance"),
              p("The ", strong("p-value"), " is the probability, assuming H0 were true (i.e. if there were
                in fact no difference between the groups), of observing a difference as large as or larger than the
                one actually measured, purely by chance. A low p-value merely indicates that the difference is unlikely
                to be due to chance — it provides no information on the biological significance of this difference,
                hence the usefulness of combining it with the log₁₀(FC) threshold."),
              p("The threshold α (typically 0.05) is the ", strong("maximum acceptable risk of false positives"),
                " (Type I error). A feature with p < α is considered statistically significant, meaning
              the observed difference is unlikely to be due to chance alone."),
              p("On the volcano plot, this threshold is represented by a ", strong("horizontal dashed line"),
                " at −log₁₀(α). Features above this line pass the significance criterion."),
          )
        )
      )
    )
    
    server <- function(input, output, session) {
      
      observeEvent(input$submit, {
        stopApp(list(pval_thresh  = input$pval_thresh,
                     logfc_thresh = input$logfc_thresh))
      })
    }
    
    runApp(shinyApp(ui, server), launch.browser = TRUE)
  }
  
  thresholds   <- get_Volcano_threshold()
  pval_thresh  <- thresholds$pval_thresh
  logfc_thresh <- thresholds$logfc_thresh
  
  # ══════════════════════════════════════════════════════════════════════════
  # CORE COMPUTATION FUNCTION
  # ══════════════════════════════════════════════════════════════════════════
  
  #' @param features_set Character vector of features to test
  #' @param label        "confirmatory" or "exploratory" — used for file naming
  
  compute_volcano <- function(features_set, label) {
    
    if (length(features_set) == 0) {
      message("compute_volcano (", label, ") : empty feature set — skipped.")
      return(NULL)
    }
    
    df <- volcano_df[, c("Sample", hypo_name, "PairedID", "Longitudinal_TimePoint", features_set), drop = FALSE]
    
    # ── Statistical tests ─────────────────────────────────────────────────
    
    volcano_stats <- data.frame(
      feature              = character(),
      test                 = character(),
      reference_group      = character(),
      comparison_group     = character(),
      logFC                = numeric(),
      p.value              = numeric(),
      shapiro_pval_resid   = numeric(),
      stringsAsFactors     = FALSE
    )
    
    for (f in features_set) {
      
      vals   <- as.numeric(df[[f]])
      groups <- df[[hypo_name]]
      time <- factor(df[["Longitudinal_TimePoint"]])
      
      if (is_paired) {
        
        subjects <- as.factor(df$PairedID)
        model_df <- data.frame(value   = vals,
                               group   = factor(groups, levels = c(ref_group, comp_group)),
                               subject = subjects,
                               time = time)
        
        
        # Statistical Safety 
        if (length(unique(model_df$subject)) < 3) next
        
        # Include time as a covariate only if the operator explicitly opted in
        # (use_longitudinal, chosen once in the shared Shiny screen) — the
        # column being technically available is not sufficient on its own.
        
        if (use_longitudinal) {
          
          lmm <- tryCatch(
            lmerTest::lmer(value ~ group + time + (1 | subject), data = model_df),
            error = function(e) NULL
          )
          test_used <- "Linear Mixed Model (+ time covariate)"
          
        } else {
          lmm <- tryCatch(
            lmerTest::lmer(value ~ group + (1 | subject), data = model_df),
            error = function(e) NULL
          )
          test_used <- "Linear Mixed Model"
        }
        
        if (is.null(lmm) || lme4::isSingular(lmm)) next
        
        coef_mat <- summary(lmm)$coefficients
        p_val    <- coef_mat[2, "Pr(>|t|)"]
        logFC    <- coef_mat[2, "Estimate"]
        
        # Normality of LMM residuals
        resid_vals   <- stats::residuals(lmm)
        sw_test      <- tryCatch(stats::shapiro.test(resid_vals), error = function(e) NULL)
        sw_pval      <- if (!is.null(sw_test)) sw_test$p.value else NA_real_
        
        
      } else { # Unpaired model
        
        ref_vals  <- stats::na.omit(vals[groups == ref_group])
        comp_vals <- stats::na.omit(vals[groups == comp_group])
        
        if (length(ref_vals) < 5 || length(comp_vals) < 5) next
        
        test_res <- tryCatch(
          stats::wilcox.test(ref_vals, comp_vals, paired = FALSE),
          error = function(e) NULL
        )
        
        if (is.null(test_res)) next
        
        p_val     <- test_res$p.value
        logFC     <- median(comp_vals) - median(ref_vals)
        test_used <- "Mann-Whitney"
        sw_pval      <- NA_real_  
      }
      
      volcano_stats <- rbind(
        volcano_stats,
        data.frame(
          feature              = f,
          test                 = test_used,
          reference_group      = ref_group,
          comparison_group     = comp_group,
          logFC                = logFC,
          p.value              = p_val,
          shapiro_pval_resid   = sw_pval,       # Shapiro p-value on the residuals
          stringsAsFactors     = FALSE
        )
      )
    }
    
    if (nrow(volcano_stats) == 0) {
      message("compute_volcano (", label, ") : no features passed the statistical tests.")
      return(NULL)
    }
    
    # ── BH correction ──────────────────────────────────────────────────────
    
    volcano_stats <- volcano_stats %>%
      dplyr::mutate(
        padj = stats::p.adjust(p.value, method = "BH"),
        shapiro_padj_resid  = dplyr::if_else(
          !is.na(shapiro_pval_resid),
          stats::p.adjust(shapiro_pval_resid, method = "BH"),
          NA_real_
        ),
        residuals_normal = dplyr::case_when(
          is.na(shapiro_padj_resid) ~ NA,
          shapiro_padj_resid >= pval_thresh ~ TRUE,
          TRUE ~ FALSE
        )
      )
    
    # ── Significance labelling ─────────────────────────────────────────────
    
    volcano_stats$Significance <- "Non_Significant"
    volcano_stats$Significance[
      volcano_stats$padj < pval_thresh & volcano_stats$logFC >  logfc_thresh] <- "Increase"
    volcano_stats$Significance[
      volcano_stats$padj < pval_thresh & volcano_stats$logFC < -logfc_thresh] <- "Decrease"
    
    
    # ── Ranking ────────────────────────────────────────────────────────────
    
    volcano_stats <- volcano_stats %>%
      dplyr::arrange(padj)
    
    # ── Subtitle reflecting the strategy ──────────────────────────────────
    
    power_txt <- if (is_paired) {
      n_pairs <- length(unique(volcano_df$PairedID))
      
      base_txt <- if (n_pairs < 5) {  
        paste0(" ⚠⚠ n = ", n_pairs, " — VERY LOW POWER (exploratory only)")
      } else if (n_pairs < 10) {
        paste0(" ⚠ n = ", n_pairs, " pairs — low power, hypothesis-generating")
      } else {
        paste0(" n = ", n_pairs, " pairs")
      }
      
      if (use_longitudinal) paste0(base_txt, " + time covariate") else base_txt
      
    } else {
      ""
    }
    
    subtitle_txt <- if (label == "confirmatory") {
      paste0("Confirmatory — all ", length(features_set),
             " features, BH correction across full set",
             power_txt)
    } else {
      paste0("Exploratory — ", length(features_set),
             " VIP pre-selected features (PLS-DA / OPLS-DA)",
             power_txt)
    }
    
    # ── Volcano plot ───────────────────────────────────────────────────────
    
    colors_plot <- c("Non_Significant" = "grey70",
                     "Increase"        = "red",
                     "Decrease"        = "blue")
    
    Volcano_plot <- ggplot2::ggplot(
      volcano_stats,
      ggplot2::aes(x = logFC, y = -log10(padj), color = Significance)
    ) +
      ggplot2::geom_point(size = 3, alpha = 0.7) +
      ggplot2::scale_color_manual(values = colors_plot) +
      ggplot2::geom_hline(yintercept = -log10(pval_thresh),
                          linetype = "dashed", color = "black") +
      ggplot2::geom_vline(xintercept = c(-logfc_thresh, logfc_thresh),
                          linetype = "dashed", color = "black") +
      ggrepel::geom_text_repel(
        data          = dplyr::filter(volcano_stats, Significance != "Non_Significant"),
        ggplot2::aes(label = feature),
        size          = 3,
        max.overlaps  = 20,
        box.padding   = 0.4,
        point.padding = 0.3,
        segment.color = "grey50"
      ) +
      ggplot2::labs(
        x        = paste0("log10 Fold Change  (", comp_group, " vs ", ref_group, ")"),
        y        = "-log10(adj p-value)",
        color    = "Significance",
        subtitle = subtitle_txt
      ) +
      ggplot2::theme_classic(base_size = 12) +
      ggplot2::theme(
        plot.subtitle        = ggplot2::element_text(size = 9, color = "grey40",
                                                     face = "italic", hjust = 0.5),
        axis.title.x         = ggplot2::element_text(size = 11, face = "bold",
                                                     margin = ggplot2::margin(t = 8)),
        axis.title.y         = ggplot2::element_text(size = 11, face = "bold",
                                                     margin = ggplot2::margin(r = 8)),
        axis.text            = ggplot2::element_text(size = 9, color = "black"),
        axis.ticks           = ggplot2::element_line(color = "black", linewidth = 0.8),
        axis.ticks.length    = ggplot2::unit(-6, "pt"),
        axis.text.x          = ggplot2::element_text(margin = ggplot2::margin(t = 6)),
        axis.text.y          = ggplot2::element_text(margin = ggplot2::margin(r = 6)),
        panel.border         = ggplot2::element_rect(color = "black", fill = NA,
                                                     linewidth = 0.8),
        axis.line            = ggplot2::element_blank(),
        panel.grid           = ggplot2::element_blank(),
        legend.position      = c(0.97, 0.97),
        legend.justification = c(1, 1),
        legend.text          = ggplot2::element_text(size = 9),
        legend.key.size      = ggplot2::unit(0.35, "cm"),
        legend.background    = ggplot2::element_rect(fill = "white", color = "black",
                                                     linewidth = 0.4),
        legend.spacing.y     = ggplot2::unit(0.15, "cm"),
        plot.margin          = ggplot2::margin(8, 8, 8, 8)
      ) +
      ggplot2::coord_cartesian(clip = "off")
    
    # ── Save ───────────────────────────────────────────────────────────────
    
    ggplot2::ggsave(
      filename = file.path(paths$sup_chart, "Volcano_Plot",
                           paste0("Volcano_plot_", label, "_", hypo_name, ".pdf")),
      plot     = Volcano_plot,
      width    = 10, height = 10, bg = "white"
    )
    
    write.csv(
      volcano_stats,
      file      = file.path(paths$sup_data, "Volcano_Plot",
                            paste0("Volcano_stats_", label, "_", hypo_name, ".csv")),
      row.names = FALSE
    )
    
    list(
      volcano_stats = volcano_stats,
      plot          = Volcano_plot,
      label         = label
    )
  }
  
  # ══════════════════════════════════════════════════════════════════════════
  # RUN BOTH ANALYSES
  # ══════════════════════════════════════════════════════════════════════════
  
  message("── Running confirmatory analysis (all ", length(all_features), " features) ──")
  
  result_confirmatory <- compute_volcano(all_features, label = "confirmatory")
  result_exploratory <- NULL
  
  if (length(vip_features) > 0) {
    message("── Running exploratory analysis (", length(vip_features), " VIP features) ──")
    result_exploratory <- compute_volcano(vip_features, label = "exploratory")
  } else {
    message("── Exploratory analysis skipped : no VIP features available. ──")
  }
  
  # ══════════════════════════════════════════════════════════════════════════
  # RETURN
  # ══════════════════════════════════════════════════════════════════════════
  
  return(list(
    confirmatory = result_confirmatory,
    exploratory  = result_exploratory,
    parameters   = list(
      pval_thresh      = pval_thresh,
      logfc_thresh     = logfc_thresh,
      is_paired        = is_paired,
      use_longitudinal = use_longitudinal,
      ref_group        = ref_group,
      comp_group       = comp_group
    )
  ))
}
  
  
  
########################################################################################################################
####################################          GLOBAL STATISTICAL  SUMMARY              #################################
########################################################################################################################

#' @param results Results list from run_hypothesis_analyses()
#' @param Annotation_summary_table Annotation table (optional)

run_global_stats_dashboard <- function(results, Annotation_summary_table = NULL, filename_hypo) {
  
  if (is.null(results) || !all(c("PLSDA", "RF") %in% names(results))) {
    stop("The 'results' object must contain at least 'PLSDA' and 'RF'.")
  }
  
  ui <- fluidPage(
    titlePanel("Global Statistical Summary Dashboard"),
    
    tabsetPanel(
      
      # ── Unsupervised ────────────────────────────────────────────────────────
      
      tabPanel("Unsupervised Analysis",
               tabsetPanel(
                 tabPanel("PCA",     uiOutput("pca_plot_ui")),
                 tabPanel("HCPC",    uiOutput("hcpc_plot_ui")),
                 tabPanel("Heatmap", uiOutput("heatmap_plot_ui"))
               )
      ),
      
      # ── Supervised ──────────────────────────────────────────────────────────
      
      tabPanel("Supervised Analysis",
               tabsetPanel(
                 tabPanel("PLS-DA",  uiOutput("plsda_plot_ui")),
                 tabPanel("OPLS-DA", uiOutput("oplsda_plot_ui")),
                 
                 # Volcano : two sub-tabs
                 tabPanel("Volcano Plot",
                          tabsetPanel(
                            tabPanel("Confirmatory (all features)", uiOutput("volcano_plot_confirmatory_ui")),
                            tabPanel("Exploratory (VIP pre-filtered)", uiOutput("volcano_plot_exploratory_ui"))
                          )
                 )
               )
      ),
      
      # ── VIP Summaries ────────────────────────────────────────────────────────
      
      tabPanel("VIP Summaries",
               tabsetPanel(
                 tabPanel("PLS-DA VIP",               uiOutput("plsda_vip_ui")),
                 tabPanel("OPLS-DA VIP",              uiOutput("oplsda_vip_ui")),
                 tabPanel("Random Forest (Importance)", uiOutput("rf_vip_ui")),
                 
                 # Volcano stats : two sub-tabs
                 tabPanel("Volcano Statistics",
                          tabsetPanel(
                            tabPanel("Confirmatory (all features)",   uiOutput("volcano_stats_confirmatory_ui")),
                            tabPanel("Exploratory (VIP pre-filtered)", uiOutput("volcano_stats_exploratory_ui"))
                          )
                 ),
                 
                 tabPanel("Cross-method summary", uiOutput("cross_vip_ui"))
               )
      )
    ),
    
    br(),
    div(style = "text-align: center;",
        actionButton("submit", "Close & Continue", class = "btn-success"))
  )
  
  
  server <- function(input, output, session) {
    
    # ══════════════════════════════════════════════════════════════════════════
    # UNSUPERVISED
    # ══════════════════════════════════════════════════════════════════════════
    
    output$pca_plot_ui <- renderUI({
      if (is.null(results$PCA) || is.null(results$PCA$plot))
        div(style = "color:red;text-align:center;padding:20px;", "PCA was not performed for this hypothesis.")
      else plotOutput("pca_plot", height = "75vh")
    })
    output$pca_plot <- renderPlot({ print(results$PCA$plot) })
    
    output$hcpc_plot_ui <- renderUI({
      if (is.null(results$HCPC) || is.null(results$HCPC$plot))
        div(style = "color:red;text-align:center;padding:20px;", "HCPC was not performed for this hypothesis.")
      else plotOutput("hcpc_plot", height = "75vh")
    })
    output$hcpc_plot <- renderPlot({ print(results$HCPC$plot) })
    
    output$heatmap_plot_ui <- renderUI({
      if (is.null(results$HEATMAP) || is.null(results$HEATMAP$plot))
        div(style = "color:red;text-align:center;padding:20px;", "HEATMAP was not performed for this hypothesis.")
      else plotOutput("heatmap_plot", height = "75vh")
    })
    output$heatmap_plot <- renderPlot({ print(results$HEATMAP$plot) })
    
    
    # ══════════════════════════════════════════════════════════════════════════
    # SUPERVISED PLOTS
    # ══════════════════════════════════════════════════════════════════════════
    
    # ── PLS-DA ────────────────────────────────────────────────────────────────
    
    output$plsda_plot_ui <- renderUI({
      if (is.null(results$PLSDA) || is.null(results$PLSDA$plot))
        div(style = "color:red;text-align:center;padding:20px;", "PLS-DA was not performed for this hypothesis.")
      else plotOutput("plsda_plot", height = "75vh")
    })
    output$plsda_plot <- renderPlot({ print(results$PLSDA$plot) })
    
    # ── OPLS-DA ───────────────────────────────────────────────────────────────
    
    output$oplsda_plot_ui <- renderUI({
      if (is.null(results$OPLSDA) || is.null(results$OPLSDA$plot)) {
        msg <- if (!is.null(results$OPLSDA$skip_reason))
          paste0("OPLS-DA not built : ", results$OPLSDA$skip_reason,
                 "  (Q2 = ", results$OPLSDA$Q2, ")")
        else
          "OPLS-DA was not performed for this hypothesis."
        div(style = "color:orange;text-align:center;padding:20px;", msg)
      } else {
        plotOutput("oplsda_plot", height = "75vh")
      }
    })
    output$oplsda_plot <- renderPlot({ print(results$OPLSDA$plot) })
    
    # ── Volcano — Confirmatory ────────────────────────────────────────────────
    
    output$volcano_plot_confirmatory_ui <- renderUI({
      if (is.null(results$VOLCANO) || is.null(results$VOLCANO$confirmatory) ||
          is.null(results$VOLCANO$confirmatory$plot)) {
        div(style = "color:red;text-align:center;padding:20px;",
            if (!is.null(results$VOLCANO$skip_reason)) {
              paste0("Volcano analysis not performed : ", results$VOLCANO$skip_reason)
            } else {
              "Volcano analysis was not performed for this hypothesis."
            })
      } else {
        tagList(
          div(style = "color:#555;font-style:italic;text-align:center;padding:8px;",
              icon("info-circle"),
              " All detected features tested — BH correction applied across the full feature set."),
          plotOutput("volcano_plot_confirmatory", height = "75vh")
        )
      }
    })
    output$volcano_plot_confirmatory <- renderPlot({
      print(results$VOLCANO$confirmatory$plot)
    })
    
    # ── Volcano — Exploratory ─────────────────────────────────────────────────
    
    output$volcano_plot_exploratory_ui <- renderUI({
      if (is.null(results$VOLCANO) || is.null(results$VOLCANO$exploratory) ||
          is.null(results$VOLCANO$exploratory$plot)) {
        div(style = "color:orange;text-align:center;padding:20px;",
            icon("exclamation-triangle"),
            if (!is.null(results$VOLCANO$skip_reason))
              paste0("Volcano analysis not performed : ", results$VOLCANO$skip_reason)
            else
              "Exploratory volcano analysis was not performed (no VIP features available or OPLS-DA/PLS-DA not significant).")
      } else {
        tagList(
          div(style = "color:#E65100;font-style:italic;text-align:center;padding:8px;",
              icon("exclamation-triangle"),
              " VIP pre-filtered features only — hypothesis-generating, not confirmatory (double-dipping)."),
          plotOutput("volcano_plot_exploratory", height = "75vh")
        )
      }
    })
    output$volcano_plot_exploratory <- renderPlot({
      print(results$VOLCANO$exploratory$plot)
    })
    
    
    # ══════════════════════════════════════════════════════════════════════════
    # VIP TABLES
    # ══════════════════════════════════════════════════════════════════════════
    
    # ── PLS-DA ────────────────────────────────────────────────────────────────
    
    output$plsda_vip_ui <- renderUI({
      if (is.null(results$PLSDA$all_vip) || nrow(results$PLSDA$all_vip) == 0) {
        div(style = "color:red;text-align:center;padding:20px;",
            "No VIP score exceeded the expected threshold.")
      } else {
        fluidRow(
          column(8, reactable::reactableOutput("plsda_vip")),
          column(4, wellPanel(
            h4("Model Metrics"),
            p(strong("R2X : "), results$PLSDA$R2X),
            p(strong("R2Y : "), results$PLSDA$R2Y),
            p(strong("Q2 : "),  results$PLSDA$Q2),
            hr(),
            h4(paste0("Bootstrapping (n valid : ", results$PLSDA$bootstrap_cv$n_valid, ")")),
            p(strong("BA (mean ± sd) : "),
              paste0(results$PLSDA$bootstrap_cv$BA_mean, " ± ", results$PLSDA$bootstrap_cv$BA_sd)),
            p(style = "font-size:12px;color:#6B7686;font-style:italic;",
              "BA = Balanced Accuracy: the average per-class classification accuracy, ",
              "calculated on the out-of-bag (OOB) samples at each bootstrap iteration. ",
              "Unlike overall accuracy, Balanced Accuracy gives equal weight to each class ",
              "regardless of its size, preventing models that always predict the majority ",
              "class from achieving artificially inflated performance."),
            hr(),
            h4("Significance"),
            p(strong("Permutation p-value : "), round(results$PLSDA$permutation_pval, 3))
          ))
        )
      }
    })
    output$plsda_vip <- reactable::renderReactable({
      reactable::reactable(results$PLSDA$all_vip,
                           searchable = TRUE, sortable = TRUE,
                           defaultPageSize = 15, highlight = TRUE,
                           bordered = TRUE, rownames = FALSE)
    })
    
    # ── OPLS-DA ───────────────────────────────────────────────────────────────
    
    output$oplsda_vip_ui <- renderUI({
      if (is.null(results$OPLSDA)) {
        return(div(style = "color:red;text-align:center;padding:20px;",
                   "OPLS-DA was not performed for this hypothesis."))
      }
      if (isTRUE(results$OPLSDA$skipped)) {
        return(div(style = "color:orange;text-align:center;padding:20px;",
                   icon("exclamation-triangle"),
                   strong(" OPLS-DA skipped — "), results$OPLSDA$skip_reason, br(),
                   paste0("Q2 = ", results$OPLSDA$Q2,
                          "  |  R2Y = ", results$OPLSDA$R2Y,
                          "  |  R2X = ", results$OPLSDA$R2X)))
      }
      if (is.null(results$OPLSDA$all_vip) || nrow(results$OPLSDA$all_vip) == 0) {
        return(div(style = "color:red;text-align:center;padding:20px;",
                   "No VIP data available."))
      }
      fluidRow(
        column(8, reactable::reactableOutput("oplsda_vip")),
        column(4, wellPanel(
          h4("Model Metrics"),
          p(strong("R2X : "), results$OPLSDA$R2X),
          p(strong("R2Y : "), results$OPLSDA$R2Y),
          p(strong("Q2 : "),  results$OPLSDA$Q2),
          hr(),
          h4(paste0("Bootstrapping (n valid : ", results$OPLSDA$bootstrap_cv$n_valid, ")")),
          p(strong("BA (mean ± sd) : "),
            paste0(results$OPLSDA$bootstrap_cv$BA_mean, " ± ", results$OPLSDA$bootstrap_cv$BA_sd)),
          p(style = "font-size:12px;color:#6B7686;font-style:italic;",
            "BA = Balanced Accuracy: the average per-class classification accuracy, ",
            "calculated on the out-of-bag (OOB) samples at each bootstrap iteration. ",
            "Unlike overall accuracy, Balanced Accuracy gives equal weight to each class ",
            "regardless of its size, preventing models that always predict the majority ",
            "class from achieving artificially inflated performance."),
          hr(),
          h4("Significance"),
          p(strong("Permutation p-value : "), round(results$OPLSDA$permutation_pval, 3))
        ))
      )
    })
    output$oplsda_vip <- reactable::renderReactable({
      reactable::reactable(results$OPLSDA$all_vip,
                           searchable = TRUE, sortable = TRUE,
                           defaultPageSize = 15, highlight = TRUE,
                           bordered = TRUE, rownames = FALSE)
    })
    
    # ── Random Forest ─────────────────────────────────────────────────────────
    
    output$rf_vip_ui <- renderUI({
      if (is.null(results$RF$all_vip) || nrow(results$RF$all_vip) == 0) {
        div(style = "color:red;text-align:center;padding:20px;",
            "No Random Forest VIP data available.")
      } else {
        fluidRow(
          column(8, reactable::reactableOutput("rf_vip")),
          column(4, wellPanel(
            h4("Model Metrics"),
            p(strong("OOB Error : "),
              paste0(round(results$RF$OOB_error * 100, 2), " %")),
            br(),
            h5("Confusion Matrix"),
            tableOutput("rf_conf_mat")
          ))
        )
      }
    })
    output$rf_vip <- reactable::renderReactable({
      reactable::reactable(results$RF$all_vip,
                           searchable = TRUE, sortable = TRUE,
                           defaultPageSize = 15, highlight = TRUE,
                           bordered = TRUE, rownames = FALSE)
    })
    output$rf_conf_mat <- renderTable({ results$RF$Confusion_mat })
    
    
    # ── Volcano stats — helper UI builder ─────────────────────────────────────
    
    # Factored out to avoid duplication between confirmatory and exploratory
    
    make_volcano_stats_ui <- function(slot_name, output_id, badge_color, badge_text) {
      
      
      if (is.null(results$VOLCANO)) {
        return(div(style = paste0("color:", badge_color, ";text-align:center;padding:20px;"),
                   paste0(badge_text, " volcano analysis was not performed for this hypothesis.")))
      }
      
      slot <- results$VOLCANO[[slot_name]]
      
      if (is.null(slot) || is.null(slot$volcano_stats) || nrow(slot$volcano_stats) == 0) {
        msg <- if (!is.null(results$VOLCANO$skip_reason))
          paste0(badge_text, " — ", results$VOLCANO$skip_reason)
        else
          paste0(badge_text, " volcano analysis was not performed for this hypothesis.")
        
        return(div(style = paste0("color:", badge_color, ";text-align:center;padding:20px;"), msg))
      }
      
      params <- results$VOLCANO$parameters
      
      n_sig <- sum(slot$volcano_stats$Significance != "Non_Significant", na.rm = TRUE)
      n_inc <- sum(slot$volcano_stats$Significance == "Increase", na.rm = TRUE)
      n_dec <- sum(slot$volcano_stats$Significance == "Decrease", na.rm = TRUE)
      
      fluidRow(
        
        # Table (left)
        column(9, reactable::reactableOutput(output_id)),
        
        # Info panel (right)
        column(3, wellPanel(
          
          div(style = paste0("background:", badge_color,
                             ";color:white;padding:6px 10px;border-radius:4px;",
                             "text-align:center;margin-bottom:12px;font-weight:bold;"),
              badge_text),
          
          h4("Parameters"),
          p(strong("Features tested : "), nrow(slot$volcano_stats)),
          p(strong("p-value threshold : "), params$pval_thresh),
          p(strong("log10FC threshold : "), round(params$logfc_thresh, 3)),
          p(strong("Paired data : "), ifelse(params$is_paired, "Yes", "No")),
          p(strong("Reference group : "), params$ref_group),
          p(strong("Comparison group : "), params$comp_group),
          
          hr(),
          h4("Significant features"),
          p(strong("Total : "), n_sig),
          p(strong("Increase : "), tags$span(style = "color:red;",  n_inc)),
          p(strong("Decrease : "), tags$span(style = "color:blue;", n_dec)),
          
          hr(),
          h4("Metrics guide"),
          
          if (params$is_paired) {
            p(strong("Residuals normality (shapiro_padj_resid / residuals_normal) :"),
              " The LMM decomposes each observation into a fixed group effect, a subject-level",
              " random effect, and a residual. Shapiro-Wilk tests whether these residuals follow",
              " a normal distribution — a core assumption of the LMM t-test used to compute p-values —",
              " and the reported p-value is BH-adjusted across all tested features.",
              " residuals_normal is TRUE if shapiro_padj_resid ≥ ", params$pval_thresh, " (normality not rejected),",
              " FALSE if the assumption appears violated, and NA if the test could not be reliable.",
              " A FALSE flag does not invalidate the result — LMMs are moderately robust to mild",
              " departures from normality — but warrants caution, especially for features with",
              " small sample sizes.")
          }
          
        ))
      )
    }
    
    # ── Volcano stats — Confirmatory ──────────────────────────────────────────
    
    output$volcano_stats_confirmatory_ui <- renderUI({
      make_volcano_stats_ui("confirmatory", "volcano_stats_confirmatory",
                            badge_color = "red",
                            badge_text  = "Confirmatory — All features")
    })
    
    output$volcano_stats_confirmatory <- reactable::renderReactable({
      
      req(!is.null(results$VOLCANO$confirmatory$volcano_stats))
      reactable::reactable(
        results$VOLCANO$confirmatory$volcano_stats,
        searchable = TRUE, sortable = TRUE,
        defaultPageSize = 10, highlight = TRUE,
        bordered = TRUE, rownames = FALSE,
        columns = list(
          logFC     = reactable::colDef(format = reactable::colFormat(digits = 3)),
          p.value   = reactable::colDef(cell = function(v) if (is.na(v)) "" else formatC(v, format = "e", digits = 1)),
          padj      = reactable::colDef(cell = function(v) if (is.na(v)) "" else formatC(v, format = "e", digits = 1))
        )
      )
    })
    
    # ── Volcano stats — Exploratory ───────────────────────────────────────────
    
    output$volcano_stats_exploratory_ui <- renderUI({
      make_volcano_stats_ui("exploratory", "volcano_stats_exploratory",
                            badge_color = "#E65100",
                            badge_text  = "Exploratory — VIP pre-filtered")
    })
    
    output$volcano_stats_exploratory <- reactable::renderReactable({
      
      req(!is.null(results$VOLCANO$exploratory$volcano_stats)) 
      reactable::reactable(
        results$VOLCANO$exploratory$volcano_stats,
        searchable = TRUE, sortable = TRUE,
        defaultPageSize = 10, highlight = TRUE,
        bordered = TRUE, rownames = FALSE,
        columns = list(
          logFC     = reactable::colDef(format = reactable::colFormat(digits = 3)),
          p.value   = reactable::colDef(cell = function(v) if (is.na(v)) "" else formatC(v, format = "e", digits = 1)),
          padj      = reactable::colDef(cell = function(v) if (is.na(v)) "" else formatC(v, format = "e", digits = 1))
        )
      )
    })
    
    
    # ══════════════════════════════════════════════════════════════════════════
    # CROSS-METHOD SUMMARY
    # ══════════════════════════════════════════════════════════════════════════
    
    output$cross_vip_ui <- renderUI({
      
      tables <- list()
      if (!is.null(results$PLSDA$all_vip) && nrow(results$PLSDA$all_vip)  > 0) tables$plsda <- results$PLSDA$all_vip
      if (!is.null(results$RF$all_vip) && nrow(results$RF$all_vip) > 0) tables$rf <- results$RF$all_vip
      if (!is.null(results$OPLSDA) && !isTRUE(results$OPLSDA$skipped) && !is.null(results$OPLSDA$all_vip) &&
          nrow(results$OPLSDA$all_vip) > 0) tables$oplsda <- results$OPLSDA$all_vip
      
      if (length(tables) == 0)
        div(style = "color:red;text-align:center;padding:20px;",
            "No results available to build cross-method table.")
      else
        reactable::reactableOutput("cross_vip")
    })
    
    output$cross_vip <- reactable::renderReactable({
      
      tables <- list()
      
      # PLS-DA ranks
      if (!is.null(results$PLSDA$all_vip) && nrow(results$PLSDA$all_vip) > 0) {
        tables$plsda <- results$PLSDA$all_vip %>%
          dplyr::arrange(dplyr::desc(vip_score)) %>%
          dplyr::mutate(rank_PLSDA = dplyr::row_number()) %>%
          dplyr::select(feature, rank_PLSDA)
      }
      
      # RF ranks
      if (!is.null(results$RF$all_vip) && nrow(results$RF$all_vip) > 0) {
        tables$rf <- results$RF$all_vip %>%
          dplyr::arrange(dplyr::desc(RF_Importance)) %>%
          dplyr::mutate(rank_RF = dplyr::row_number()) %>%
          dplyr::select(feature, rank_RF)
      }
      
      # OPLS-DA ranks (only if model was built)
      if (!is.null(results$OPLSDA) && !isTRUE(results$OPLSDA$skipped) &&
          !is.null(results$OPLSDA$all_vip) && nrow(results$OPLSDA$all_vip) > 0) {
        tables$oplsda <- results$OPLSDA$all_vip %>%
          dplyr::arrange(dplyr::desc(vip_score)) %>%
          dplyr::mutate(rank_OPLSDA = dplyr::row_number()) %>%
          dplyr::select(feature, rank_OPLSDA)
      }
      
      # Volcano confirmatory significance flag
      # Uses the confirmatory slot (all features) — the most rigorous source
      if (!is.null(results$VOLCANO$confirmatory$volcano_stats) &&
          nrow(results$VOLCANO$confirmatory$volcano_stats) > 0) {
        tables$volcano <- results$VOLCANO$confirmatory$volcano_stats %>%
          dplyr::select(feature, logFC, Significance) %>%
          dplyr::rename(
            Volcano_Significance  = Significance
          )
      }
      
      # # Feature annotation
      # if (!is.null(Annotation_summary_table)) {
      #   tables$Annotation_summary_table <- Annotation_summary_table %>%
      #     dplyr::select(Matched_metabolite, Confidence_level) %>%
      #     dplyr::rename(feature = Matched_metabolite)
      # }
      
      # Safety filter
      tables <- Filter(function(x)
        !is.null(x) && is.data.frame(x) && nrow(x) > 0 && "feature" %in% colnames(x),
        tables)
      
      if (length(tables) == 0) return(NULL)
      
      # Merge all tables
      cross_table <- Reduce(function(x, y) dplyr::full_join(x, y, by = "feature"), tables)
      
      # Median rank across multivariate methods
      rank_cols <- grep("^rank_", names(cross_table), value = TRUE)
      
      cross_table <- cross_table %>%
        dplyr::mutate(
          median_rank = if (length(rank_cols) > 0)
            apply(dplyr::select(., dplyr::all_of(rank_cols)), 1,
                  function(x) median(x, na.rm = TRUE))
          else NA_real_
        ) %>%
        dplyr::arrange(median_rank)
      
      if ("Confidence_level" %in% colnames(cross_table)) {
        cross_table <- cross_table %>%
          dplyr::arrange(median_rank, Confidence_level)
      }
      
      # Data save
      
      out_dir <- file.path(data_folder, "Cross_method", filename_hypo)
      if (!dir.exists(out_dir)) dir.create(out_dir, recursive = TRUE)
      
      write.csv(cross_table, file = file.path(out_dir, "cross_method_summary.csv"), row.names = FALSE)
      
      # Reactable
      
      col_defs <- list()
      
      if ("Volcano_Significance" %in% colnames(cross_table)) {
        col_defs[["Volcano_Significance"]] <- reactable::colDef(
          cell = function(v) {
            if (is.na(v) || v == "Non_Significant") return(v)
            color <- if (v == "Increase") "#c0392b" else "#2980b9"
            htmltools::span(style = paste0("color:", color, ";font-weight:bold;"), v)
          }
        )
      }
      
      reactable::reactable(
        cross_table,
        searchable      = TRUE,
        sortable        = TRUE,
        defaultPageSize = 10,
        highlight       = TRUE,
        bordered        = TRUE,
        rownames        = FALSE,
        width           = "90%",
        columns         = col_defs
      )
      
    })
    
    
    # ══════════════════════════════════════════════════════════════════════════
    # SUBMIT
    # ══════════════════════════════════════════════════════════════════════════
    
    observeEvent(input$submit, { stopApp() })
  }
  
  runApp(shinyApp(ui, server), launch.browser = TRUE)
  
}


########################################################################################################################
####################################          SELECT THE DESIRED SCENARIO VIEW              ############################
########################################################################################################################

#' @param folder_path Path to access the RDS for the various hypothesis ; the RDS contain the results list from run_hypothesis_analyses()
#' 

select_and_run_dashboard <- function(folder_path) {
  
  # Check folder
  
  if (!dir.exists(folder_path)) {
    stop("The provided folder does not exist.")
  }
  
  # List RDS files
  
  rds_files <- list.files(folder_path, pattern = "\\.rds$", full.names = TRUE)
  
  if (length(rds_files) == 0) {
    stop("No .rds files found in the folder.")
  }
  
  # Extract file names for UI
  
  file_names <- basename(rds_files)
  
  # 4. Shiny UI
  
  ui <- fluidPage(
    titlePanel("Select RDS file to analyze"),
    
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId = "file_choice",
          label = "Available RDS files :",
          choices = file_names
        ),
        
        actionButton("submit", "Run the Statistical results dashboard", class = "btn-success")
      ),
      
      mainPanel(
        h4("Selected file will be loaded and processed"),
        verbatimTextOutput("info")
      )
    )
  )
  
  # Server
  server <- function(input, output, session) {
    
    output$info <- renderText({
      paste("Selected file :", input$file_choice)
    })
    
    observeEvent(input$submit, {
      
      selected_file <- rds_files[file_names == input$file_choice]
      
      stopApp(readRDS(selected_file))
      
    })
  }
  
  # Run app
  res <- runApp(shinyApp(ui, server), launch.browser = TRUE)
}  