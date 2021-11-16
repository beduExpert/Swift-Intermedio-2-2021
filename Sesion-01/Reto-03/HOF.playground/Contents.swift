import UIKit

let array = [23, 44, 2, 123, 444, 554, 346, 778, 324, 567, 887]
//numeros ordenados
print(array.sorted())
//numeros pares
print(array.filter { $0 % 2 == 0 })
//multiplicados por 2
print(array.map { $0 * 2 })
