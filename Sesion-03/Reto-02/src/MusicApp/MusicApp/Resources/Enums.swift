//
//  Enums.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

// USAGE :
//let storyboard = AppStoryboard.Main.instance
enum Storyboards: String {
  case Main = "Main"
  case Preferences = "Preferences"

  var instance : UIStoryboard {
    return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
  }
}

enum MusicGenre {
  case Rock
  case Pop
  case Jazz
  case Classical
  case Electro
  case Reggea
}
