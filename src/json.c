#include "json.h"
#include <cjson/cJSON.h>
#include <stdio.h>
#include <stdlib.h>

void generar_json(const char *nombre_archivo){
    //Crear el objeto cJSON
    cJSON *json = cJSON_CreateObject();
    cJSON_AddStringToObject(json, "nombre", "Hector Bonifacio Echevarria Cervantes de la Cruz Arroyo Rojas");
    cJSON_AddNumberToObject(json, "edad", 19);
    cJSON_AddStringToObject(json, "carnet", "C12345");
    cJSON_AddBoolToObject(json, "estudiante activo", cJSON_True);

    //Convertir de objeto cJSON a JSON string
    char *json_str = cJSON_Print(json);

    //Escribir el JSON string a un documento
    FILE *archivo = fopen(nombre_archivo, "w");
    if(archivo == NULL){
        printf("Error: No se pudo abrir el archivo.\n");
        return;
    }

    printf("%s\n", json_str);
    fputs(json_str, archivo);
    fclose(archivo);

    //Liberar memoria
    cJSON_free(json_str);
    cJSON_Delete(json);
}