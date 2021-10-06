`Desarrollo Mobile` > `Swift Intermedio 2`

## Detectar conectividad a internet.

### OBJETIVO 

- Implementar un método que nos detecte si tenemos conectividad a internet, esto para evitar hacer alguna llamada al backend, sin tener conexión y caer en un error.

#### REQUISITOS 

- El proyecto Anterior
- Xcode 12+

#### DESARROLLO

En nuestro proyecto, en la clase _**APIManager**_ crear un nuevo método que utilice frameworks del propio sistema operativo para la detección de conectividad hacia internet.
- El método se llamará _**checkConnectivity**_ y retornará un valor _Bool_ que nos indicará si tenemos conexión.

[Solución](Utils/APIManager.swift)

### Los retos 1, 2 y 3 deberán quedar implementados todos juntos en nuestra clase _**APIManager**_