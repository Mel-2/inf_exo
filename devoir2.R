# Importation des donnees
df<-read.csv("CreditBancaire.csv")


# Explorer l'objet df
str(df)

# Calcul de la moyenne du credit
mean(df$Credit)

# Calcul de la moyenne du nombre de jours de retard de paiement des clients
mean(df$Jours)

# calcul de la moyenne du nombre de jours de retard de paiement des clients part type de credit
aggregate(df[,2], list(df$Type), mean)

# Creation d'une matrice
gt<-cbind(c(80.76821,66.34667,95.94737))
gt

colnames(gt)<-c("moyenne")
rownames(gt)<-c("Commerce","Consommation","Production")
gt

# Representation graphique en baton
barplot(gt, beside = TRUE, horiz = FALSE, col = c("blue", "yellow", "red"), names.arg = toupper(colnames(gt)), legend.text = TRUE, space = 1)
