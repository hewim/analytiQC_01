# analytiQC_template

# Qualitätskontrolle im medizinischen Labor mit R, Git und GitHub

Willkommen im Projektrepository Ihrer Arbeitsgruppe.

In diesem Projekt analysieren Sie Qualitätskontrolldaten aus dem medizinischen Labor und entwickeln einen reproduzierbaren Workflow zur Qualitätssicherung mit R. Gleichzeitig lernen Sie die kollaborative Arbeit mit Git und GitHub kennen.

------------------------------------------------------------------------

# Lernziele

Nach Abschluss des Projekts können Sie:

- Qualitätskontrolldaten in R einlesen und verarbeiten
- Mittelwert, Standardabweichung, Variationskoeffizient und Bias berechnen
- Levey-Jennings-Diagramme erstellen
- Westgard-Regeln programmatisch prüfen
- typische Fehlerquellen im Labor erkennen
- Git und GitHub für die Zusammenarbeit nutzen
- Analyseergebnisse reproduzierbar dokumentieren

------------------------------------------------------------------------

# Projektstruktur

``` text
.
├── data/
│   ├── processed
|   └── raw
│
├── R/
│
├── scripts/
│   ├── 00100_input.R
|   ├── 00200_calc.R
│   └── 00300_lj-plot.R
│
├── outputs/
│
├── .gitignore
├── _quarto.yml
├── README.md
└── analytic_QC.Rproj
```

Der R-Ordner bleibt zuinächst leer und wird in weiterer Folge mit Funktionen befüllt, um den Workflow stringenter zu gestalten - ebenso der outputs-Ordner, in dem dann reports und graphics in einem eigenen Unterverzeichnis gespeichert werden, sowie das work_protocol.

------------------------------------------------------------------------

# Team

Bitte ergänzen Sie die Namen Ihrer Gruppe.

| Name | GitHub-Username | Verantwortungsbereich |
|------|-----------------|-----------------------|
|      |                 | Aufgabe 1 & 4         |
|      |                 | Aufgabe 2 & 4         |
|      |                 | Aufgabe 3 & 4         |

------------------------------------------------------------------------

# Arbeitsaufträge

## Aufgabe 1: Daten einlesen

Datei:

``` text
scripts/00100_input.R
```

Ziele:

- CSV-Datei einlesen
- Datentypen prüfen
- Datenstruktur dokumentieren

------------------------------------------------------------------------

## Aufgabe 2: Grundlegende Qualitätskennzahlen

Datei:

``` text
scripts/00200_calc.R
```

Berechnen Sie:

- Mittelwert
- Standardabweichung
- Variationskoeffizient (CV%)
- Bias

Dokumentieren Sie die Ergebnisse in:

``` text
output/reports/
```

------------------------------------------------------------------------

## Aufgabe 3: Levey-Jennings-Diagramm

Datei:

``` text
scripts/00300_lj-plot.R
```

Erstellen Sie:

- Mittelwertlinie
- ±1 SD
- ±2 SD
- ±3 SD

Speichern Sie die Grafik in:

``` text
output/graphics/
```

------------------------------------------------------------------------

## Aufgabe 4: Westgard-Regeln

Datei:

``` text
scripts/00400_westgard.R
```

Implementieren Sie folgende Regeln:

- 1~2s~
- 1~3s~
- 2~2s~
- R~4s~
- 4~1s~
- 10~x~

Dokumentieren Sie:

- welche Regel verletzt wurde
- mögliche Fehlerursachen
- notwendige Maßnahmen

------------------------------------------------------------------------

# GitHub-Workflow

## Vor Arbeitsbeginn

``` bash
git pull
```

Aktuellen Stand vom Repository abrufen.

------------------------------------------------------------------------

## Änderungen speichern

``` bash
git add .
git commit -m "Kurze Beschreibung der Änderung"
```

Beispiel:

``` bash
git commit -m "Levey-Jennings-Diagramm ergänzt"
```

------------------------------------------------------------------------

## Änderungen hochladen

``` bash
git push
```

------------------------------------------------------------------------

# Arbeiten mit Branches

Für neue Funktionen verwenden Sie eigene Branches:

``` bash
git checkout -b feature-westgard
```

Nach Abschluss:

``` bash
git push origin feature-westgard
```

Erstellen Sie anschließend einen Pull Request auf GitHub.

------------------------------------------------------------------------

# Dokumentation der Zusammenarbeit

Jedes Teammitglied dokumentiert seine Beiträge in

``` text
reports/work_protocol.md
```

Beispiel:

``` markdown
## Max Mustermann

- Datenimport erstellt
- Mittelwert berechnet
- Pull Request #2 bearbeitet
```

------------------------------------------------------------------------

# Abgabe

Die Abgabe erfolgt über den Link zu Ihrem GitHub-Repository.

Folgende Dateien müssen vorhanden sein:

✅ README.md auf Ihr Projekt korrigieren

✅ daten_1.csv

✅ R-Skripte

✅ Levey-Jennings-Diagramm

✅ Implementierte Westgard-Regeln

✅ Arbeitsprotokoll

✅ Abschlussbericht

------------------------------------------------------------------------

# Ehrenkodex

Alle Gruppenmitglieder verpflichten sich, ihre Beiträge transparent zu dokumentieren und die Regeln guter wissenschaftlicher Praxis einzuhalten. Die Versionshistorie des Repositories dient als Nachweis der individuellen Mitarbeit.

Viel Erfolg bei der Analyse Ihrer Qualitätskontrolldaten!
