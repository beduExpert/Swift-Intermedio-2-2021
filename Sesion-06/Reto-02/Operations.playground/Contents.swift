import UIKit

class Operation1: Operation {
    override func main() {
        print("operation 1")
    }
}

class Operation2: Operation {
    override func main() {
        print("operation 2")
    }
}

let op1 = Operation1()
let op2 = Operation2()

op1.completionBlock = {
    print("ooperation 1 terminado")
}

op2.completionBlock = {
    print("operation 2 terminado")
}

// Agregamos la dependencia
op2.addDependency(op1)

let opsQue = OperationQueue()
//opsQue.maxConcurrentOperationCount = 1
opsQue.addOperation(op1)
opsQue.waitUntilAllOperationsAreFinished()
opsQue.addOperation(op2)
