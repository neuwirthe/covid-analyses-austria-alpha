## ----ut01, include=FALSE-----------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----ut02--------------------------------------------------
suppressPackageStartupMessages({
  library(tidyverse)
  library(magrittr)
  library(fs)
  library(here)
  library(ggiraph)
  library(scales)
  library(gt)
  library(ggmosaic)
  library(htmlwidgets)
  library(cowplot)
  library(clipr)
  library(openxlsx)
})


## ----ut03--------------------------------------------------
create_dir_if_needed <- function(dir){
  if (!dir_exists(dir)) dir_create(dir)
}

