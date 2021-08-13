`Desarrollo Mobile` > `Swift Intermedio 2`


## App con arquitectura ViewModel

### OBJETIVO

-  Crear una app de Login utilizando el patrón MVVM.

#### REQUISITOS

1. Xcode 11

#### DESARROLLO

Crear una nueva app con patrón MVVM.

Se implementarán completion y dispatch_queues para desargar la imagen de profile.

**Notas de experto:**

1.- Comenzamos en el ViewController agregando tres elementos de UI, dos textfiedls y un image view.

```
  @IBOutlet weak var input1: UITextField!
  @IBOutlet weak var input2: UITextField!
  @IBOutlet weak var imageView: UIImageView!
```

2.- Creamos el archivo de clase de ViewModel, ejemplo:

```
class ViewModel {
  
  var user: User?
  
  func validate(user: String, password: String) -> Bool {
    // Validation code...
    self.user = User(name: user, password: password)
    return true
  }
  
  func download(url: String, completion: @escaping (UIImage) -> Void) {
    guard let url = URL(string: url) else { return }
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if error == nil, let imageData = data {
        completion(UIImage(data: imageData)!)
      }
    }
    task.resume()
  }
  
}
```

3.- Implementamos el algoritmo para descargar una imagen.
Creamos logica utilizando closures.

```
 guard let input1 = input1.text, let input2 = input2.text else { return }
    let result = viewModel.validate(user: input1, password: input2)
    if result {
      // if usr exists, download image
      let url: String = "https:....png"
      viewModel.download(url: url) { data in
        DispatchQueue.main.async {
          self.imageView.image = data
        }
      }
    }
```

