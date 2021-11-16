`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 01 - Sesión 06 - Herencia.

### OBJETIVO

- Poder implementar subclases, utilizando correctamente la _**Herencia**_


#### REQUISITOS

1. Playgrounds.
2. Xcode 12+.

#### DESARROLLO

Aplica lo que has aprendido en el prework.

## Parte 1

1. Crea un nuevo _Playground_.¡
2. Crea una clase llamada **Vehicle**.
3. Define las siguientes propiedades:
* _currentSpeed_ igualandola a **0.0**.
* _description_ de tipo **String**.
* En _description_ implementa un método que regrese la sig. cadena: **return "viajando a \(currentSpeed) KM por hora"**

4. Define un método llamado **makeNoise()** no implementes nada adentro.
5. Crea una instancia de **Vehicle**.
6. Imprime su **description**.

## Parte 2

1. Crea una subclase llamada **Bicycle** que herede de **Vehicle**.
2. Agrega una propiedad nueva llamada **hasBasket** e igualala a **false**.
3. Crea una instancia de **Bicycle**.
4. Indica en tu instancia en la propiedad **hasBasket** = **true**.
5. Indica en tu instancia en la propiedad **currentSpeed** un valor de **30.0**.
6. Imprime la **description**

## Parte 3

1. Crea una subclase llamada **Train** que herede de **Vehicle**.
2. Sobreescribe el método de **makeNoise**.
3. Has que **makeNoise** imprima que sí hace ruido.
4. Crea una instancia de **Train**.
5. Indica en tu instancia en la propiedad **currentSpeed** un valor de **50.0**.
6. Llama al método de **makeNoise** de tu instancia.
7. Imprime la propiedad **description** de tu instancia.