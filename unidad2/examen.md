
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

<H2><p align="Center">TRABAJO: examen unidad 2</p></H2>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

# Librerías Necearias
biblioteca ( ggplot2 )

# Importar conjunto de datos
 nuestrosdatos <- leer.csv (archivo.elegir())

# Filtrar el genero del marco de datos
# filtro1
filtro  <- ( nuestrosdatos $ Género  ==  " acción " ) | ( nuestros datos $ Género  ==  " aventura " ) | ( nuestros datos $ Género    ==   " animación " ) | ( nuestros datos $ Género    ==   " comedia " ) | ( nuestros datos $ Género  ==  " drama " )
filtros

# Filtrar los estudios del dataframe
# filtro2
filtro2  <-  nuestrosdatos $ Estudio  %in% c( " Buena Vista Studios " , " WB " , " Fox " , " Universal " , " Sony " , " Paramount Pictures " )
filtro2

# Creación del Dataframe Filtrado
nuestrosdatos2  <-  nuestrosdatos [ filtro & filtro2 ,]  
nuestrosdatos2

# Creacion de la grafica
grafica  <- ggplot( data = ourdata2 ,aes( x = Genre , y = Gross...US )) + geom_jitter(aes( size = Budget...mill. , color = Studio )) + geom_boxplot( alpha  =  0.8 , valor atípico.color  =  NA ) + scale_size_continuous( range  = c( 1 , 3 )) + xlab( " Género " )+ ylab( " % bruto de EE. UU . " ) + ggtitle( " % bruto nacional por género " ) + theme( axis.title.x  = element_text( color  =  " Blue " , size = 15 ), axis.title.y  = element_text( color  =  " Azul " , tamaño = 15 ), eje.texto.x  = elemento_texto( tamaño = 10 ), eje.texto.y  =texto_elemento( tamaño = 10 ), plot.title  = texto_elemento( tamaño = 20 ), leyenda.título  = texto_elemento( tamaño = 10 ), texto  = texto_elemento( familia  =  " sans " ) )                      
grafica