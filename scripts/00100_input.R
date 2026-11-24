# Workspace bereinigen!
rm(list = ls(all.names = TRUE))

# geöffnete Grafen schließen
graphics.off()

# Lösche Konsole
cat("\014") 


# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=
# 00100_input.R
# Projekt: WPF | Beyond Westgard
# E-mail: helge.wimmer@hcw.ac.at
# Erstellungsdatum: 2026-11-24
# letzte Änderung:  2026-01-24
today <- format(Sys.Date(), format = "%d.%m.%Y") # heutiges Datum
# Version: 1.0
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=

# Autor für Ausdrucke
author <- "BioAB28V"

# Dateiname
datafile <- "data_1"

# Verzeichis
directory <- "data/raw"

# Einheit der x-Variable
xEinheit <- "mg/L"

# Zielwert der Kontrollwerte
target <- 110

# Standardabweichung der Kontrollwerte
sd <- 1.84

# die Funktion liest eine CSV-Datei ein und übergibt die Daten der Variable
# dataset als data.frame
dataset <- read.table(
  paste0(directory, "/", datafile, ".csv"),        # Dateipfad mit Variablen
  sep = ";",                                       # Spaltentrenner
  header = FALSE,                                  # Uebershrift ja/nein
  dec = "."                                        # Dezimaltrenner   
)

