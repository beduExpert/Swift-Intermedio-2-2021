//
//  ViewController.swift
//  MVVMApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var input1: UITextField!
  @IBOutlet weak var input2: UITextField!
  @IBOutlet weak var imageView: UIImageView!
  
  private let viewModel = ViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func login(_ sender: Any) {
    guard let input1 = input1.text, let input2 = input2.text else { return }
    let result = viewModel.validate(user: input1, password: input2)
    if result {
      // if usr exists, download image
      let url: String = "https:....png"
      viewModel.download(url: url) { data in
        DispatchQueue.main.async {
          self.imageView.image = data
        }
      }
    }
  }
}

