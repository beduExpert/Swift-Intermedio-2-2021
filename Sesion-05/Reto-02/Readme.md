`Desarrollo Mobile` > `Swift Intermedio 2`
	
## Reto 02 - Sesión 05 -	Extensions

### OBJETIVO 

-  Reforzar el uso de **Extensions** para tipos nativos.

#### REQUISITOS 

1. XCode 12+.
2. Playgrounds.

#### DESARROLLO

## Parte 1

1. Crea un Playground nuevo.
2. Crea una **Extensión** básada en un **UIButton**.
3. Harás un método mediante el cual cuando se implemente, los botones tengan:
* Un borde redondeado de 8.0.
* El borde de color azul.
* El borde de 1.0 de grosor.

<details>
	<summary>Solución</summary>
	<p> Extensión de UIButton </p>

```
extension UIButton {
    func bordered() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.cornerRadius = 8.0
    }
}
```
</details>


## Parte 2

1. Implementa tu nueva propiedad al _Botón_ **Login** de la vista de **LoginViewController**

<details>
	<summary>Solución</summary>
	<p> 1. Crear el IBOutlet en la clase LoginViewController.swift </p>
	<p> * @IBOutlet private weak var btnLogin: UIButton! </p>
	<p> 2. Hacer la conexión en LoginView.xib </p>
	<p> 3. En la clase LoginViewController, en el método <i>viewDidLoad</i> implementar la nueva propiedad </p>

```
viewDidLoad() {
	...
	btnLogin.bordered()
}
```
 <p> el resultado debe de ser el siguiente: </p>

![](0.png)

</details>