# 1 y 2. Crear 5 vectores con información de 10 estudiantes
estudiantes <- data.frame(
  edad = c(sample(19:40, 10, replace = TRUE)),
  horas = c(sample(4:15, 10,replace = TRUE)),
  ingresos = c(5000000, sample(500000:1000000, 9, replace = TRUE)),
  sexo = c(sample(c('Masculino', 'Femenino'), 10, replace = TRUE)),
  carrera = c(sample(c('Ciencia de Datos', 'Ingeniería', 'Abogacía', 'Medicina', 'Psicología'), 10, replace = TRUE))
)
estudiantes

# 3. Realice un análisis descriptivo de dos variables cuantitativas del data frame:
# edad
edad_prom <- mean(estudiantes$edad)
edad_prom
edad_med <- median(estudiantes$edad)
edad_med
# ingresos
ingresos_prom <- mean(estudiantes$ingresos)
ingresos_prom
ingresos_med <-median(estudiantes$ingresos)
ingresos_med

# 4. Elabore un gráfico de torta para la variable carrera.
tabla_carrera <- table(estudiantes$carrera)
pie(tabla_carrera)

pie(tabla_carrera,
    main   = "Distribución por Carrera",   # título
    col    = c("steelblue", "tomato", 
               "gold", "mediumseagreen"),   # colores
    labels = paste(names(tabla_carrera),    # etiquetas con porcentaje
                   "\n",
                   round(prop.table(tabla_carrera) * 100, 1), "%")
)
options(scipen = 999)
boxplot(estudiantes$ingresos,
        main = "Gráfico de caja de ingresos",
        ylab = "Sueldo",
        col  = "lightblue")

