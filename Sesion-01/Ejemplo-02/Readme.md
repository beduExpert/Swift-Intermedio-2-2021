`Desarrollo Mobile` > `Swift Intermedio 2`

## Ejemplo  de Property Observer

### OBJETIVO

- Entender el cocepto de Observador.

#### REQUISITOS

1. Xcode 11
2. Playgrounds

#### DESARROLLO

Abrir un nuevo **Playground** e implementar…

1.- Una **Estructura** y un **Enum** donde se manejen los estados de Mario Bros, pequeño y grande.

2.- La estructura debe manejar un **Property Observer** que en caso de que Mushroom sea `True`, Mario crezca.

```
// Property Observers
var unlocked: Bool = true {
  willSet {
    print("1.- \(newValue)")
  }
  didSet {
    print("2.- \(oldValue)")
  }
}
```

Probaremos actualizando el valor:

```
// Updating value
unlocked = false
```

Para manejar los tamaños de Mario, se debe basar en un **Enum**:

```
// Mario example
enum Mario {
  case small, big
}
```

3.- Implementar el código que permita crecer a Mario en caso de que haya un hongo.

```
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
```

**Mario** se volverá grande si **Mushroom** es `True`:

```
var game = MarioWorld(mario: .small, mushroom: false)
game.mushroom = false
```

