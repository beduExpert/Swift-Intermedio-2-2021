`Desarrollo Mobile` > `Swift Intermedio 2`

	
## Reto 

### OBJETIVO 

- Resolver los pequeños problemas implementando funciones de High Order.

#### REQUISITOS 

1. Xcode 11
2. Playgrounds 

#### DESARROLLO

1.- Dado el siguiente **Array** de elementos. Implementar las dos funciones:

- map
- compactMap

2.- Con map obtener los valores Enteros.
Con **compactMap** obtener los valores enteros pero con **unwrap**.

3.- En el Diccionario, obtener los valores únicamente.
Y crear un solo array.

Las funciones implementarlas a:

```
let numbers = 
["1", "2", "tres", "cuatro", "5", "6", "7", "8", "diez"]


let dictionary = 
["Key1": [0, 5, 8], "Key2": [2, 5, 8]]
```

<details>
	<summary>Solución</summary>
	<p> Tenemos el sig. array de elementos, aplicaremos un mapeo para obtener números enteros:</p>
	
```
let numbers = ["1", "2", "tres", "cuatro", "5", "6", "7", "8", "diez"]

let mapped: [Int?] = numbers.map { str in Int(str) }
print(mapped)
```
<p> Con compactMap() limpiaremos las variables Opcionales y solo tendremos los números:</p>

```
let compactMapped: [Int] = numbers.compactMap { str in Int(str) }
print(compactMapped)
```
<p> Del diccionario obtendremos solo los valores con:</p>

```
let dictionary = ["Key1": [0, 5, 7], "Key2": [2, 5, 9]]
let dictMap = dictionary.map { $0.value }
print(dictMap)
```

<p>Y convertiremos los valores a un array:</p>

```
let flatMapped = dictionary.flatMap { $0.value }
print(flatMapped)
```

</details> 

