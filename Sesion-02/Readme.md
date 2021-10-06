`Desarrollo Mobile` > `Swift Intermedio 2`

## Consumo de servicios REST con URLSession.

### OBJETIVOS 

- Implementar un APIManager.
- Utilizar URLSession dentro del APIManager.
- Detectar conectividad a internet.
- Protocolo Codable.
- Uso de Coding Keys.

#### ORGANIZACION DE LA CLASE 

- Implementar un APIManager.
* En nuestra app del proyecto, crear un nuevo grupo llamado _**Utils**_
* Dentro de _**Utils**_ crear un nuevo _Swift File_ llamado _**APIManager**_
* Hacer APIManager tipo _Singleton_

	- [Ejemplo 01](Ejemplo-01)
	- [Reto 01](Reto-01)

- Implementar URLSession dentro del APIManager.
* Dentro de nuestra clase, crearemos un método llamado _getSongs_ dentro del cual implementaremos URLSession

	- [Reto 02](Reto-02)

- Detectar conectividad a internet.
* Dentro de nuestro APIManager, crearemos un nuevo método que nos permitirá determinar si hay conexión a Internet.

	- [Reto 03](Reto-03)

- Protocolo Codable.
* A nuestra clase _**Song**_ la haremos que conforme al protocolo _Codable_.

	- [Reto 04](Reto-04)

- Uso de Coding Keys.
* Implementaremos el uso de _**Coding keys**_ en nuestra clase _**Song**_ para cambiar un parámetro por uno que se adapte mejor a las mejores prácticas.

	- [Reto 05](Reto-05)