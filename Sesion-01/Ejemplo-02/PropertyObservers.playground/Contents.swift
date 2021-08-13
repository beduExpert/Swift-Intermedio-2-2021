import UIKit


// Property Observers
var unlocked: Bool = true {
  willSet {
    print("1.- \(newValue)")
  }
  didSet {
    print("2.- \(oldValue)")
  }
}

// Updating value
unlocked = false


// Mario example
enum Mario {
  case small, big
}

struct MarioWorld {
  var mario: Mario
  var mushroom: Bool {
    willSet {
      if newValue && mario == .small {
        mario = .big
        print("mario is big")
      } else {
        mario = .small
        print("mario is small")
      }
    }
  }
}

var game = MarioWorld(mario: .small, mushroom: false)
game.mushroom = false
