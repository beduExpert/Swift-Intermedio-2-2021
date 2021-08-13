//
//  Presenter.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class Presenter {
  
  weak var view: ViewController?
  
  init(view: ViewController) {
    self.view = view
  }
  
  private var items: [Song] = []
  let cellId = "SongCell"
  
  func getNumberOfItems() -> Int {
    return items.count
  }
  
  func getRequest(url: String) {
    guard let url = URL(string: url) else { return }
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      // ensure there is no error for this HTTP response
      guard error == nil else {
        print ("error: \(error!)")
        return
      }
      // ensure there is data returned from this HTTP response
      guard let data = data else {
        print("No data")
        return
      }
      guard let object = try? JSONDecoder().decode(Song.self, from: data) else {
        print("fail")
        return
      }
      self.items.append(object)
      print("gotten json response dictionary is \n \(object)")
      // update UI using the response here
      self.view?.updateTableView()
    }
    // execute the HTTP request
    task.resume()
  }
  
}
