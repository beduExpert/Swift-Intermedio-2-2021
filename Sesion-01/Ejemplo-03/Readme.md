`Desarrollo Mobile` > `Swift Intermedio 2`

## Ejemplo 03 - Sesión 01 - Uso de funciones de tipo **_Higher Order Function_**

### OBJETIVO

- Utiliza funciones que tengan ventajas en el uso de collections con **Optionals**.

#### REQUISITOS

1. Xcode 12+
2. Playgrounds

#### DESARROLLO

**PARTE 1:**

Abre un Playground e implementa.

> let numbers: [Int] = [0, 2, 1, 3, 6, 4, 9, 7, 8]
> let ascendingNumbers = numbers.sorted()

Utiliza la función `sorted()`.

Usa la función `sorted(by: )` para ordenar los números en orden descendente.

```
let descendingNumbers = numbers.sorted { (a, b) -> Bool in 
return a > b
}
```


**PARTE 2:**

1.- Crea un nuevo **Playground** y agrega una colección de elementos. 

Estos elementos deben ser de tipo **Optional**.

2.- Con un **For-Loop** imprime el valor de cada uno.

3.- Finalmente utiliza `compactMap()` para obtener los valores.

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

**Nota**: Implementa todas las *VARIANTES* en sintaxis de **compactMap()**.