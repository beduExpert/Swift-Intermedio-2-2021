
import UIKit
import PlaygroundSupport

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
view.backgroundColor = .white
let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
view.addSubview(imageView)

// image request
func performRequest() {
  guard let url = URL(string: "image_URL") else { return }
  let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if error == nil {
      let image = UIImage(data: data!)
      imageView.image = image
    }
  }
  task.resume()
}

func perform() {
  let globalQueue = DispatchQueue.global(qos: .userInitiated)
   globalQueue.async {
     performRequest()
    DispatchQueue.main.async {
      //Show Image
      PlaygroundPage.current.liveView = view
      PlaygroundPage.current.liveView
      
    }
  }
}
perform()
