import UIKit

// 1.- Clsure retornando nombre en string especificando tipo de dato.
let myName: () -> String = { () in
  return "Bedu"
}

// 2.- Escribir
var multiplyClosure: (Int, Int) -> Int = {
  $0 * $1
}
multiplyClosure(3, 5)


// 3.- Capture List
var captureList = [()->()]()

for value in 0...10 {
  captureList.append { [value] in
    print("Value is \(value)")
  }
}

captureList[10]()
