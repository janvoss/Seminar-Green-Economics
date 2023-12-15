#library(tidyverse)
library(ggplot2)


# Daten kreieren
set.seed(123)
df <- data.frame(Jahr = c(rep("2015", 3), rep("2030", 3)),
                 Kategorie=c("E1", "E2", "E3"),
                 Werte = sample(c(1:6))
                 )

# Daten ansehen
df


# Abbildung

gg <- ggplot(df, aes(x= Kategorie, y=Werte, fill=Jahr))+
   geom_col(position = "dodge")+
  # das ist etwas kürzer als geom_bar(stat="identity", position = "dodge")+
  #Falls Farbwahl manuell gewünscht die folgende Zeile verwenden und Farben wählen:
   # scale_fill_manual(values=c("red", "blue"))+
  labs(title="Ein Titel",
       caption="Eigene Darstellung, Daten: [Quelle]")+
  #Kein grauer Hintergrund:
  theme_light()
  

gg
