cmake_minimum_required(VERSION 3.10)

#Nombre del proyecto
project(Lab_5)

#Ejecutable con la lista de archivos a compilar
add_executable(main src/main.c src/json.c)

#Agregar librerias
find_library(CJSON_LIB cjson REQUIRED)
target_link_libraries(main ${CJSON_LIB})