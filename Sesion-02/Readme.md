`Desarrollo Mobile` > `Swift Intermedio 2`

## Sesión 02 - Consumo de servicios REST con URLSession.

### OBJETIVOS

- Implementa un APIManager.
- Utiliza URLSession dentro del APIManager.
- Detecta la conectividad a internet.
- Protocolo Codable.
- Uso de Coding Keys.

#### ORGANIZACIÓN DE LA CLASE 

- Implementa un APIManager.
* En tu app del proyecto, crea un nuevo grupo llamado _**Utils**_
* Dentro de _**Utils**_ crea un nuevo _Swift File_ y nombralo _**APIManager**_
* Haz APIManager tipo _Singleton_

	- [Ejemplo 01](Ejemplo-01)
	- [Reto 01](Reto-01)

- Implementa URLSession dentro del APIManager.
* Dentro la clase anterior, crea un método llamalo _getSongs_ dentro del cual implementaras URLSession

	- [Reto 02](Reto-02)

- Detecta la conectividad a internet.
* Dentro del APIManager, crea un nuevo método que te permitirá determinar si hay conexión a Internet.

	- [Reto 03](Reto-03)

- Protocolo Codable.
* A la clase _**Song**_ haz que conforme al protocolo _Codable_.

	- [Reto 04](Reto-04)

- Uso de Coding Keys.
* Implementa el uso de _**Coding keys**_ en la clase _**Song**_ para cambiar un parámetro por uno que se adapte mejor a las mejores prácticas.

	- [Reto 05](Reto-05)

### PostWork
[PostWork](Postwork)