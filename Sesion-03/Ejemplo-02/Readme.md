
`Desarrollo Mobile` > `Swift Intermedio 2`

## Modelo de canción

### OBJETIVO

- Crear una Estructura para una Canción.


#### REQUISITOS

1. Xcode 11
2. Playgrounds

#### DESARROLLO

1.- Crear una estructura con los datos de una canción.

2.- Con mutating estableceremos cuantas veces se ha reproducido. Iremos actualizando la variable `timesPlayed`.

```
// Sesion-03, Ejemplo-02
import AVFoundation

struct Song {
  let name: String
  let album: String
  var timesPlayed: Int = 0
  
  mutating func hasBeenPlayed() {
    timesPlayed += 1
  }
}

var song: Song = Song(name: "Song name",
                      album: "Rock band")
song.hasBeenPlayed()
print(song.timesPlayed)
```

