# Se utiliza la imagen rocker/geospatial:4.4.1 como base
FROM rocker/geospatial:4.4.1

# Definición de la variable de entorno PASSWORD
ENV PASSWORD=arboles

# Instalación del paquete here de R, versión 1.0.1
RUN R -e "devtools::install_version('here', version = '1.0.1', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete DT de R, versión 0.33
RUN R -e "devtools::install_version('DT', version = '0.33', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete plotly de R, versión 4.10.4
RUN R -e "devtools::install_version('plotly', version = '4.10.4', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete leaflet.extras de R, versión 2.0.0
RUN R -e "devtools::install_version('leaflet.extras', version = '2.0.0', repos = 'http://cran.us.r-project.org')"

# Instalación del paquete geodata de R, versión 0.6-2
RUN R -e "devtools::install_version('geodata', version = '0.6-2', repos = 'http://cran.us.r-project.org')"

# Limpieza del cache de apt, para reducir el tamaño de la imagen
RUN apt clean && \
    rm -rf /var/lib/apt/lists/*

# Se expone el puerto por defecto de RStudio Server
EXPOSE 8787
