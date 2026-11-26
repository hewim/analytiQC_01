
# ==================================================
# 
# Projekt: DataValidR
# Script: 00100_input.R
#
# Zweck:
# Import von csv-Dateien in R und Speicherung als data.frame
#
# Input:
# dataset: Vektor der Daten
# datafile: Name der csv-Datei ohne Endung .csv
#
# Autor: H. Wimmer
# Erstellt: 13.11.2026
# =================================================

# vorausgesetzt wird/werden die Variable(n):
# dataset, datafile


# Name des "Output-Ordners"
procDir <- "data/processed/"

# wenn der "Output-Ordners" nicht vorhanden, erstellen
ifelse(!dir.exists(file.path(procDir)), 
       dir.create(file.path(procDir)), 
       FALSE)

# Speichern im rds-Format 

saveRDS(dataset, 
        file = paste0(procDir, datafile,".rds")
        ) # end save RDS
