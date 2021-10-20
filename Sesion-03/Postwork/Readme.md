`Desarrollo Mobile` > `Swift Intermedio 2`

## Postwork - Sesión 03 - Nuevo feature para subclase de UIButton y mejora en la clase **Song**

### OBJETIVO

- Reorganiza la clase **Song** e implementa el enum de MusicGenre.
- Crea una extensión de **UIButton** e implementa lo que se describe en el desarrollo.

#### REQUISITOS

1. Lo necesario para desarrollar el ejemplo está en los retos de esta sesión, básate en ellos para preparar tu entregable.

#### DESARROLLO

* Utiliza los  retos de está sección para implementar correctamente los cambios que se te piden a la clase Song.
Se proporciona un código de ayuda, ver clase [HighlightButton](HighlightButton.swift).

* De la clase de UIButton creada, implementa una funcionalidad de Highlight. Es decir, al presionar un botón se debe mostrar un color distinto, este color deberá coincidir con el utilizado en las celdas de la vista principal. Como el botón es redondo, debería aparecer el highlight redondo.
 
* Implementa lo siguiente:
Un enum llamado PlayerStates con los casos de play, pause, next y previous.
Las propiedades de icon, secondIcon e isPlaying.
En un inicializador haz un override al método draw e implementa un borde redondeado y un color por default.