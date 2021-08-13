`Desarrollo Mobile` > `Swift Intermedio 2`

## Primeros pasos en Completions

### OBJETIVO

- Implementar un completion básico

#### REQUISITOS

1. Xcode 11

#### DESARROLLO

Con base al completion mostrado, realizar lo siguiente.

En el ejemplo 02, crear una variable para almacenar un closure y pasarlo como parámetro a la función. Ya teniendo esto, invocar a dicha función.

```
func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
  let result = operation(a, b)
  print(result)
  return result
}

let add = { (a, b)  -> Int in
  return a + b
}
calculate(3, 4, operation: add)
```