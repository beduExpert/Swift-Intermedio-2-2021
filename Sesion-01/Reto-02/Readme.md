`Desarrollo Mobile` > `Swift Intermedio 2`

	
## Reto Mario Bros

### OBJETIVO 

- A perfeccionar el uso de Property Observers. 

#### REQUISITOS 

1. Xcode 11
2. Playgrounds

#### DESARROLLO

Así como se implementó un código mediante Property Observers para cuando Mario crece, hacer uno para cuando Mario se enfrente a un enemigo.

En caso de agotar todas sus vidas *(llegue a cero vidas)* no permitir aumentar vidas a Mario.

<details>
	<summary>Solución</summary>
	<p> Crear un pequeño algoritmo dentro de un Property Observer que permita asignar un valor</p>
	<p> Agregar un Property Observer que permita cambiar el valor de lifes y del tamaño de Mario.</p>
	<p> Agregar una condición que permita saber si el juego ha terminado, asignandole el valor de True a gameOver.</p>
	
```
enum Mario {
  case small, big
}

struct MarioWorld {
  var mario: Mario
  var gameOver: Bool = false
  var lifes: Int = 1

  var enemyAttacked: Bool? {
    didSet {
      if lifes > 0 {
        lifes -= 1
      } else {
        gameOver = true
        print("game over")
      }
    }
  }

  var 🍄: Bool {
    willSet {
      if !gameOver {
        if newValue && mario == .small {
          mario = .big
          print("mario is big")
          lifes = 2
        } else {
          mario = .small
          print("mario is small")
        }
      }
    }
  }
  
}

var game = MarioWorld(mario: .small, 🍄: false)
game.🍄 = true
print("Number of Lifes: \(game.lifes)")
game.enemyAttacked = true
print("Number of Lifes: \(game.lifes)")
game.enemyAttacked = true
game.enemyAttacked = true
game.🍄 = true
```
</details> 


