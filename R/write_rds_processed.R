write_rds_processed <- function(object, file) {
  
  # Verzeichnis erstellen, falls es nicht existiert
  output_dir <- "data/processed"
  
  if (!dir.exists(output_dir)) {
    dir.create(output_dir, recursive = TRUE)
  }
  
  # Dateiendung ergänzen
  if (!grepl("\\.rds$", file, ignore.case = TRUE)) {
    file <- paste0(output_dir, "/", file, ".rds")
  }
  
  # Speichern des Objekts als RDS-Datei
  saveRDS(object, file)
  
  # keine automatische Ausgabe in der Konsole
  invisible(file)
}