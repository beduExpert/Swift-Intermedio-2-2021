import UIKit

// ENUMS
enum TemperatureType {
  case cold, hot
}

enum Taste {
  case sweet, bitter
}

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

protocol HotDrink: Temperature,  Beverage, Tasetable {
}
extension HotDrink {
  var temperature: TemperatureType {
    return .hot
  }
}

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

let coffee = Coffee(name: "capuccino", volume: 350.0, taste: .bitter)
let chocolate = Chocolate(name: "champurrado", volume: 500.0, taste: .sweet)
coffee.temperature
chocolate.temperature
