#
#Hecho con gusto por Veronica F. Garcia Artega
##HEATMAP con datos de genero

install.packages("pheatmap")

#cargar libreria
library(pheatmap)

#cargar datos "gender1"

gender1 <- gender1[,2:7]



#convertir a una matrix
gnd <- data.matrix(gender1)

View(gnd)

class(gnd)

#crear mapa de calor 
heatmap(gnd)

library(viridis)
Colores_gnd <- viridis_pal(9, "viridis")

#ver paleta
image(1:6,1,as.matrix(1:6), col = viridis (6), xlab="Leyenda", ylab="", xaxt="n", yaxt="n", bty="n")

#crear mapa de calor
heatmap(gnd, scale = "colum")


#modificar colores_gnd

heatmap(gnd, 
        scale = "colum",
        col = colores_gnd)


#modificar colores_blue
heatmap(gnd, 
        scale = "colum",
        col = colores_blue)










