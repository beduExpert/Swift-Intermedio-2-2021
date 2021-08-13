import UIKit

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let url = URL(string: "https://gist.githubusercontent.com/richimf/bcee461c944cf02ec751772c1e005f4c/raw/c5616f6dc539aa90c91946f5e203588653c921ce/users.json")!
let task = session.dataTask(with: url) { data, response, error in

    // ensure there is no error for this HTTP response
    guard error == nil else {
        print ("error: \(error!)")
        return
    }
  
    // ensure there is data returned from this HTTP response
    guard let content = data else {
        print("No data")
        return
    }
  
    // serialise the data / NSData object into Dictionary [String : Any]
    guard let json = (try? JSONSerialization.jsonObject(with: content))
    as? [String: Any] else {
        print("Not containing JSON")
        return
    }
  
    print("gotten json response dictionary is \n \(json)")
    // update UI using the response here
}

// execute the HTTP request
task.resume()



