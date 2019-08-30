library(dplyr)
library(fuzzywuzzyR)
library(stringdist)
library(stringr)

ejobs <- read.csv("~/ejobs.csv", stringsAsFactors = FALSE)
nomen <- read.csv("~/a12_1.csv", stringsAsFactors = FALSE)


den_fir <- ejobs$denumire
den_fir_nomen <- nomen$denumire


den_fir <- toupper(den_fir)
den_fir <- gsub("SC", "", den_fir)
den_fir <- gsub("S.C.", "", den_fir)
den_fir <- gsub("SA", "", den_fir)
den_fir <- gsub("S.A.", "", den_fir)
den_fir <- gsub("SRL", "", den_fir)
den_fir <- gsub("S.R.L.", "", den_fir)
den_fir <- gsub(" ", "", den_fir)

den_fir_nomen <- toupper(den_fir_nomen)
den_fir_nomen <- gsub("SC", "", den_fir_nomen)
den_fir_nomen <- gsub("S.C.", "", den_fir_nomen)
den_fir_nomen <- gsub("SA", "", den_fir_nomen)
den_fir_nomen <- gsub("S.A.", "", den_fir_nomen)
den_fir_nomen <- gsub("SRL", "", den_fir_nomen)
den_fir_nomen <- gsub("S.R.L.", "", den_fir_nomen)
den_fir_nomen <- gsub(" ", "", den_fir_nomen)

pmm_index <- pmatch(den_fir_nomen, den_fir)
pmm <- den_fir_nomen[!is.na(mm_index)]



match_score <- list()
match_score$pmatch <- length(mm)/length(den_fir_nomen)
match_score$pmatch


