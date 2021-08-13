//
//  ViewController.swift
//  MVPApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  
  //PRESENTER
  let presenter = Presenter()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func count(_ sender: Any) {
    presenter.updateCount()
    self.label.text = presenter.getCount()
  }
  
}

