`Desarrollo Mobile` > `Swift Intermedio 2`
	
## Reto closures

### OBJETIVO 

- Aprender a implementar closures con Implicit Returns y como Shorthand Arguments.


#### REQUISITOS 

1. Xcode 11
2. Playgrounds.

#### DESARROLLO

Agrega las instrucciones generales del ejemplo o reto

<details>
	<summary>Solución</summary>
	<p> 1.- Declaramos una variable en dond el tipo de dato será:</p>
	
```
() -> String
```
<p> Dando como resultado: </p>

```
let myName: () -> String = { () in
  return "Richie"
}
```

<p> 2.- Creamos un closure donde el tipo de dato tendra dos parametros de tipo Int y una variable de retorno de tipo Int también.</p>
<p> Recordamos que no usaremos Return y usaremos una estructura de tipo Short Hand.</p>

```
var multiplyClosure: (Int, Int) -> Int = {
  $0 * $1
}
multiplyClosure(3, 5)
```

<p> 3.- Crearemos un capture list, cada elemento de la lista es un closure.</p>

```
var captureList = [()->()]()

for value in 0...10 {
  captureList.append { [value] in
    print("Value is \(value)")
  }
}

captureList[10]()
```

</details> 


