`Desarrollo Mobile` > `Swift Intermedio 2`


## Multipes Operations

### OBJETIVO

-  Crear un simple operation que ejecute un print. Luego, crear una serie de operations.


#### REQUISITOS

1. Xcode 11

#### DESARROLLO

1.- Crearemos un simple operation que ejecute un print.
2.- Implementar en un Playground.

```
// Operation via block
let operation = BlockOperation {
  print("some process")
}

// Function that handles operation to start
func operationQueue() {
  operation.start()
}

//Execute
operationQueue()
```

3.- La serie de Operations a crear consiste en dividir un String en substrings, se utilizará un execution block para imprimir cada substring.

```
func operationStrQueue() {
  let str = "Hello world swift"
  let operation = BlockOperation()

  for string in str.split(separator: " ") {
    operation.addExecutionBlock {
      print(string)
    }
  }
  operation.start()
}

operationStrQueue()
```