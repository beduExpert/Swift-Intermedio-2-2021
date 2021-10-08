`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 03 - Sesión 02 - Detecta la conectividad a internet.

### OBJETIVO 

- Implementa un método que detecte si hay conectividad a internet, esto para evitar que hagas alguna llamada al backend, sin que tengas conexión y la app caiga en un error.

#### REQUISITOS 

- El proyecto Anterior final de la sesión 01
- Xcode 12+

#### DESARROLLO

En tu proyecto, dentro de la clase _**APIManager**_ crea un nuevo método que utilice frameworks del propio sistema operativo para la detección de conectividad a internet.
- El método se llamará _**checkConnectivity**_ y retornará un valor _Bool_ que te indicará si hay conexión.

[Solución](Utils/APIManager.swift)

### Los retos 01, 02 y 03 deberán quedar implementados todos juntos en la clase _**APIManager**_