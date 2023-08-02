LoadData <- function(dataset, targetPath, category){
  # Download data under specified category
  # DIR <- paste(targetPath, dataset, sep = "")

  if (!dir.exists(targetPath)){
    dir.create(targetPath)
  }

  if(category == "RNASeqGene"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, RNASeqGene = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "RNASeq2Gene"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, RNASeq2Gene = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "miRNASeqGene"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, miRNASeqGene = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "RNASeq2GeneNorm"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, RNASeq2GeneNorm = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "CNASNP"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, CNASNP = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "CNVSNP"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, CNVSNP = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "CNASeq"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, CNASeq = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "CNACGH"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, CNACGH = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "Methylation"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, Methylation = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "Mutation"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, Mutation = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "mRNAArray"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, mRNAArray = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "miRNAArray"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, miRNAArray = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "RPPAArray"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, RPPAArray = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
        -1
      }
    )
  }

  if(category == "GISTIC"){
    state <- tryCatch(
      expr = {
        Data <- getFirehoseData(dataset = dataset, GISTIC = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
        exprm <- biocExtract(Data, category)
        1
      },
      error = function(e){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        0
      },
      warning = function(w){
        print(paste0("Filepath too long! Data under category ", category, " are hence unavailable. Try running the code on a non-Windows10/11 OS."))
        -1
      }
    )
  }

  if(state != 1){
    return(data.frame())
  }

  return(exprm)
}

GetPhenoData <- function(dataset, targetPath){
  tryCatch(
    expr = {
      Data <- getFirehoseData(dataset = dataset, clinical = TRUE, destdir = targetPath, forceDownload = TRUE, fileSizeLimit = 1000)
    },
    warning = function(w){
      print("Filepath too long! Data under this category are hence unavailable. Try running the code on a non-Windows10/11 OS.")
    }
  )
  # Exstract Clinical data (to Bioconductor Classes)
  Clinical <- biocExtract(Data, "clinical")

  # Clinical row names - dots to dashes, lower to upper
  i <- 1
  for (val in rownames(Clinical)){
    val <- gsub('\\.', '-', toupper(val))
    rownames(Clinical)[i] <-val
    i <- i + 1
  }
  return(Clinical)
}
