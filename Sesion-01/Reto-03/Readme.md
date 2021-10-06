
`Desarrollo Mobile` > `Swift Intermedio 2`

## App inicial para proyecto final retomada del módulo anterior.

### OBJETIVO 

- En este tercer reto incluiremos lo siguiente:
* Hacer un ejercicio de filtrado utilizando _Higher Order Functions_, creando un playground nuevo.

#### REQUISITOS 

1. Xcode 12+

#### DESARROLLO

1.- Crear un nuevo playground que contenga un _array_ de 10 números aleatorios _(se pueden llenar a mano o utilizar la imaginación)_.
* Crear _**Higher Order Functions**_ que hagan lo siguiente:
* Imprima solamente los números pares.
* Imprima los números ordenados.
* Imprima los números pares.
* Imprima todos los números multiplicados por 2.
* Jugar libremente con lo aprendido en las HOF.

<details>
        <summary>Solución</summary>
        <p> Crear un nuevo playground</p>
        <p> Basarnos en el playground incluido en este reto: HOF.playground</p>
        <p> Un ejemplo sencillo de los métodos requeridos sería:</p>
   
                let array = [23, 44, 2, 123, 444, 554, 346, 778, 324, 567, 887]
                //numeros ordenados
                print(array.sorted())
                //numeros pares
                print(array.filter { $0 % 2 == 0 })
                //multiplicados por 2
                print(array.map { $0 * 2 })
                // jugar libremente con las HOF
```
</details>