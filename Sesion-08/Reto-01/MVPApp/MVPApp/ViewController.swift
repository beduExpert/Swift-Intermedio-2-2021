//
//  ViewController.swift
//  MVPApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var inputText: UITextField!
  
  //PRESENTER
  let presenter = Presenter()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func count(_ sender: Any) {
    presenter.updateCount()
    self.label.text = presenter.getCount()
    
    // Input
    guard let text = self.inputText.text else { return }
    presenter.processInPresenter(input: text) { (result: String) in
      print("Processed value: \(result)")
    }
  }
  
}

