import UIKit

// Operation bya block
let operation = BlockOperation {
  print("some process")
}

// Function that handles operation to start
func operationQueue() {
  operation.start()
}

//Execute
operationQueue()

func operationStrQueue() {
  let str = "Hello world swift"
  let operation = BlockOperation()

  for string in str.split(separator: " ") {
    operation.addExecutionBlock {
      print(string)
    }
  }
  operation.start()
}

operationStrQueue()
