import UIKit

func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
  let result = operation(a, b)
  print(result)
  return result
}

let add = { (a, b)  -> Int in
  return a + b
}

let multiply = { (a, b)  -> Int in
  return a * b
}

let sustract = { (a, b)  -> Int in
  return a - b
}

let divide = { (a, b)  -> Int in
  return a / b
}

calculate(3, 4, operation: add)
calculate(4, 4, operation: multiply)
calculate(7, 4, operation: sustract)
calculate(10, 2, operation: divide)

let numbers = [ 1,2,3,4,5,6,7,8,9]
numbers.forEach { i in
  print(i)
}
