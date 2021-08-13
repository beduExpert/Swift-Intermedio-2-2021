protocol Playable {
  mutating func play()
}

//enum Song: Playable {
//  case play, stop
//  mutating func play() {
//    switch self {
//    case .play:
//      print("is playing")
//      self = .stop
//    default:
//      print("is stopped")
//      self = .play
//    }
//  }
//}

// solución propuesta pero no única
struct Song: Playable {
  var isPlaying: Bool
  mutating func play() {
    self.isPlaying = !isPlaying
  }
}

var s = Song(isPlaying: true)
s.play()
s.isPlaying
