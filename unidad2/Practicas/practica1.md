
<p align="center">
    <img alt="Logo" src="https://www.tijuana.tecnm.mx/wp-content/uploads/2021/08/liston-de-logos-oficiales-educacion-tecnm-FEB-2021.jpg" width=850 height=250>
</p>

<H2><p align="Center">TECNOLÓGICO NACIONAL DE MÉXICO</p></H2>

<H2><p align="Center">INSTITUTO TECNOLÓGICO DE TIJUANA</p></H2>

<H2><p align="Center">SUBDIRECCIÓN ACADÉMICA</p></H2>

<H2><p align="Center">DEPARTAMENTO DE SISTEMAS Y COMPUTACIÓN</p></H2>

<H2><p align="Center">NOMBRE DE LOS ALUMNOS: </p></H2>

<H2><p align="Center">ALDERETE DELGADO ANGEL ESTEBAN (N. CONTROL: 17212327)</p></H2>

<H2><p align="Center">DAMARIS VILLEGAS CARMONA (N.CONTROL: 17210659)</p></H2>

<H2><p align="Center">Carrera: Ingeniería Informática</p></H2>

<H2><p align="Center">Semestre: 10mo </p></H2>

<H2><p align="Center">MATERIA: Minería de datos</p></H2>

<H2><p align="Center">PROFESOR: JOSE CHRISTIAN ROMERO HERNANDEZ</p></H2>

<H2><p align="Center">TRABAJOS: Practica 1</p></H2>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


Juegos  <- read.csv( " GamingD.csv " )
Juegos  <- leer.csv(archivo.elegir())
Juegos 

biblioteca ( " ggplot2 " )
biblioteca ( dplyr )

# Naturaleza de los datos
cabeza ( Juegos )
colnames( Juegos )
cola ( Juegos )
resumen ( juegos )


# 1.- Creación de diagramas de dispersión
# Videojuegos producidos al año
Scatplot  <- ggplot( Juegos , aes( x = Plataforma , y = Año ,
                               color = Género )) + geom_point()
Diagrama de dispersión
# NA Ventas por plataforma
Scatplot2  <- ggplot( Juegos , aes( x = NA_Sales , y = Plataforma ,
                              color = Género )) + geom_point()
Scatplot2


# 2. Creación de gráficos en facetas
# facetas 1
v  <- ggplot( Juegos , aes( x = NA_Sales ))
v  + geom_histogram( binwidth  =  10 , aes( fill = Género ),
                   color = " negro " )

v  + geom_histogram( binwidth  =  10 , aes( fill = Género ),
                   color = " Negro " ) + facet_grid( Género ~ . , escalas = " libre " )


# 3. Gráficos de distribución
geo <- filter( Juegos , Género  ==  " Acción " )
geo

# Ventas por año
ggplot( datos = Juegos , aes( x = Año , y = EU_Sales )) + 
  geom_punto()

    

# Separar la variable que queremos analizar
x <- Juegos $ EU_Sales
distribucion <- dnorm( x ,           
                    media  =  0.1467 ,    
                    sd  =  1 ,      
                    registro  =  FALSO )

# Separar la variable que queremos analizar
x <- Juegos $ EU_Sales

# Graficar la distribución normal
plot( x , dnorm( x , media  =  0.1467 , sd  =  1 ), tipo  =  " l " ,
     ylab  =  " " , lwd  =  1 , col  =  " rojo " )

# Graficar la distribución normal
plot( x , dnorm( x , media  =  0.1467 , sd  =  1 ),
     ylab  =  " " , lwd  =  1 , col  =  " rojo " )

# Leyendas y decoración con un tema
h  +
  xlab( " Años " ) +
  ylab( " Unidades " ) +
  ggtitle( " Venta de videojuegos " ) +
  tema ( eje.título.x  = elemento_texto ( color  =  " Verde oscuro " , tamaño = 20 ),
        eje.título.y  = elemento_texto( color  =  " Rojo " , tamaño = 20 ),
        eje.texto.x  = elemento_texto( color = " Negro " , tamaño  =  5 ),
        eje.texto.y  = elemento_texto( color = " Negro " , tamaño  =  5 ),
        leyenda.título  = elemento_texto ( tamaño  =  20 ),
        leyenda.texto  = elemento_texto( tamaño  =  20 ),
        leyenda.posicion  = c( 1 , 1 ),
        leyenda.justificación  = c( 1 , 1 ),
        trama.título  = elemento_texto ( color  =  " Verde oscuro " , tamaño  =  25 ))
