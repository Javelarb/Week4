#!/usr/bin/env Rscript

setwd("/media/julio/Storage/ecoevo283/Week4/")

data("mtcars")

con <- DBI::dbConnect(RSQLite::SQLite(), snakemake@output[[1]])
DBI::dbWriteTable(con, "mtcars", mtcars)
DBI::dbDisconnect(con)
