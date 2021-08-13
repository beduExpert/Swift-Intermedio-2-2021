import UIKit

func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
  let result = operation(a, b)
  print(result)
  return result
}

let add = { (a, b)  -> Int in
  return a + b
}
calculate(3, 4, operation: add)



