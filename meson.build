#Nombre del proyecto y lenguaje
project('json_project','c')

#Agregar dependencias
dependencia_cjson = dependency('cJSON', required: true)

#Archvos de codigo fuente
src = ['src/main.c','src/json.c']

#Ejecutable final
executable('main', src, dependencies: dependencia_cjson, install: false)