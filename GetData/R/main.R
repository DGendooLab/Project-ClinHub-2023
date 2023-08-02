source("~/GetData/R/init.R")
source("~/GetData/R/DownloadTCGA.R")

# Install and load required libraries
# Set system-default parameter
init()

# Get the list of Firehose datasets
firehose_ls <- getFirehoseDatasets()

# Get the latest running date
firehose_dt <- getFirehoseRunningDates()[1]

expname_ls <- c(
            "RNASeqGene",
            "RNASeq2Gene",
            "miRNASeqGene",
            "RNASeq2GeneNorm",
            "CNASNP",
            "CNVSNP",
            "CNASeq",
            "CNACGH",
            "Methylation",
            "Mutation",
            "mRNAArray",
            "miRNAArray",
            "RPPAArray",
            "GISTIC")

# Download data from TCGA
Tumour_TCGA <- list()
for (dataset in firehose_ls){
  # Get phenodata
  tmp_pData <- GetPhenoData(dataset, "D://")

  # Get ExperimentList
  maplist <- list()
  tmp_explist <- list()
  tmp_map <- data.frame()

  for (exp in expname_ls){
    tmp_exp <- LoadData(dataset, "D://", exp)
    if(length(tmp_exp) != 0){
      tmp_explist[exp] <- tmp_exp
      if(exp == "GISTIC"){
        for (val in colData(tmp_exp$AllByGene)@rownames) {
          vectr <- c(substr(val, 1, 12), val)
          tmp_map <- rbind(tmp_map,vectr)
        }
      }
      else if((dataset == 'COADREAD' | dataset == 'COAD' | dataset == 'READ') & exp == 'RNASeq2GeneNorm'){
        for (val in c(colData(tmp_exp$illuminaga)@rownames, colData(tmp_exp$illuminahiseq)@rownames)) {
          vectr <- c(substr(val, 1, 12), val)
          tmp_map <- rbind(tmp_map,vectr)
        }
      }
      else if((dataset == 'GBM' | dataset == 'GBMLGG' | dataset == 'OV') & exp == 'CNACGH'){
        for (val in c(colData(tmp_exp$CGH_hg_244a)@rownames, colData(tmp_exp$CGH_hg_415k_g4124a)@rownames)) {
          vectr <- c(substr(val, 1, 12), val)
          tmp_map <- rbind(tmp_map,vectr)
        }
      }
      else{
        for (val in colData(tmp_exp)@rownames) {
          vectr <- c(substr(val, 1, 12), val)
          tmp_map <- rbind(tmp_map,vectr)
        }
      }
      colnames(tmp_map) <- c('primary', 'colname')
      maplist[[exp]] <- tmp_map
    }

  }

  ## Create a sampleMap
  sampMap <- listToMap(maplist)

  tmp_save <- MultiAssayExperiment(tmp_explist, colData = tmp_pData, sampleMap = sampMap)
  Tumour_TCGA[[dataset]] <- tmp_save
  save(tmp_save, file = paste0("Tumour_", dataset, "_TCGA.RData"))
}

# check the list of MultiAssayExperiments
Tumour_TCGA
