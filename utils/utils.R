## ----ut01, include=FALSE----------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----ut02-------------------------------------------------
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
  library(readxl)
})


## ---------------------------------------------------------
local_download_data_dir <-
  path(here(), "data", "downloaded")


## ---------------------------------------------------------
rdata_prelim_dir <-
  path(here(), "data", "rdata_preliminary")


## ---------------------------------------------------------
safe_file_delete <-
  function(file) {
    if (file_exists(file)) file_delete(file)
  }


## ---------------------------------------------------------
safe_dir_delete <-
  function(dir) {
    if (dir_exists(dir)) dir_delete(dir)
  }


## ----ut03-------------------------------------------------
create_dir_if_needed <- function(dir) {
  if (!dir_exists(dir)) dir_create(dir)
}


## ----ut04-------------------------------------------------
file_delete_safe <- function(file_path) {
  if (file_exists(file_path)) {
    file_delete(file_path)
  }
}


## ----ut05-------------------------------------------------
dir_delete_safe <- function(dir_path) {
  if (dir_ls(dir_path) |> length() == 0) {
    dir_delete(dir_path)
  }
}

