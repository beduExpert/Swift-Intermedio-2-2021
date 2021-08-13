`Desarrollo Mobile` > `Swift Intermedio 2`

## Associated Types

### OBJETIVO

- Implementar Enums utilizando Associated Types.

#### REQUISITOS

1. Xcode 11
2. Playgrounds

#### DESARROLLO

1.- En un Playground, implementar un **Enum** con `Associated Type`.

2.- Este Enum deberá tener el caso de **success** y **error**.

3.- Por medio de un URL Path asignar el nombre de una canción, si existe, entonces entra al caso de success y si no, entrará al caso de error.

```
enum Playable {
	case success(_ path: String)
	case error(message: String)
}
```

Nos apoyaremos de una función.
El código final es:

```

enum Playable {
  case success(_ path: String)
  case error(message: String)
}

func loadSong() {
  let file = Bundle.main.path(forResource: "song", ofType: "mp3")
  let path = isPlayable(file)
  if case .success = path {
    print("puede reproducirse")
  }
  if case .error(let msg) = path {
    print(msg)
  }
}

func isPlayable(_ path: String?) -> Playable {
  guard let path = path else { return .error(message: "not playable")}
  return .success(path)
}
```