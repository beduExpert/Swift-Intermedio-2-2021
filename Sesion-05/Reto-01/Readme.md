 
`Desarrollo Mobile` > `Swift Intermedio 2`

	
## Protocol

### OBJETIVO 

- Reforzar el concepto de Protocolos.

#### REQUISITOS 

1. Xcode 11
2. Playgrounds

#### DESARROLLO

De acuerdo al sig. protocolo, definir una estructura que lo conforme y además crear un objeto que implemente cada una de las funciones del protocolo.

```
protocol Actions {
  func songInfo() -> String
  func play()
  func stop()
  func nextSong()
  func previousSong()
  func playList(_ list: String...)
  static func loadSong()
}
```

<details>
	<summary>Solución</summary>
	<p> Creamos una estructura que conforme al protocolo Actions, Xcode automáticamente solicitará implementar los métodos previamente definidos.</p>

```
struct Media: Actions {
  func songInfo() -> String {
    return "song name"
  }
  
  func play() {
    print(" play song")
  }
  
  func stop() {
    print(" stop song")
  }
  
  func nextSong() {
    print(" next song")
  }
  
  func previousSong() {
    print(" prev song")
  }
  
  func playList(_ list: String...) {
    for song in list {
      print(" now playing \(song)")
    }
  }
  
  static func loadSong() {
    print(#function)
  }
}
```

<p>En el caso de una función con varadic parameters, utilizar un For-Loop.</p>

```
  func playList(_ list: String...) {
    for song in list {
      print(" now playing \(song)")
    }
  }
```
</details> 

