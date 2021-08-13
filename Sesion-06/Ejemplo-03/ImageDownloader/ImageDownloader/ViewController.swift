//
//  ViewController.swift
//  ImageDownloader
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    downloadImageAndShowIt()
    // Do any additional setup after loading the view.
  }
  
  func downloadImageAndShowIt() {
    let imageURL: URL = URL(string: "https:urlimage.jpg")!
    URLSession(configuration: URLSessionConfiguration.default)
      .dataTask(with: imageURL, completionHandler: { (imageData, response, error) in
      if let data = imageData {
        //after image download
        DispatchQueue.main.async {
          self.imageView.image = UIImage(data: data)
        }
      }
    }).resume()
  }

}

