//
//  Models.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

struct Song {
  let name: String
  let album: String
  var timesPlayed: Int = 0
  let year: String
  let imageCover: UIImage?
  let path: URL?
  
  mutating func hasBeenPlayed() {
    timesPlayed += 1
  }
}

