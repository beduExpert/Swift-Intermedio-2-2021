import UIKit

// Nested Optional

let name: String??? = "Bedu"

//1.- Force Unwrap
print(name!!!)

//2.- Optional Biding
if let name = name, let almostUnwrapped = name, let unwrapped = almostUnwrapped {
  print(unwrapped)
}

//3.- Guard within Function
func unwrapp(_ value: String???) {
  guard let value = value,
    let almostUnwrapped = value,
    let unwrapped = almostUnwrapped else { return }
  print(unwrapped)
}
unwrapp(name)
