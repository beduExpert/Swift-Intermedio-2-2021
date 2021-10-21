`Desarrollo Mobile` > `Swift Intermedio 2`

## Sesión 07 - Postwork - Programación orientada a protocolos. Herencia y Extensiones.

### OBJETIVO

- Implementar una vista para presentar el detalle de un registro.
- Implementar un método de un protocolo para eliminar registros llamandolo desde el delegado.

#### REQUISITOS

2. Xcode 12+
3. [Proyecto de ejemplo para este módulo](EjemploDelegados)

#### DESARROLLO

## Parte 1

* Crea un nuevo **ViewController** llamado **PoepleDetailViewController** en tu proyecto de ejemplo.

* Crea 3 **IBOutlet** que hagan referencia a 3 **UIlabels** que contendrán el _nombre, edad y teléfono_ de una persona.

* Crea una variable que pueda contener un objeto tipo **Person**.

* En **Interface Builder** crea el nuevo **ViewController** y haz todas las conexiones necesarias.

* Desde el **ViewController** deberás de instanciar el nuevo **PeopleDetailViewController** y le pasaras la persona seleccionada.

* Deberás de mostrar esa persona en el detalle.

## Parte 2

* En **AddPersonViewController** en el protocolo **AddPersonDelegate** crea un nuevo método, llamalo **deletePerson** que reciba un **Person** como parámetro.

* En **AddPersonViewController** Crea una nueva **IBAction** llamada **deletePerson** la cual reciba un **Person** como parámetro.

* Adentro del **IBAction** implementa la llamada al método del protocolo que se encargará de borrar el registro.

* En **Interface Builder** Crea un nuevo botón para **Borrar Persona** y conectalo con el **IBAction**.

* En **ViewController** en la parte de la **extension** implementa el método para eliminar registro.

* En la implementación deberás de buscar en el arreglo a ese Objeto y lo borraras.

* Luego actualizaras la tabla.