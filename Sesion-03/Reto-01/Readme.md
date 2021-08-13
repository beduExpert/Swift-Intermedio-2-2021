 
`Desarrollo Mobile` > `Swift Intermedio 2`
	
## Music app player

### OBJETIVO 

- Implementar una instancia de Audio Player basandonos en AVFoundarion.
- Integrar el ejemplo-01 para manejar el caso de que exista o no un archivo de audio.
- Utilizar guard para evitar crahes.

#### REQUISITOS 

1. Xcode 11
2. Ejemplo-01
3. Playgrounds

#### DESARROLLO

1.- Con base en el código del **Ejemplo-01**, implementar una función utilizando **AVFoundation**.

2.- Configurar el proyecto de **Music App** para que pueda usar las clases de :

- AVAudioPlayer
- AVAudioSession

El módulo a crear deberá:

3.- Indicar si es posible reproducir la canción.

4.- De ser posible, crear un objeto de tipo **AVAudioPlayer**.

5.- Ya teniendo una instancia de esa clase, crear una sesión con: **AVAudioSession**.

6.- Crear una variable utilizando el singleton o `sharedInstance()` de dicha clase para crear una sesión para poder reproducir audio.

`AudioSession` deberá ser configurado como Playback.

**Consideraciones:**

AVAudioPlayer puede arrojar un *Exception*, quizás debas manejarlo con alguna estructura especializada para ello.

<details>
	<summary>Solución</summary>
	<p> Primero importar el framework de AVFoundation.</p>
	<p> Posteriormente, crear una función que reciba una URL.</p>
	<p> Con un do-catch, intentaremos mediante un try leer dicha URL. Esta URL se pasa como parámetro a la clase AVAudioPlayer.</p>
	<p> Ejecutamos la funcion prepareToPlay(). </p>

	
```
func setupSong(url: URL) {
  do {
    let player = try AVAudioPlayer(contentsOf: url)
    player.prepareToPlay()
    setupAudioSession()
  } catch let error {
    print(error)
  }
}
```

<p> En esta función crearemos una instancia de AVAudioSession, especificamente utilizaremos el Singleton. </p>
<p> Configuraremos esta sesión como playback. </p>

```
func setupAudioSession() {
  let audioSession = AVAudioSession.sharedInstance()
  do {
    try audioSession.setCategory(.playback)
  } catch let error {
    print(error)
  }
}
```	
</details> 
