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
})


## ----ut03-------------------------------------------------
create_dir_if_needed <- function(dir){
  if (!dir_exists(dir)) dir_create(dir)
}


## ----ut04-------------------------------------------------
file_delete_safe <- function(file_path){
  if(file_exists(file_path)){
    file_delete(file_path)
  }
}


## ----ut05-------------------------------------------------
dir_delete_safe  <- function(dir_path){
  if(dir_ls(dir_path) |> length() == 0) {
    dir_delete(dir_path)
  }
}

