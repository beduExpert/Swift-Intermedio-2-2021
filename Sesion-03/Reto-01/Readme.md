`Desarrollo Mobile` > `Swift Intermedio 2`
	
## Reto 01 - Sesión 03 - Modelo de canción en Music App

### OBJETIVO 

- Agregar un modelo de canción para poder ser utilizado en el proyecto de Music App.

#### REQUISITOS 

1. Xcode 12+
2. Proyecto de Music App de Postwork de la sesión-02 terminado.

#### DESARROLLO

1.- Vamos a modificar el modelo de **Song** a algo más complejo.

Agregar al modelo:

- Año
- Foto de portada
- Género

2.- Crear un Enum de Géneros musicales.

El código de Music App esta en [esta carpeta](src).

<details>
	<summary>Solución</summary>
	<p> La enumeración de generos musicales seria de la sig. manera. No esta limitada a un número fijo de generos.</p>
	
```
enum MusicGenre {
  case Rock
  case Pop
  case Jazz
  case Classical
  case Electro
  case Reggea
}
```

<p> El modelo de Song incluirá algunas variables de tipo optional, ya que podria o no tener dicha información. </p>

```
struct Song {
  let name: String
  let album: String
  var timesPlayed: Int = 0
  let year: String
  let imageCover: UIImage?
  let path: URL?
  
  mutating func hasBeenPlayed() {
    timesPlayed += 1
  }
}
```
</details> 
