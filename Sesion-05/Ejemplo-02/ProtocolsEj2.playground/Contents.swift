protocol Playable {
  mutating func play()
}

enum Song: Playable {
  case play, stop
  mutating func play() {
    switch self {
    case .play:
      print("is playing")
      self = .stop
    default:
      print("is stopped")
      self = .play
    }
  }
}

var sss = Song.play
sss.play()
