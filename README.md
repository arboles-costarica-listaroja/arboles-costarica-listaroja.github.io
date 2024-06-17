# Especies de árboles de Costa Rica en la Lista Roja de la UICN

## Manejo del contenedor Docker

### Generación de la imagen a partir del archivo Dockerfile
```shell
# Generación de la imagen Docker a partir del archivo Dockerfile
docker build -t arboles-costarica-listaroja-r-433 .
```

### Ejecución del contenedor
```shell
# Ejecución del contenedor Docker
# (el directorio local debe especificarse en la opción -v)
# (el archivo con variables de ambiente debe especificarse en la opción --env-file)
docker run -d --name arboles-costarica-listaroja-r-433 \
  -p 8787:8787 \
  -v /home/mfvargas/arboles-costarica-listaroja/github:/home/rstudio \
  --env-file /home/mfvargas/arboles-costarica-listaroja-r-433.env \
  arboles-costarica-listaroja-r-433
```
  
### Acceso al contenedor (username=rstudio, password=biodatacr)
[http://localhost:8787](http://localhost:8787)

### Detención, inicio y borrado del contenedor
```shell
# Detención del contenedor Docker
docker stop arboles-costarica-listaroja-r-433

# Inicio del contenedor Docker
docker start arboles-costarica-listaroja-r-433

# Borrado del contenedor Docker
docker rm arboles-costarica-listaroja-r-433
```

### Ejemplo de contenido del archivo `arboles-costarica-listaroja-r-433.env`
(deben asignarse valores adecuados a las variables)
```shell
# Clave para ingresar a RStudio
PASSWORD=arboles
```
