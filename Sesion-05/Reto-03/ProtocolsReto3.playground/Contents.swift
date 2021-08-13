import UIKit

struct Song {
  var name: String
  var artist: String
  var album: String
  var year: Int
  var duration: Float
}

extension Song: Equatable {
  static func == (lhs: Song, rhs: Song) -> Bool {
    return lhs.name == rhs.name &&
      lhs.artist == rhs.artist &&
      lhs.album == rhs.album &&
      lhs.year == rhs.year &&
      lhs.duration == rhs.duration
  }
}


