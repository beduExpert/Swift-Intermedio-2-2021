
`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 03 - Sesión 01 - App inicial para proyecto final retomada del módulo anterior.

### OBJETIVO 

- En este segundo reto incluirás lo siguiente:
* Haz un ejercicio de filtrado utilizando _Higher Order Functions_, crea un playground nuevo.

#### REQUISITOS 

1. Xcode 12+

#### DESARROLLO

1.- Crea un nuevo playground que contenga un _array_ de 10 números aleatorios _(los puedes llenar a mano o utilizar la imaginación)_.
* Crea _**Higher Order Functions**_ que hagan lo siguiente:
* Imprima solamente los números pares.
* Imprima los números ordenados.
* Imprima los números pares.
* Imprima todos los números multiplicados por 2.
* Juega libremente con lo aprendido en las HOF.

<details>
        <summary>Solución</summary>
        <p> Crea un nuevo playground</p>
        <p> Basate en el playground incluido en este reto: HOF.playground</p>
        <p> Un ejemplo sencillo de los métodos requeridos sería:</p>
   
                let array = [23, 44, 2, 123, 444, 554, 346, 778, 324, 567, 887]
                //números ordenados
                print(array.sorted())
                //números pares
                print(array.filter { $0 % 2 == 0 })
                //multiplicados por 2
                print(array.map { $0 * 2 })
                // juega libremente con las HOF

</details>