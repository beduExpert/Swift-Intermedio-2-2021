 `Desarrollo Mobile` > `Swift Intermedio 2`
	
## UIButton Extensions

### OBJETIVO 

- Migrar la funcionalidad de un UIButton a un extension.

#### REQUISITOS 

1. Ultimo codigo desarrolado en la Sesión-03 de MusicApp.
2. Xcode 11

#### DESARROLLO

En la Sesión-03 se creó una **Subclase** de *UIButton*. Migrarla a un Extension.

1.- En el proyecto de Music App crear un archivo de Swift para **Extensions**.

2.- Agregar extensiones de *UIButton* para los botones de reproducción.

3.- También uno para *UIImageView* que permita mostrar la portada de disco de manera redonda.

**Nice to have:** Agregar un pequeño círculo en el centro para darle forma de CD. a la portada. 

<details>
	<summary>Solución</summary>
	<p> Crear un archivo Extensions en el proyecto de Music App.</p>
	<p>La clase de PlayerButton mantendra solo los properties</p>
	<p>Crearemos un extension en esta clase</p>
```
class PlayerButton: UIButton {
  var icon: UIImage?
  var secondIcon: UIImage?
  var isPlaying: Bool = false
}
```
<p>Luego creamos un extension sobre UIButton.</p>

```

extension UIButton {
  override open var isHighlighted: Bool {
    get {
      return super.isHighlighted
    }
    set {
      if newValue {
        backgroundColor = greenSelectedCell
      }
      else {
        backgroundColor = .black
      }
      super.isHighlighted = newValue
    }
  }
}
```

</details> 


