import UIKit

extension String {
  private func capitalize() -> String {
    let firstLetter = String(self.prefix(1)).capitalized
    let restOfString = String(self.dropFirst())
    return firstLetter + restOfString
  }
  
  mutating func capitalizeFirstLetter() {
    self = self.capitalize()
  }
}

//Use of Extension
var bedu = "bedu school"
bedu.capitalizeFirstLetter()
print(bedu)


// UIButton
extension UIButton {
  func circled() {
    self.frame = CGRect(x: self.center.x,
                         y: self.center.y,
                         width: self.frame.width/2,
                         height: self.frame.height/2)
    self.setTitle("", for: .normal)
    self.backgroundColor = .clear
  }
}
