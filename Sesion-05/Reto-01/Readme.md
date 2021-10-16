`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 01 - Sesión 05 -	Closures

### OBJETIVO 

- Reforzar el uso de **Closures**.

#### REQUISITOS 

1. Xcode 12+.
2. Playgrounds.

#### DESARROLLO

1. Crea un Playground nuevo.
2. Crea un Closure que multiplique un número cualquiera * 2.

<details>
	<summary>Solución</summary>
	<p> Se escribe esta variable dentro del playground </p>

```
let integerMultiplier = {
  $0 * 2
}

let number = integerMultiplier(10)
print(number) // imprime 20
```
