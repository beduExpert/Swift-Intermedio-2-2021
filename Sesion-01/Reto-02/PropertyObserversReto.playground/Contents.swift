import UIKit

// Mario example
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


