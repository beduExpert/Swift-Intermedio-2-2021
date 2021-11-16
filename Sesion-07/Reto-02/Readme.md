 `Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 02 - Sesión 07 - Protocolos y delegados y como llamar a los métodos desde el delegado.

### OBJETIVO 

- Implementar un método en el protocolo que agregue una **Person** sin recibir parámetros.

#### REQUISITOS 

1. Xcode 12+
2. El proyecto del Postwork que revisaste en el **Ejemplo 02**

#### DESARROLLO

1. En la clase **AddPersonViewController** define un nuevo método que no reciba parametros, llamalo **addAnonymus**

2. Define una nueva **@IBAction** llamada **addAnonymus** la cual vas a conectar a un botón.

3. En el **StoryBoard** crea un nuevo **UIButton** ponle **Add Anonymus** como título y haz la conexión con el **IBAction**

4. En la clase **ViewController** Implementa el método **addAnonymus** en la extensión que contiene los métodos del delegado.

5. En el método agrega un nuevo **Person** con _Nombre_: "Anonymus", _Age_: "??" y _PhoneNumber_: "***********".

6. Agrega el nuevo **Person** al arreglo y refresca la tabla.

## El resultado deberá de verse así:

![](0.png)