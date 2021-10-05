
`Desarrollo Mobile` > `Swift Intermedio 2`

## App inicial para proyecto final retomada del módulo anterior.

### OBJETIVO 

- En este segundo reto incluiremos lo siguiente:
* Comenzar a organizar de una mejor manera la estructura de nuestro proyecto.
* Creación de una clase que contendrá propiedades que pueden ser observadas y posteriormente reflejadas en la UI (_Property Observers_).

#### REQUISITOS 

1. Xcode 12+

#### DESARROLLO

1.- Abrir nuestra App de música.

2.- Crear una _class_ llamada _CurrentSong_ dentro de un grupo llamado _Views_ en la raíz del proyecto.

3.- Las propiedades que contendrá la _class_ son las siguientes:
* **name** de tipo _String_.
* **duration** de tipo _Double_.
* **timePlayed** de tipo _Double_ y aquí definir que es una _**Property Observer**_. Crear su método en el _**didSet**_ e imprimir el valor anterior.

<details>
        <summary>Solución</summary>
        <p> Abrir el proyecto.</p>
        <p> Crear un Grupo llamado Views</p>
        <p> Crear un archivo tipo Swift File llamado CurrentSong</p>
        <p> Agregar las propiedades enlistadas</p>
        <p> En la variable timePlayed, asignarle la propiedad didSet, quedará de la sig. manera:</p>
        ```
                import Foundation

                class CurrentSong {
                    var name: String
                    var duration: Double
                    var timePlayed: Double {
                        didSet {
                            print(oldValue)
                        }
                    }
                }
        ```
</details>