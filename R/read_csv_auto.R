read_csv_auto <- function(datei) {
  
  # Datei vorhanden?
  if (!file.exists(datei)) {
    stop("Datei existiert nicht.", call. = FALSE)
  }
  
  zeilen <- readLines(datei, warn = FALSE)
  
  # Datei leer?
  if (length(zeilen) == 0) {
    stop("Datei ist leer.", call. = FALSE)
  }
  
  # Trennzeichen erkennen
  test_zeilen <- zeilen[1:min(5, length(zeilen))]
  
  anzahl_semikolon <- sum(grepl(";", test_zeilen))
  anzahl_komma <- sum(grepl(",", test_zeilen))
  
  sep <- if (anzahl_semikolon >= anzahl_komma) ";" else ","
  
  # Spaltenanzahl prüfen
  spalten_pro_zeile <- sapply(
    strsplit(zeilen, sep, fixed = TRUE),
    length
  )
  
  erwartete_spalten <- spalten_pro_zeile[1]
  
  fehlerhafte_zeilen <- which(
    spalten_pro_zeile != erwartete_spalten
  )
  
  if (length(fehlerhafte_zeilen) > 0) {
    stop(
      paste(
        "Inkonsistente Spaltenanzahl in Zeile(n):",
        paste(fehlerhafte_zeilen, collapse = ", ")
      ),
      call. = FALSE
    )
  }
  
  # Header erkennen
  if (length(zeilen) >= 2) {
    
    erste_zeile <- strsplit(
      zeilen[1],
      sep,
      fixed = TRUE
    )[[1]]
    
    zweite_zeile <- strsplit(
      zeilen[2],
      sep,
      fixed = TRUE
    )[[1]]
    
    erste_num <- suppressWarnings(
      !is.na(as.numeric(gsub(",", ".", erste_zeile)))
    )
    
    zweite_num <- suppressWarnings(
      !is.na(as.numeric(gsub(",", ".", zweite_zeile)))
    )
    
    header <- sum(erste_num) < sum(zweite_num)
    
  } else {
    
    header <- TRUE
    
  }
  
  # Dezimalzeichen erkennen
  daten_zeilen <- if (header) zeilen[-1] else zeilen
  
  punkt_zahlen <- sum(
    grepl("[0-9]+\\.[0-9]+", daten_zeilen)
  )
  
  komma_zahlen <- sum(
    grepl("[0-9]+,[0-9]+", daten_zeilen)
  )
  
  dec <- if (punkt_zahlen >= komma_zahlen) "." else ","
  
  # Einlesen
  daten <- read.table(
    file = datei,
    sep = sep,
    dec = dec,
    header = header,
    stringsAsFactors = FALSE,
    fill = FALSE
  )
  
  return(daten)
}