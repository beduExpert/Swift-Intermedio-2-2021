
`Desarrollo Mobile` > `Swift Intermedio 2`

## App inicial para proyecto final retomada del módulo anterior.

### OBJETIVO 

- En este tercer reto incluiremos lo siguiente:
* Hacer un ejercicio de filtrado utilizando _Higher Order Functions_, dentro de un método en la clase anteriormente creada (_CurrentSong_).

#### REQUISITOS 

1. Xcode 12+

#### DESARROLLO

1.- Abrir nuestra App de música.

2.- Abrir la _class_ llamada _CurrentSong_.

3.- Crear un método en la clase que contenga un _array_ de 10 números aleatorios _(se pueden llenar a mano o utilizar la imaginación)_.
_(Este Método es para practicar y lo quitaremos mas adelante)_.
* Crear _**Higher Order Functions**_ que hagan lo siguiente:
* Imprima solamente los números pares.
* Imprima los números ordenados.
* Imprima los números pares.
* Imprima todos los números multiplicados por 2.
* Jugar libremente con lo aprendido en las HOF.

<details>
        <summary>Solución</summary>
        <p> Abrir el proyecto.</p>
        <p> Abrir el archivo CurrentSong</p>
        <p> Un ejemplo sencillo de los métodos requeridos sería:</p>
        ```

                class CurrentSong {
                    ...

                        func playWithHOF() {
                                let array = [23, 44, 2, 123, 444, 554, 346, 778, 324, 567, 887]
                                //numeros ordenados
                                print(array.sorted())
                                //numeros pares
                                print(array.filter { $0 % 2 == 0 })
                                //multiplicados por 2
                                print(array.map { $0 * 2 })
                                // jugar libremente con las HOF
                                ...
                        }
                }
        ```
</details>