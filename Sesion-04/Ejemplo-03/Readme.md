`Desarrollo Mobile` > `Swift Intermedio 2`


## Primeros pasos creando Extensions

### OBJETIVO

- Crear un extensión de String y de UIButton. 

#### REQUISITOS

1. Xcode 11

#### DESARROLLO

1.- Crear un archivo de swift para Extensions.

2.- Comenzaremos creando un extension para modificar un String.

3.- El String ingresado deberá cambiar su primera letra a mayúscula

4.- Crear un extension de UIButton, comenzamos escribiendola con la palabra reservada `extension` seguido el nombre de la clase o estructura de datos.

5.- Implementamos el codigo.

En este caso se desarrolló en un Playground.

```
import UIKit

extension String {
  private func capitalize() -> String {
    let firstLetter = String(self.prefix(1)).capitalized
    let restOfString = String(self.dropFirst())
    return firstLetter + restOfString
  }
  
  mutating func capitalizeFirstLetter() {
    self = self.capitalize()
  }
}

//Use of Extension
var bedu = "bedu school"
bedu.capitalizeFirstLetter()
print(bedu)


// UIButton
extension UIButton {
  func circled() {
    self.frame = CGRect(x: self.center.x,
                         y: self.center.y,
                         width: self.frame.width/2,
                         height: self.frame.height/2)
    self.setTitle("", for: .normal)
    self.backgroundColor = .clear
  }
}
```