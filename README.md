# lab05
laboratorio 5 plataformas abiertas

Este proyecto genera un archivo JSON utilizando la biblioteca `cJSON`.

## Requisitos

- `gcc`
- `libcjson`
- `make`, `cmake` o `meson` + `ninja`

## Instalacion de `cJSON`

Para intalar la biblioteca en distribuciones (Debian/Ubuntu) se pueden seguir 2 formas:

1. Utilizando el gestor de paquetes escribiendo `sudo apt install libcjson-dev` en la terminal.

2. Instalarla de forma manual clonando el repositorio oficial con `git clone https://github.com/DaveGamble/cJSON.git`  
Construir e instalar con `CMake`  

        cd cJSON
        cmake.
        make
        sudo make install

## Compilacion
Posicionandose en el directorio raiz del proyecto se deben ingresar los siguientes comandos:

### Con make

`make`

### Con CMake
`cmake -B build`  
`cmake --build build`  
`./build/main`
### Con Meson
`meson setup build`  
`ninja -C build`  
`./build/main`
