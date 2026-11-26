
# ==================================================
# 
# Projekt: DataValidR
# Script: 00100_input.R
#
# Zweck:
# Import von csv-Dateien in R und Speicherung als data.frame
#
# Input:
# directory: Verzeichnis der csv-Datei
# datafile: Name der csv-Datei ohne Endung .csv
#
# Output:
# data.frame 'dataset'
#
# Autor: H. Wimmer
# Erstellt: 13.11.2026
# =================================================

# Workspace bereinigen!
rm(list = ls(all.names = TRUE))

# geöffnete Grafen schließen
graphics.off()

# Lösche Konsole
cat("\014") 

# Funktiopnen einlesen
source("R/read_rds_auto.R")

# heutiges Datum
today <- format(Sys.Date(), format = "%d.%m.%Y")

# Autor für Ausdrucke
author <- "BioAB28V"

# Dateiname
datafile <- "data_1"

# Verzeichis
directory <- "data/raw"

# Einheit der x-Variable
xEinheit <- "mg/L"

# Chargennummer der KOntrolle
kontr_chnr <- "LT143 HN"

# Bezeichnungder Kontrolle
kontr_bez <- "Kontrolle normal"

# Zielwert der Kontrollwerte
target <- 110

# Standardabweichung der Kontrollwerte
sd <- 1.84

# die Funktion  read_sv_auto() liest eine CSV-Datei ein und übergibt die Daten 
# der Variable dataset
dataset <- read_rds_auto(paste0(directory, "/", datafile, ".rds"))


# Erstelle Report
quarto::quarto_render(input = "reports/Aufgabe_A.qmd", 
                   output_format = "docx",
                   execute_params = list(
                     dataset = dataset,
                     today = today,
                     author = author,
                     xEinheit = xEinheit,
                     target = target,
                     sd = sd,
                     kontr_chnr = kontr_chnr,
                     kontr_bez = kontr_bez
                   ))


# Fertig
message("Done. See data/processed and outputs/ for results.")



