# Servicios de Videoclub

[![Build Status](https://travis-ci.org/uqbar-project/eg-videoclub-xtrest.svg?branch=master)](https://travis-ci.org/uqbar-project/eg-videoclub-xtrest)

<img src="https://cloud.githubusercontent.com/assets/4549002/17750306/2905c3ba-6498-11e6-9593-5676ae43fc51.png" height="150" width="250"/>

Servicios REST que realizan una búsqueda por título de una serie de películas.

## Modo de uso

### Cómo levantar

#### Opción A: Desde Eclipse

1. Importar este proyecto en Eclipse como **Maven project**.
2. Ejecutar `org.uqbar.peliculas.PeliculasController`, que levanta el servidor en el puerto 8080 (no debe haber otro servidor corriendo previamente o aparecerá el mensaje de error `Address already in use: JVM_Bind`).

#### Opción B: Desde línea de comandos

1. Generar jar con dependencias: 

```bash
mvn clean compile assembly:single
```

2. Ejecutar el jar generador: 

 ```
 java -jar target/videoclub-xtrest-0.0.1-SNAPSHOT-jar-with-dependencies.jar
 ```

Esta opción requiere menos recursos de sistema porque no es necesario ejecutar Eclipse.

### Cómo probar

Ej: http://localhost:8080/videoclub-ui-grails-homes-xtend/peliculas/Vo
