 `Desarrollo Mobile` > `Swift Intermedio 2`

	
## Dependencia de Operations 

### OBJETIVO 

- Crear dos subclases de Operation y hacer una dependencia.

#### REQUISITOS 

1. Xcode 11
2. Playgournds

#### DESARROLLO

1.- Creamos dos subclases de `Operation`.

2.- Reescribimos el `main()` con override y agregamos el código deseado, puede ser un print().

3.- Cramos una instancia de cada clase creada.

4.- Creamos un completion block de cada operation, este se ejecutará al finalizar la ejecución del operation en cuestión.

5.- Creamos la dependencia.

6.- Agregamos los Operations a un `Queue` y ejecutamos.

<details>
	<summary>Solución</summary>
	<p> Creamos dos subclases de Operation </p>
	
```
import UIKit

class Operation1: Operation {
    override func main() {
        print("operation 1")
    }
}

class Operation2: Operation {
    override func main() {
        print("operation 2")
    }
}

```

<p> Creamos dos instancias de Operation </p>

```
let op1 = Operation1()
let op2 = Operation2()
```

<p>A cada operation le agregamos un completion Block. </p>

```
op1.completionBlock = {
    print("ooperation 1 terminado")
}

op2.completionBlock = {
    print("operation 2 terminado")
}
```

<p> Agregamos su dependencia: </p>

```
// Agregamos la dependencia
op2.addDependency(op1)
```

<p> Las asignamos a un Queue </p>

```
let opsQue = OperationQueue()
//opsQue.maxConcurrentOperationCount = 1
opsQue.addOperation(op1)
opsQue.waitUntilAllOperationsAreFinished()
opsQue.addOperation(op2)
```

</details> 
