//
//  ViewModel.swift
//  GalleryApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class Presenter {
  
  var items: [UIImage] = []
  weak var view: ViewController?
  
  init(view: ViewController) {
    self.view = view
  }

  func download() {
    let imageURL: String = URLImages.dog.rawValue
    fetchImages(from: imageURL)
  }
  
  private func fetchImages(from url: String) {
    download(url: url) { image in
      self.items.append(image)
      self.view?.reloadView()
    }
  }
  
  private func download(url: String, completion: @escaping (UIImage) -> Void) {
    guard let url = URL(string: url) else { return }
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if error == nil, let imageData = data {
        completion(UIImage(data: imageData)!)
      }
    }
    task.resume()
  }
  
}
