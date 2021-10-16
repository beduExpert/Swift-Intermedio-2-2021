`Desarrollo Mobile` > `Swift Intermedio 2`

## Ejemplo 01 - Sesión 05 - Closures.

### OBJETIVO

- Implementar **Closures** en métodos para realizar acciones obteniendo un tipo de dato de regreso.

#### REQUISITOS

1. Xcode 12+
2. Proyecto de música del curso.

#### DESARROLLO

1.- Revisión del **Closure** tipo _@scaping_ del **APIManager** de tu proyecto de música:
* Abre el proyecto de _MusicaApp_.
* Abre el APIManager.
* Ahora entiendes el bloque de código que regresa un listado de caciones, en el método **getMusic**.

![](0.png)

* El metodo recibe un **Closure** como parámetro y regresa un par de valores, que puede ser un arreglo de un modelo o un error, los dos son opcionales.
````
if(error != nil){
    completion(nil, error!) // como el tipo de valor que regresa el closure es opcional, por eso aqui se regresa primero nil y luego el error.
} else{
    if let data = data {
        let result = try? JSONDecoder().decode([Song].self, from: data)
        completion(result, nil) // al igual que aquí, se regresa el resultado (que es el arreglo de modelos) y luego nil.
    }
}
````
