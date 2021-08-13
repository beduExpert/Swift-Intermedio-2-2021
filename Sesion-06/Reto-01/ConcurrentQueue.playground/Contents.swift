import UIKit

let queueConcurrent = DispatchQueue(label: "com.bedu.queues", qos: .utility, attributes: .concurrent)

func concurrentQueues(){
    //notice, we are using the same queue
    //this queue will perform three taks at the same time
    //without "attributes: .concurrent", this task will perform one by one
    queueConcurrent.async {
        for i in 0..<10 {
            print(" queue  🎃\(i)")
        }
    }
    
    queueConcurrent.async {
        for i in 0..<10 {
            print(" queue 🤪 \(i)")
          
        }
    }
    
    queueConcurrent.async {
        for i in 0..<10 {
            print(" queue 🥶\(i)")
        }
    }
}

concurrentQueues()
