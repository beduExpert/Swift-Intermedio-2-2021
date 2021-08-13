import UIKit

protocol Actions {
  func songInfo() -> String
  func play()
  func stop()
  func nextSong()
  func previousSong()
  func playList(_ list: String...)
  static func loadSong()
}

struct Media: Actions {
  func songInfo() -> String {
    return "song name"
  }
  
  func play() {
    print(" play song")
  }
  
  func stop() {
    print(" stop song")
  }
  
  func nextSong() {
    print(" next song")
  }
  
  func previousSong() {
    print(" prev song")
  }
  
  func playList(_ list: String...) {
    for song in list {
      print(" now playing \(song)")
    }
  }
  
  static func loadSong() {
    print(#function)
  }
}
