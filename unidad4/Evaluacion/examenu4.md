
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

<H2><p align="Center">TRABAJO: examen unidad 4</p></H2>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

iris = leer.csv(archivo.elegir())
iris
iris = leer.csv('Iris.csv')

data("iris") # cargar Iris Dataset# cargar Iris Dataset
biblioteca (conjuntos de datos)
datos ("iris")
resumen (iris)
iris
<img alt="Evidence1" src="https://github.com/AngelEsteban124020/repositoriou1/blob/Unidad-4/unidad4/Evaluacion/img/c1.PNG">

str(iris) #ver la estructura del conjunto de datos
resumen (iris) #ver resumen estadístico del conjunto de datos
cabeza (iris) #ver las filas superiores del conjunto de datos

#Preprocesar el conjunto de datos
iris.class<- iris[,"Especie"]
iris.nuevo<- iris[,c(1,2,3,4)]
cabeza(iris.nuevo)
cabeza (iris.clase)

#Uso del método del codo para encontrar el número óptimo de conglomerados
conjunto.semilla(6)
wcss = vector()
for (i en 1:10) wcss[i] = sum(kmeans(iris.new, i)$withinss)
trama (1:10,
     wcss,
     tipo = 'b',
     main = paste('El método del codo'),
     xlab = 'Número de clústeres',
     ylab = 'WCSS')

normalizar <- función(x){
  retorno ((x-min(x))/(max(x)-min(x)))
}

#Normalizar los datos para cada columna en el conjunto de datos.
iris.new$Sepal.Length<- normalize(iris.new$Sepal.Length)
iris.new$Sepal.Width<- normalize(iris.new$Sepal.Width)
iris.new$Petal.Length<- normalize(iris.new$Petal.Length)
iris.new$Petal.Width<- normalize(iris.new$Petal.Width)
cabeza(iris.nuevo)

result<- kmeans(iris.new,3) #aplly k-means algoritmo con no. de centroides(k)=3
result$size # devuelve el número de registros en cada grupo


result$centers # da el valor del punto de datos del centro del clúster (3 centros para k=3)
result$cluster #da un vector de clúster que muestra el custer donde cae cada registro

#Verificar los resultados de la agrupación con gráficos
par(mfrow=c(2,2), mar=c(5,4,2,2))
plot(iris.new[c(1,2)], col=result$cluster)# Trazar para ver cómo los puntos de datos Sepal.Length y Sepal.Width se han distribuido en grupos
plot(iris.new[c(1,2)], col=iris.class)# Trazar para ver cómo los puntos de datos Sepal.Length y Sepal.Width se han distribuido originalmente según el atributo "clase" en el conjunto de datos
plot(iris.new[c(3,4)], col=result$cluster)# Trazar para ver cómo los puntos de datos Petal.Length y Petal.Width se han distribuido en clústeres
plot(iris.nuevo[c(3,4)], col=iris.clase)

<img alt="Evidence1" src="https://github.com/AngelEsteban124020/repositoriou1/blob/Unidad-4/unidad4/Evaluacion/img/c2.PNG">
<img alt="Evidence1" src="https://github.com/AngelEsteban124020/repositoriou1/blob/Unidad-4/unidad4/Evaluacion/img/c3.PNG">
<img alt="Evidence1" src="https://github.com/AngelEsteban124020/repositoriou1/blob/Unidad-4/unidad4/Evaluacion/img/c4.png">

#Muestra a qué tipo de flor pertenece en el racimo
table(resultado$cluster,iris.class)


biblioteca (clúster)
clusplot(iris, resultado$cluster, color=T, sombra=T, etiquetas=0, lineas=0)
