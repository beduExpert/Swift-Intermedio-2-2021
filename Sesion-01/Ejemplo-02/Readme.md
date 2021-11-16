`Desarrollo Mobile` > `Swift Intermedio 2`

## Ejemplo 02 - Sesión 01 - Property Observer

### OBJETIVO

- Identificar el concepto de un **_Property Observer_**.

#### REQUISITOS

1. Xcode 12+
2. Playgrounds

#### DESARROLLO

Abre un nuevo **Playground** e implementa:

1.- Una **struct** y un **Enum** en donde manejes los estados de Mario Bros, pequeño y grande.

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

Prueba actualizando el valor:

```
// Updating value
unlocked = false
```

Para manejar los tamaños de Mario, te debes basar en un **Enum**:

```
// Mario example
enum Mario {
  case small, big
}
```

3.- Implementa el código que permita crecer a Mario en caso de que haya un hongo.

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
var game = MarioWorld(mario: .small, mushroom: false)∫
game.mushroom = false
```

