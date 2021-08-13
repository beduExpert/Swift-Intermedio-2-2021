import UIKit

let values: [String?] = [nil, nil, nil, "B","E","D","U"]
for v in values {
  print(v)
}

print("\nFor Each")
//Second form
values.forEach {
  print($0)
}

print("\nCompact")
let compacted = values.compactMap { $0 }
compacted.forEach {
  print($0)
}
