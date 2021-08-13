import UIKit

let numbers = [1,2,3,4,5,6,7,8,9]
let items = numbers.filter { value in
  return value > 5
}
print(items)

let newValues = numbers.map { value in
  return value * value
}
print(newValues)

let result = numbers.reduce(0) { a, b in
  return a + b
}


