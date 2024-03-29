library(rjson)

#validFrom <- fromJSON(getURL("http://cts.fiehnlab.ucdavis.edu/service/convert/fromValues"))
validFrom <- c("BioCyc", "CAS", "ChEBI", "Chemical Name", "Human Metabolome Database",  "InChIKey", "KEGG", "LMSD", "LipidMAPS", "PubChem CID", "Pubchem SID",  "ChemSpider", "The Scripps Research Institute Molecular Screening Center",  "ChemDB", "ZINC", "Comparative Toxicogenomics Database", "ChEMBL",  "SCRIPDB", "ABI Chem", "MMDB", "ChemBank", "MolPort", "SMID",  "Ambinter", "ASINEX", "ChemBlock", "DiscoveryGate", "Emory University Molecular Libraries Screening Center",  "MLSMR", "NIAID", "Southern Research Institute", "Specs", "Vitas-M Laboratory",  "CLRI (CSIR)", "DrugBank", "NIST", "Thomson Pharma", "AAA Chemistry",  "ABBLIS Chemicals", "Abbott Labs", "AbMole Bioscience", "Acesobio",  "Achemica", "Acorn PharmaTech", "Active Biopharma", "Adooq BioScience",  "AKos Consulting & Solutions", "AK Scientific, Inc. (AKSCI)",  "Alagar Yadav, Karpagam University", "ALDRICH", "Alinda Chemical",  "Alsachim", "Amadis Chemical", "Amatye", "Ambit Biosciences",  "AmicBase - Antimicrobial Activities", "Angene Chemical", "Angene International",  "Anitha, Department of Bioinformatics, Karpagam University",  "Annker Organics", "Anward", "Apeiron Synthesis", "ApexBio Technology",  "Apexmol", "Ark Pharm, Inc.", "Aromsyn catalogue", "Aronis",  "Aurum Pharmatech LLC", "Avanti Polar Lipids", "Beijing Advanced Technology Co, Ltd",  "Bertin Pharma", "Bhaskar Lab, Department of Zoology, Sri Venkateswara University",  "BIDD", "BIND", "BindingDB", "BioChemPartner", "Biological Magnetic Resonance Data Bank (BMRB)",  "Bioprocess Technology Lab, Department of Microbiology, Bharathidasan University",  "Biosynth", "Broad Institute", "BroadPharm", "Burnham Center for Chemical Genomics",  "Calbiochem", "Cambridge Crystallographic Data Centre", "CAPOT",  "Cayman Chemical", "CC_PMLSC", "Center for Chemical Genomics, University of Michigan",  "Chembase.cn", "Chembo", "ChemBridge", "ChemExper Chemical Directory",  "ChemFrog", "Chemical Biology Department, Max Planck Institute of Molecular Physiology",  "chemicalize.org by ChemAxon", "ChemIDplus", "ChemMol", "ChemScene",  "ChemSynthesis", "ChemTik", "Chiralblock Biosciences", "Circadian Research, Kay Laboratory, University of California at San Diego (UCSD)",  "CMLD-BU", "Columbia University Molecular Screening Center",  "Creasyn Finechem", "Department of Pharmacy, LMU", "DTP/NCI",  "EDASA Scientific Compounds June 2013", "EMD Biosciences", "Enamine",  "Ennopharm", "EPA DSSTox", "Excenen Pharmatech", "Exchemistry",  "FINETECH", "Finley and King Labs, Harvard Medical School", "FLUKA",  "ForeChem", "Fragmenta", "Georganics", "GlaxoSmithKline (GSK)",  "GLIDA, GPCR-Ligand Database", "GNF / Scripps Winzeler lab",  "Golm Metabolome Database (GMD), Max Planck Institute of Molecular Plant Physiology",  "Hangzhou APIChem Technology", "Hangzhou Trylead Chemical Technology",  "HDH Pharma", "HUMGENEX", "IBCH RAS", "IBM", "ICCB-Longwood/NSRB Screening Facility, Harvard Medical School",  "Immunology Lab, Department of Biotechnology, Calicut University",  "InFarmatik", "Inhibitor 2", "Insect Molecular Biology Lab, Department of Environmental Biotechnology, Bharathidasan University",  "IS Chemical Technology", "Isoprenoids", "iThemba Pharmaceuticals",  "IUPHAR-DB", "Jamson Pharmachem Technology", "Johns Hopkins Ion Channel Center",  "Kingston Chemistry", "KUMGM", "LeadScope", "MedChemexpress MCE",  "MICAD", "MIC Scientific", "Milwaukee Institute for Drug Discovery",  "Molecular Libraries Program, Specialized Chemistry Center, University of Kansas",  "MOLI", "MOLI", "MP Biomedicals", "MTDP", "Nanjing Pharmaceutical Factory",  "Nantong Baihua Bio-Pharmaceutical Co., Ltd", "Nature Chemical Biology",  "Nature Chemistry", "Nature Communications", "NCGC", "NIH Clinical Collection",  "NINDS Approved Drug Screening Program", "NIST Chemistry WebBook",  "Nitric Oxide Research, National Cancer Institute (NCI)", "NMMLSC",  "NMRShiftDB", "NovoSeek", "Oakwood Products", "ORST SMALL MOLECULE SCREENING CENTER",  "P3 BioSystems", "PANACHE", "Paul Baures", "PCMD", "PDSP", "PENN-ABS",  "PennChem-GAM", "PFC", "P.Ravikumar, M.Jeyam and G.Shalini. Biochematics Division, Bharathiar University",  "priyadharshini sabarathinam angayarkanni murugesh palaniswamy",  "Prous Science Drugs of the Future", "Rangan Lab, Department of Biotechnology, IIT Guwahati",  "R&D Chemicals", "R.Sathishkumar, Phytomatics Laboratory, Department of Bioinformatics, Bharathiar University",  "RSChem, LLC", "SASTRA University, Quorum sensing and Peptidomimetics Laboratory",  "Selleckbio", "Selleck Chemicals", "SGCOxCompounds", "SGCStoCompounds",  "S.GURUDEEBAN, T.RAMANATHAN & K.SATYAVANI, Marine Medicinal Plant Biotechnology Laboratory, Faculty of Marine Sciences, Annamalai Universtiy",  "Shanghai Institute of Organic Chemistry", "Shanghai Sinofluoro Scientific Company",  "SIGMA", "Sigma-Aldrich", "SLING Consortium", "Southern Research Specialized Biocontainment Screening Center",  "SRMLSC", "Structural Genomics Consortium", "SureChem", "SYNCHEM OHG",  "Syntechem", "TCI (Tokyo Chemical Industry)", "ten Dijke Lab, Leiden University Medical Center",  "Tetrahedron Scientific Inc", "Therapeutic Targets Database",  "TimTec", "Total TOSLab Building-Blocks", "Tox21", "True PharmaChem",  "Tyger Scientific", "UCLA Molecular Screening Shared Resource",  "UM-BBD", "UniCarbKB", "University of Pittsburgh Molecular Library Screening Center",  "UPCMLD", "Vanderbilt Screening Center for GPCRs, Ion Channels and Transporters",  "Vanderbilt Specialized Chemistry Center", "Vanderbilt University Medical Center",  "VIT University", "Watec Laboratories", "Watson International Ltd",  "Web of Science", "xPharm", "Zancheng Functional Chemicals",  "zealing chemical")
validFromStandard <- c("Chemical Name", "CAS")

#validTo <- fromJSON(getURL("http://cts.fiehnlab.ucdavis.edu/service/convert/toValues"))
validTo <- c("BioCyc", "CAS", "ChEBI", "Chemical Name", "Human Metabolome Database",  "InChI Code", "InChIKey", "KEGG", "LMSD", "LipidMAPS", "PubChem CID",  "Pubchem SID", "ChemSpider", "The Scripps Research Institute Molecular Screening Center",  "ChemDB", "ZINC", "Comparative Toxicogenomics Database", "ChEMBL",  "SCRIPDB", "ABI Chem", "MMDB", "ChemBank", "MolPort", "SMID",  "Ambinter", "ASINEX", "ChemBlock", "DiscoveryGate", "Emory University Molecular Libraries Screening Center",  "MLSMR", "NIAID", "Southern Research Institute", "Specs", "Vitas-M Laboratory",  "CLRI (CSIR)", "DrugBank", "NIST", "Thomson Pharma", "AAA Chemistry",  "ABBLIS Chemicals", "Abbott Labs", "AbMole Bioscience", "Acesobio",  "Achemica", "Acorn PharmaTech", "Active Biopharma", "Adooq BioScience",  "AKos Consulting & Solutions", "AK Scientific, Inc. (AKSCI)",  "Alagar Yadav, Karpagam University", "ALDRICH", "Alinda Chemical",  "Alsachim", "Amadis Chemical", "Amatye", "Ambit Biosciences",  "AmicBase - Antimicrobial Activities", "Angene Chemical", "Angene International",  "Anitha, Department of Bioinformatics, Karpagam University",  "Annker Organics", "Anward", "Apeiron Synthesis", "ApexBio Technology",  "Apexmol", "Ark Pharm, Inc.", "Aromsyn catalogue", "Aronis",  "Aurum Pharmatech LLC", "Avanti Polar Lipids", "Beijing Advanced Technology Co, Ltd",  "Bertin Pharma", "Bhaskar Lab, Department of Zoology, Sri Venkateswara University",  "BIDD", "BIND", "BindingDB", "BioChemPartner", "Biological Magnetic Resonance Data Bank (BMRB)",  "Bioprocess Technology Lab, Department of Microbiology, Bharathidasan University",  "Biosynth", "Broad Institute", "BroadPharm", "Burnham Center for Chemical Genomics",  "Calbiochem", "Cambridge Crystallographic Data Centre", "CAPOT",  "Cayman Chemical", "CC_PMLSC", "Center for Chemical Genomics, University of Michigan",  "Chembase.cn", "Chembo", "ChemBridge", "ChemExper Chemical Directory",  "ChemFrog", "Chemical Biology Department, Max Planck Institute of Molecular Physiology",  "chemicalize.org by ChemAxon", "ChemIDplus", "ChemMol", "ChemScene",  "ChemSynthesis", "ChemTik", "Chiralblock Biosciences", "Circadian Research, Kay Laboratory, University of California at San Diego (UCSD)",  "CMLD-BU", "Columbia University Molecular Screening Center",  "Creasyn Finechem", "Department of Pharmacy, LMU", "DTP/NCI",  "EDASA Scientific Compounds June 2013", "EMD Biosciences", "Enamine",  "Ennopharm", "EPA DSSTox", "Excenen Pharmatech", "Exchemistry",  "FINETECH", "Finley and King Labs, Harvard Medical School", "FLUKA",  "ForeChem", "Fragmenta", "Georganics", "GlaxoSmithKline (GSK)",  "GLIDA, GPCR-Ligand Database", "GNF / Scripps Winzeler lab",  "Golm Metabolome Database (GMD), Max Planck Institute of Molecular Plant Physiology",  "Hangzhou APIChem Technology", "Hangzhou Trylead Chemical Technology",  "HDH Pharma", "HUMGENEX", "IBCH RAS", "IBM", "ICCB-Longwood/NSRB Screening Facility, Harvard Medical School",  "Immunology Lab, Department of Biotechnology, Calicut University",  "InFarmatik", "Inhibitor 2", "Insect Molecular Biology Lab, Department of Environmental Biotechnology, Bharathidasan University",  "IS Chemical Technology", "Isoprenoids", "iThemba Pharmaceuticals",  "IUPHAR-DB", "Jamson Pharmachem Technology", "Johns Hopkins Ion Channel Center",  "Kingston Chemistry", "KUMGM", "LeadScope", "MedChemexpress MCE",  "MICAD", "MIC Scientific", "Milwaukee Institute for Drug Discovery",  "Molecular Libraries Program, Specialized Chemistry Center, University of Kansas",  "MOLI", "MOLI", "MP Biomedicals", "MTDP", "Nanjing Pharmaceutical Factory",  "Nantong Baihua Bio-Pharmaceutical Co., Ltd", "Nature Chemical Biology",  "Nature Chemistry", "Nature Communications", "NCGC", "NIH Clinical Collection",  "NINDS Approved Drug Screening Program", "NIST Chemistry WebBook",  "Nitric Oxide Research, National Cancer Institute (NCI)", "NMMLSC",  "NMRShiftDB", "NovoSeek", "Oakwood Products", "ORST SMALL MOLECULE SCREENING CENTER",  "P3 BioSystems", "PANACHE", "Paul Baures", "PCMD", "PDSP", "PENN-ABS",  "PennChem-GAM", "PFC", "P.Ravikumar, M.Jeyam and G.Shalini. Biochematics Division, Bharathiar University",  "priyadharshini sabarathinam angayarkanni murugesh palaniswamy",  "Prous Science Drugs of the Future", "Rangan Lab, Department of Biotechnology, IIT Guwahati",  "R&D Chemicals", "R.Sathishkumar, Phytomatics Laboratory, Department of Bioinformatics, Bharathiar University",  "RSChem, LLC", "SASTRA University, Quorum sensing and Peptidomimetics Laboratory",  "Selleckbio", "Selleck Chemicals", "SGCOxCompounds", "SGCStoCompounds",  "S.GURUDEEBAN, T.RAMANATHAN & K.SATYAVANI, Marine Medicinal Plant Biotechnology Laboratory, Faculty of Marine Sciences, Annamalai Universtiy",  "Shanghai Institute of Organic Chemistry", "Shanghai Sinofluoro Scientific Company",  "SIGMA", "Sigma-Aldrich", "SLING Consortium", "Southern Research Specialized Biocontainment Screening Center",  "SRMLSC", "Structural Genomics Consortium", "SureChem", "SYNCHEM OHG",  "Syntechem", "TCI (Tokyo Chemical Industry)", "ten Dijke Lab, Leiden University Medical Center",  "Tetrahedron Scientific Inc", "Therapeutic Targets Database",  "TimTec", "Total TOSLab Building-Blocks", "Tox21", "True PharmaChem",  "Tyger Scientific", "UCLA Molecular Screening Shared Resource",  "UM-BBD", "UniCarbKB", "University of Pittsburgh Molecular Library Screening Center",  "UPCMLD", "Vanderbilt Screening Center for GPCRs, Ion Channels and Transporters",  "Vanderbilt Specialized Chemistry Center", "Vanderbilt University Medical Center",  "VIT University", "Watec Laboratories", "Watson International Ltd",  "Web of Science", "xPharm", "Zancheng Functional Chemicals",  "zealing chemical")
validToStandard <- c("CAS", "Chemical Name", "InChIKey", "KEGG", "PubChem CID", "ChemSpider")

# Progress indicator from shinyIncubator:
#' Initialize progress
#'
#' Call this function in your \code{shinyUI} definition if you intend
#' to use progress in \code{server.R}.
#' @seealso \code{\link{withProgress}}, \code{\link{Progress}}
#' @export
progressInit <- function() {
  addResourcePath('progress', system.file('progress',
                                          package='shinyIncubator'))
  tagList(
    singleton(
      tags$head(
        tags$script(src='progress/progress.js'),
        tags$link(rel='stylesheet', type='text/css',
                  href='progress/progress.css')
      )
    )
  )
}

#' Reporting progress (object-oriented API)
#'
#' Reports progress to the user during long-running operations.
#'
#' This package exposes two distinct programming APIs for working with
#' progress. \code{\link{withProgress}} and \code{\link{setProgress}}
#' together provide a simple function-based interface, while the
#' \code{Progress} reference class provides an object-oriented API.
#'
#' Instantiating a \code{Progress} object causes a progress panel to be
#' created, and it will be displayed the first time the \code{set}
#' method is called. Calling \code{close} will cause the progress panel
#' to be removed.
#'
#' \strong{Methods}
#' \describe{
#' \item{\code{initialize(session, min = 0, max = 1)}}{
#' Creates a new progress panel (but does not display it).
#' }
#' \item{\code{set(message = NULL, detail = NULL, value = NULL)}}{
#' Updates the progress panel. When called the first time, the
#' progress panel is displayed.
#' }
#' \item{\code{close()}}{
#' Removes the progress panel. Future calls to \code{set} and
#' \code{close} will be ignored.
#' }
#' }
#'
#' @param session The Shiny session object, as provided by
#' \code{shinyServer} to the server function.
#' @param min The value that represents the starting point of the
#' progress bar. Must be less tham \code{max}.
#' @param max The value that represents the end of the progress bar.
#' Must be greater than \code{min}.
#' @param message A single-element character vector; the message to be
#' displayed to the user, or \code{NULL} to hide the current message
#' (if any).
#' @param detail A single-element character vector; the detail message
#' to be displayed to the user, or \code{NULL} to hide the current
#' detail message (if any). The detail message will be shown with a
#' de-emphasized appearance relative to \code{message}.
#' @param value Single-element numeric vector; the value at which to set
#' the progress bar, relative to \code{min} and \code{max}.
#' \code{NULL} hides the progress bar, if it is currently visible.
#'
#' @examples
#' \dontrun{
#' # server.R
#' shinyServer(function(input, output, session) {
#' output$plot <- renderPlot({
#' progress <- Progress$new(session, min=1, max=15)
#' on.exit(progress$close())
#'
#' progress$set(message = 'Calculation in progress',
#' detail = 'This may take a while...')
#'
#' for (i in 1:15) {
#' progress$set(value = i)
#' Sys.sleep(0.5)
#' }
#' plot(cars)
#' })
#' })
#' }
#' @seealso \code{\link{progressInit}}, \code{\link{withProgress}}
#' @rdname Progress
#' @export
Progress <- setRefClass(
  'Progress',
  fields = list(
    .session = 'ANY',
    .id = 'character',
    .min = 'numeric',
    .max = 'numeric',
    .closed = 'logical'
  ),
  methods = list(
    initialize = function(session, min = 0, max = 1) {
      .closed <<- FALSE
      .session <<- session
      .id <<- paste(as.character(as.raw(runif(8, min=0, max=255))), collapse='')
      .min <<- min
      .max <<- max
      
      .session$sendCustomMessage('shiny-progress-open', list(id = .id))
    },
    set = function(message = NULL, detail = NULL, value = NULL) {
      if (.closed) {
        # TODO: Warn?
        return()
      }
      
      data <- list(id = .id)
      if (!missing(message))
        data$message <- message
      if (!missing(detail))
        data$detail <- detail
      if (!missing(value)) {
        if (is.null(value) || is.na(value))
          data$value <- NULL
        else {
          data$value <- min(1, max(0, (value - .min) / (.max - .min)))
        }
      }
      
      .session$sendCustomMessage('shiny-progress-update', data)
    },
    close = function() {
      if (.closed) {
        # TODO: Warn?
        return()
      }
      
      .session$sendCustomMessage('shiny-progress-close',
                                 list(id = .id))
    }
  )
)

.currentProgress <- new.env()

#' Reporting progress (functional API)
#'
#' Reports progress to the user during long-running operations.
#'
#' This package exposes two distinct programming APIs for working with
#' progress. \code{withProgress} and \code{setProgress} together provide
#' a simple function-based interface, while the \code{\link{Progress}}
#' reference class provides an object-oriented API.
#'
#' Use \code{withProgress} to wrap the scope of your work; doing so will
#' cause a new progress panel to be created, and it will be displayed the
#' first time \code{setProgress} is called. When \code{withProgress} exits,
#' the corresponding progress panel will be removed.
#'
#' Generally, \code{withProgress}/\code{setProgress} should be
#' sufficient; the exception is if the work to be done is asynchronous
#' (this is not common) or otherwise cannot be encapsulated by a single
#' scope. In that case, you can use the \code{Progress} reference class.
#'
#' @param session The Shiny session object, as provided by
#' \code{shinyServer} to the server function.
#' @param expr The work to be done. This expression should contain calls
#' to \code{setProgress}.
#' @param min The value that represents the starting point of the
#' progress bar. Must be less tham \code{max}.
#' @param max The value that represents the end of the progress bar.
#' Must be greater than \code{min}.
#' @param env The environment in which \code{expr} should be evaluated.
#' @param quoted Whether \code{expr} is a quoted expression (this is not
#' common).
#' @param message A single-element character vector; the message to be
#' displayed to the user, or \code{NULL} to hide the current message
#' (if any).
#' @param detail A single-element character vector; the detail message
#' to be displayed to the user, or \code{NULL} to hide the current
#' detail message (if any). The detail message will be shown with a
#' de-emphasized appearance relative to \code{message}.
#' @param value Single-element numeric vector; the value at which to set
#' the progress bar, relative to \code{min} and \code{max}.
#' \code{NULL} hides the progress bar, if it is currently visible.
#'
#' @examples
#' \dontrun{
#' # server.R
#' shinyServer(function(input, output, session) {
#' output$plot <- renderPlot({
#' withProgress(session, min=1, max=15, {
#' setProgress(message = 'Calculation in progress',
#' detail = 'This may take a while...')
#' for (i in 1:15) {
#' setProgress(value = i)
#' Sys.sleep(0.5)
#' }
#' })
#' plot(cars)
#' })
#' })
#' }
#' @seealso \code{\link{progressInit}}, \code{\link{Progress}}
#' @rdname withProgress
#' @export
withProgress <- function(session, expr, min = 0, max = 1,
                         env=parent.frame(), quoted=FALSE) {
  func <- shiny::exprToFunction(expr, env, quoted)
  
  p <- Progress$new(session, min = min, max = max)
  
  .currentProgress$stack <- c(p, .currentProgress$stack)
  on.exit({
    .currentProgress$stack <- .currentProgress$stack[-1]
    p$close()
  })
  
  return(func())
}

#' @rdname withProgress
#' @export
setProgress <- function(message = NULL, detail = NULL, value = NULL) {
  if (is.null(.currentProgress$stack) || length(.currentProgress$stack) == 0) {
    warning('setProgress was called outside of withProgress; ignoring')
    return()
  }
  
  args <- list()
  if (!missing(message))
    args$message <- message
  if (!missing(detail))
    args$detail <- detail
  if (!missing(value))
    args$value <- value
  do.call(.currentProgress$stack[[1]]$set, args)
  invisible()
}