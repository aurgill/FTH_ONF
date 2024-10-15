#SCRIPT du projet FTH====
##Aurèlia BALAYER - Juliette XXX - Aurélien GILLARD
rm(list=ls()) #nettoyage des variables
library(readr)
hp=read_csv(file = "Inv_HP.csv")
pst=read_csv(file = "Inv_Piste.csv")

plot(hp$dbh)
plot(pst$dbh)
