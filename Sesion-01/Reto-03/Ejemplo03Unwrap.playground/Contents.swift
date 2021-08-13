import UIKit

let numbers = ["1", "2", "tres", "cuatro", "5", "6", "7", "8", "diez"]

let mapped: [Int?] = numbers.map { str in Int(str) }
print(mapped)

let compactMapped: [Int] = numbers.compactMap { str in Int(str) }
print(compactMapped)


let dictionary = ["Key1": [0, 5, 7], "Key2": [2, 5, 9]]
let dictMap = dictionary.map { $0.value }
print(dictMap)

let flatMapped = dictionary.flatMap { $0.value }
print(flatMapped)
