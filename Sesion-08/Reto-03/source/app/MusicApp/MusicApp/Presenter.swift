//
//  Presenter.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class Presenter {
  
  let cellId = "SongCell"
  weak var view: ViewController?
  var items: [Song] = []
  
  init(view: ViewController) {
    self.view = view
  }
  
  func getNumberOfItems() -> Int {
    return items.count
  }
  
  func getAlbumCover(at row: Int) -> UIImage {
    let url = items[row].cover
    //code to download image...
    return UIImage()
  }
  
  func getCellNib() -> UINib {
    return UINib(nibName: cellId, bundle: nil)
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
