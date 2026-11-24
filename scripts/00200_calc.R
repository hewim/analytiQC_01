
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=
# 00200_calc.R
# Projekt: WPF | Beyond Westgard
# E-mail: helge.wimmer@hcw.ac.at
# Erstellungsdatum: 2026-11-24
# letzte Änderung:  2026-01-24
today <- format(Sys.Date(), format = "%d.%m.%Y") # heutiges Datum
# Version: 1.0
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=-=

mw <- mean(dataset$V1)
sd <- sd(dataset$V1)
cv <- sd/mw*100
bias <- (mw-target)/target*100