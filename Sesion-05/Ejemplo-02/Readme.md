`Desarrollo Mobile` > `Swift Intermedio 2`

## Enums y Protocols

### OBJETIVO

- Aprender a conformar protocolos con enums.

#### REQUISITOS

1. Xcode 11
2. Playgrounds.

#### DESARROLLO

Definimos un protocolo con una función utilizando mutating.

```
protocol Playable {
  mutating func play()
}
```

Implementar el protocolo `Playable`.

Crear un `Enum` que cambie el estado de play a stop y viceversa.

Esto dentro de la función `play()`.

```
enum Song: Playable {
  case play, stop
  mutating func play() {
    switch self {
    case .play:
      print("is playing")
      self = .stop
    default:
      print("is stopped")
      self = .play
    }
  }
}
```

Creamos una instancia y probamos el funcionamiento.

```
// Instancia
var sss = Song.play
sss.play()
```


