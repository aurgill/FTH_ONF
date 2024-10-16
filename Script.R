#SCRIPT du projet FTH====
##Aurèlia BALAYER - Juliette XXX - Aurélien GILLARD
rm(list=ls()) #nettoyage des variables
library(readr)
library(entropart) #pour autoplot
library(tidyverse)
hp=read_csv(file = "Inv_HP.csv")
pst=read_csv(file = "Inv_Piste.csv")

df = as.data.frame(table(as.vector(hp$dbh)))
dbhHP <- df$Freq
names(dbhHP) <- df$Var1
# Vecteur pour le traitement par autoplot
dbhHP %>% as.AbdVector -> dbhHP
autoplot(dbhHP, Distribution = "lnorm") #utilise ggplot automatiquement.

df = as.data.frame(table(as.vector(pst$dbh)))
dbhPst <- df$Freq
names(dbhPst) <- df$Var1
# Vecteur pour le traitement par autoplot
dbhPst %>% as.AbdVector -> dbhPst
autoplot(dbhPst, Distribution = "lnorm") #utilise ggplot automatiquement.

