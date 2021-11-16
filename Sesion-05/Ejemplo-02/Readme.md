`Desarrollo Mobile` > `Swift Intermedio 2`

## Ejemplo 02 - Sesión 05 - Extensions.

### OBJETIVO

- Implementar **Extensions** a tipos de datos del sistema operativo, para extender sus capacidades y escribir métodos personalizados.
- Implementar **Extensions** a las propias clases para separar su funcionalidad dependiendo de su implementación y tener un código más limpio.

#### REQUISITOS

1. Xcode 12+.
2. Playgrounds.

#### DESARROLLO

- Crea un playground nuevo.
- Implementa una extensión de **Int**.
- Crea un método de **repeticiónes** que reciba una tarea y que la ejecute el núm. de veces que se le indique (dentro de un ciclo _for_).
```
extension Int { // declaras la extension
  func repetitions(task: () -> Void) { // declaras el método personalizado, llamado _repetitions_
    for _ in 0..<self { // ejecutas la tarea el núm. de veces indicado
      task()            // la tarea.
    }
  }
}
```
- Indica un núm _N_ de repeticiones para imprimir un texto.
```
5.repetitions { // llamamos al método personalizado que extiende de _Int_, llamado _repetitions_.
  print("hola!") // ejecutamos el núm. de veces esta tarea.
}
```
- El resultado en la consola deberá de ser:
```
hola!
hola!
hola!
hola!
hola!
```
