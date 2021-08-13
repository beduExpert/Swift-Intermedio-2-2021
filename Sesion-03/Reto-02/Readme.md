`Desarrollo Mobile` > `Swift Intermedio 2`
	
## Modelo de canción en Music App

### OBJETIVO 

- Agregar un modelo de canción para poder ser utilizado en el proyecto de Music App.

#### REQUISITOS 

1. Xcode 11
2. Proyecto de Music App de Postwork de la sesión-02 terminado.

#### DESARROLLO

1.- Crear un modelo de **Song** más complejo.

Agregar al modelo:

- Año
- Foto de portada
- Path o Url, así como en el ejemplo-01.
- Género

2.- Crear un Enum de Géneros musicales.

3.- Agregar este modelo a una clase de modelos en el proyecto de **Music App.**

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
