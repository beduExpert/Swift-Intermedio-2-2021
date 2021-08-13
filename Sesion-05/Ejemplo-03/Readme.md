`Desarrollo Mobile` > `Swift Intermedio 2`

## Extensions y Protocols

### OBJETIVO

-  Crear un Protocolo y Extensión que implemente los valores necesarios para indicar que es una bebida caliente.


#### REQUISITOS

1. Basar el código en las estructuras creadas durante la sesión.
2. Xcode 11
3. Playgrounds

#### DESARROLLO

De las estructuras creadas, reimplementar esta solución.
Esta vez utilizando extensions.

1.- Crear un Protocolo y Extensión que implemente los valores necesarios para indicar que es una bebida caliente.

2.- El valor de temperature debe ser HOT.

Tendremos dos ENUMS:

```

// ENUMS
enum TemperatureType {
  case cold, hot
}

enum Taste {
  case sweet, bitter
}
```

Los protocolos a definir:

```
// PROTOCOLS
protocol Beverage {
  var name: String { get set }
  var volume: Float { get set }
}

protocol Tasetable {
  var taste: Taste { get set }
}

protocol Temperature {
  var temperature: TemperatureType { get }
}
```

El protocolo `HotDrink` tendrá su implementación con un `Extension`:

```
protocol HotDrink: Temperature,  Beverage, Tasetable { }
extension HotDrink {
  var temperature: TemperatureType {
    return .hot
  }
}
```

Las estructuras deberán conformar dicho protocolo.

```
//STRUCTS
struct Coffee: HotDrink{
  var name: String
  var volume: Float
  var taste: Taste
}

struct Chocolate: HotDrink {
  var name: String
  var volume: Float
  var taste: Taste
}
```

Finalmente, creamos una instancia para comprobarlo.

```
let coffee = Coffee(name: "capuccino", volume: 350.0, taste: .bitter)
let chocolate = Chocolate(name: "champurrado", volume: 500.0, taste: .sweet)
coffee.temperature
chocolate.temperature
```

