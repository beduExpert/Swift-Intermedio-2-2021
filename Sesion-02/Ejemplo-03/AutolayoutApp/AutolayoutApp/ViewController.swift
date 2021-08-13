
import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    let myView = UIView()
    self.view.addSubview(myView)
    myView.backgroundColor = UIColor.blue
    
    // View Two
    let myView2 = UIView()
    self.view.addSubview(myView2)
    myView2.backgroundColor = UIColor.red
    
    myView.translatesAutoresizingMaskIntoConstraints = false
    myView2.translatesAutoresizingMaskIntoConstraints = false

    myView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    //myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    myView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
    myView.widthAnchor.constraint(equalToConstant: 50).isActive = true
    myView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    myView2.topAnchor.constraint(equalTo: myView.bottomAnchor, constant: 120).isActive = true
    myView2.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 150).isActive = true
    myView2.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -150).isActive = true
    myView2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -150).isActive = true
  }
}

