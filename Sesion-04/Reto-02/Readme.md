`Desarrollo Mobile` > `Swift Intermedio 2`

## Multiples closures y funciones de alto orden

### OBJETIVO 

- Reforzar el concepto de closures y acercar al alumno al uso de High order functions a traves del uso de `forEach`.

#### REQUISITOS 

1. Xcode 11
2. Playgrounds

#### DESARROLLO

**Parte 1:
**
1.- Crear múltiples closures y pasarlos como parámetros en la función del ejemplo 2.

2.- Cada closure debe implementar una operación diferente.

**Parte dos:**

1.- Implementa un array.

2.- A la variable del `array`, utiliza la función `forEach`.

3.- Observa que en la ayuda del *autocompletado* tenemos un Closure.

> (Int) -> Void

4.- Abre llaves e implementa dentro un `print()`.

<details>
	<summary>Solución</summary>
	<p> Crearemos una función general, la cuál ejecutará una función pasada como parámetro:</p>
	
```
func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
  let result = operation(a, b)
  print(result)
  return result
}
```

<p> Implementaremos diferentes versiones de este closure: </p>

```
let add = { (a, b)  -> Int in
  return a + b
}

let multiply = { (a, b)  -> Int in
  return a * b
}

let sustract = { (a, b)  -> Int in
  return a - b
}

let divide = { (a, b)  -> Int in
  return a / b
}
```

<p>Finalmente, agregaremos estas variables de closure a la funcion calculate para ejecutarlas.</p> 

```
calculate(3, 4, operation: add)
calculate(4, 4, operation: multiply)
calculate(7, 4, operation: sustract)
calculate(10, 2, operation: divide)
```

<p>Para la parte dos, creamos un array y utlizamos la funcion de alto orden for each de la sig. manera:</p>

```
let numbers = [ 1,2,3,4,5,6,7,8,9]
numbers.forEach { i in
  print(i)
}
```
</details> 
