//
//  APIManager.swift
//  MusicApp
//
//  Created by Omar Guzmán on 05/10/21.
//  Copyright © 2021 Bedu. All rights reserved.
//

import Foundation

class APIManager {
    
    let baseURL = "https://jsonplaceholder.typicode.com/"
    static let shared = APIManager()
    static let getMusicEndpoint = "songs/"
    
    func getMusic(completion: @escaping ([Song]?, Error?) -> ()){
        let url : String = baseURL + APIManager.getMusicEndpoint
        let request: NSMutableURLRequest = NSMutableURLRequest(url: NSURL(string: url)! as URL)
        request.httpMethod = "GET"
        let session = URLSession.shared
        let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response, error -> Void in
            if(error != nil){
                completion(nil, error!)
            } else{
                if let data = data {
                    let result = try? JSONDecoder().decode([Song].self, from: data)
                    completion(result, nil)
                }
            }
        })
        task.resume()
    }
}
