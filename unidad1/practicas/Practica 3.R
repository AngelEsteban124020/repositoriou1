## Datos
ingresos <- c (14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
gastos <- c (12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

##Calcular el beneficio
beneficio <- ingresos - gastos
beneficio

## Calcule el impuesto como el 30% de las ganancias y redondee a 2 puntos decimales
impuesto <- round(0.30* beneficio, 2)
impuesto

##Calcular el beneficio restante después de deducir impuestos
beneficioDimpuesto <- beneficio - impuesto
beneficioDimpuesto

## Calcular el margen de beneficio como beneficio después de impuestos sobre ingresos. Redondear a 2 puntos decimales, luego multiplicar por 100 para obtener %.
beneficio.margen <- round(beneficioDimpuesto/ingresos, 2)*100
beneficio.margen

##Calcular el beneficio medio después de impuestos de los 12 meses
mean_pat <- mean(beneficioDimpuesto)
mean_pat

##Encuentre los meses con ganancias superiores a la media después de impuestos
meses.buenos <- beneficioDimpuesto > mean_pat
meses.buenos

##Los meses malos son lo opuesto a los meses buenos
meses.malos <- beneficioDimpuesto < mean_pat
meses.malos

##El mejor mes es cuando el beneficio después de impuestos fue igual al máximo
mejor.mes <- beneficioDimpuesto == max(beneficioDimpuesto)
mejor.mes

##El peor mes es cuando el beneficio después de impuestos fue igual al mínimo
peor.mes <- beneficioDimpuesto == min(beneficioDimpuesto)
peor.mes

##Convertir todos los cálculos a unidades de mil dólares
ingresos <- round(ingresos/1000, 2)
ingresos
gastos <- round(gastos/1000, 2)
gastos
beneficio <- round(beneficio/1000, 2)
beneficio
beneficioDimpuesto <- round(beneficioDimpuesto/1000, 2)
beneficioDimpuesto

##Imprimir resultados
M <- rbind(
       ingresos,
       gastos,
       beneficio,
       beneficioDimpuesto, 
       beneficio.margen, 
       meses.buenos,
       meses.malos,
       mejor.mes,
       peor.mes 
       )
M