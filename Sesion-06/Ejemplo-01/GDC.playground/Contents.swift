import UIKit

let queueName = "bedu.task"
let queue = DispatchQueue(label: queueName, qos: DispatchQoS.userInteractive)

func helloWorldQueues(){
    //This for cycle runs in the background
    //2.- Execute que synchronously (sync) or asynchronously (async)
    queue.sync {
        for i in 0..<10 {
            print("1.-numero \(i)")
        }
    }
    
    //For cycle runs in the main queue
    for i in 0..<10 {
        print("2- numero \(i)")
    }
}
helloWorldQueues()
