//
//  Presenter.swift
//  MVPApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import Foundation

class Presenter {
  
  private var count = Model(value: 0)
  
  init() {}
  
  func updateCount() {
    count.value += 1
  }
  
  func getCount() -> String {
    return "Count is \(self.count.value)"
  }

  func processInPresenter(input: String, completion: (String) -> Void) {
    // Some example code...
    completion("\(input) Has been procesed!")
  }
  
}
