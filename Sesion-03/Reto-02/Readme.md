 `Desarrollo Mobile` > `Swift Intermedio 2`
	
## Subclase de UIButton.

### OBJETIVO 

- Crear una clase que herede de UIButton.
- Agregar dicha clase al proyecto de Music App.

#### REQUISITOS 

1. Postwork de la sesión-02, se utilizará el proyecto de MusicApp.
2. Xcode 11

#### DESARROLLO

1.- En el proyecto de **Music App**, crear una clase que herede de **UIButton**.

2.- Esta clase se encargará de ser aquella en manejar los estados de **Play**, **Pause**, **Next** y **Previous**.
Cada uno de estos estados de reproducción deberán estar en un **Enum**.

3.- La subclase deberá tener las sig. características:

- Una variable para almacenar el ícono de acuerdo al tipo de botón. Ya sea icono de `Play`, `Pause`, `Next`,...

- Un *property* que indique si la canción está en reproducción.

- Cuando la canción esté en Reproducción, cambiar el **icono** a Pausa y viceversa. 

- Crear un Button **redondo**, sin texto y con fondo transparente o de color.

- Los botones previamente creados deben ser reemplazados con esta clase y su funcionamiento debe ser similar.

<details>
	<summary>Solución</summary>
	<p> Crearemos los estados del button como sigue. Nos apoyaremos de un Enum para indicar lose stados de Play, Pause, Next y Previous.</p>

```
enum PlayerStates {
  case play
  case pause
  case next
  case previous
}
```

<p> Tendremos tres propiedades,dos de iconos y una que indique si esta en reproducción, esta última sirve para el botón de play. </p>

```
  var icon: UIImage?
  var secondIcon: UIImage?
  var isPlaying: Bool = false
  
```

<p> Inicializamos el UIButton, creandole un frame con forma redonda y un color de fondo. </p>

```
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    self.layer.cornerRadius = self.frame.width/2
    self.clipsToBounds = true
    self.backgroundColor = .clear
    self.tintColor = greenSelectedCell
  }
```

<p>Asignamos los botones de selecion al UIButton.</p>

```
func performTwoStateSelection() {
    self.isPlaying = !isPlaying
    print(isPlaying)
    self.setImage(isPlaying ? icon : secondIcon, for: .normal)
    self.setImage(isPlaying ? icon : secondIcon, for: .highlighted)
  }
  
  func setImage(icon: UIImage?) {
    guard let icon = icon else { return }
    self.icon = icon
    self.setImage(icon, for: .normal)
    self.setImage(icon, for: .highlighted)
  }
```

</details> 
