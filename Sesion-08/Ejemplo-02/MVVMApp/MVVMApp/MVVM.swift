//
//  MVVM.swift
//  MVVMApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewModel {
  
  var user: User?
  
  func validate(user: String, password: String) -> Bool {
    // Validation code...
    self.user = User(name: user, password: password)
    return true
  }
  
  func download(url: String, completion: @escaping (UIImage) -> Void) {
    guard let url = URL(string: url) else { return }
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if error == nil, let imageData = data {
        completion(UIImage(data: imageData)!)
      }
    }
    task.resume()
  }
  
}
