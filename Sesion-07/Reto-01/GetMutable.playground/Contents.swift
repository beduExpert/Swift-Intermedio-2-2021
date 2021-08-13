import UIKit

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let url = URL(string: "https://gist.githubusercontent.com/richimf/0d18f9ba3e028fca677b39949fd92185/raw/c9b355b816864d3aa79bcacb93493a6608d841b8/file.json")!
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
    guard let json = (try? JSONSerialization.jsonObject(with: content,
                                                        options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
        print("Not containing JSON")
        return
    }
  
    print("gotten json response dictionary is \n \(json)")
    // update UI using the response here
}

// execute the HTTP request
task.resume()
