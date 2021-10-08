
`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 02 - Sesión 01 - App inicial para proyecto final retomada del módulo anterior.

### OBJETIVO 

- En este segundo reto incluirás lo siguiente:
* Comienza a organizar de una mejor manera la estructura del proyecto.
* Crea una clase que contendrá propiedades que pueden ser observadas y posteriormente reflejadas en la UI (_Property Observers_).

#### REQUISITOS 

1. Xcode 12+

#### DESARROLLO

1.- Abre la App de música.

2.- Crea una _class_ llamada _CurrentSong_ dentro de un grupo llamado _Views_ en la raíz del proyecto.

3.- Las propiedades que contendrá la _class_ son las siguientes:
* **name** de tipo _String_.
* **duration** de tipo _Double_.
* **timePlayed** de tipo _Double_ y aquí define que es una _**Property Observer**_. Crea su método en el _**didSet**_ e imprime el valor anterior.

<details>
        <summary>Solución</summary>
        <p> Abre el proyecto.</p>
        <p> Crea un Grupo llamado Views</p>
        <p> Crea un archivo tipo Swift File llamado CurrentSong</p>
        <p> Agrega las propiedades enlistadas</p>
        <p> En la variable timePlayed, asignale la propiedad didSet, quedará de la sig. manera:</p>
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