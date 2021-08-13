import UIKit

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)
let url = URL(string: "https://....")!

var request = URLRequest(url: url)
request.httpMethod = "POST"
request.setValue("application/json", forHTTPHeaderField: "Content-Type")

// your post request data
let postDict : [String: Any] = ["name": "Bedu",
                                "favorite_animal": "Chihuahua"]
func generateBody() {
  guard let postData = try? JSONSerialization.data(withJSONObject: postDict, options: []) else {
    return
  }
  
  request.httpBody = postData
}

let task = session.dataTask(with: request) { data, response, error in
  
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
    guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
        print("Not containing JSON")
        return
    }
  
    print("gotten json response dictionary is \n \(json)")
    // update UI using the response here
}

// execute the HTTP request
generateBody()
task.resume()


