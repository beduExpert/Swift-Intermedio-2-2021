`Desarrollo Mobile` > `Swift Intermedio 2`

## Uso de funciones de tipo High Order

### OBJETIVO

- A utilizar funciones que tienen ventaja en el uso de collections con **Optionals**.

#### REQUISITOS

1. Xcode
2. Playgrounds

#### DESARROLLO

**PARTE 1:**

Abrir un Playground e implementar.

> let numbers: [Int] = [0, 2, 1, 3, 6, 4, 9, 7, 8]
> let ascendingNumbers = numbers.sorted()

Utilizar la función `sorted()`.

Usar la funión `sorted(by: )` para ordenar los numeros en orden descendente.

```
let descendingNumbers = numbers.sorted { (a, b) -> Bool in 
retun a > b
}
```


**PARTE 2:**


1.- Crear un nuevo **Playground** y agregar una colección de elementos. 

Estos elementos deben ser de tipo **Optional**.

2.- Con un **For-Loop** imprimir el valor de cada uno.

3.- Finalmente utilizar `compactMap()` para obtener los valores.

```
let values: [String?] = [nil, nil, nil, "B","E","D","U"]
for v in values {
  print(v)
}

print("\nFor Each")
//Second form
values.forEach {
  print($0)
}

print("\nCompact")
let compacted = values.compactMap { $0 }
compacted.forEach {
  print($0)
}
```

**Nota**: Implmentar todas la *VARIANTES* en sintaxis de **compactMap()**.
