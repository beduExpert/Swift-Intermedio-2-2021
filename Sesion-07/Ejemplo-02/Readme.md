`Desarrollo Mobile` > `Swift Intermedio 2`

## Post Request

### OBJETIVO

- Desarrollo de un POST request con URLSession.

#### REQUISITOS

1. Xcode 11
2. Playgrounds
3. Conectividad a Internet

#### DESARROLLO

Similar a nuestro `GET` request del `Ejemplo-01`, realizaremos un `POST` request.

Recuerda especificar el método:

```
var request = URLRequest(url: url)
request.httpMethod = "POST"
```

Creamos el body de los datos a enviar:

```
let postDict : [String: Any] = ["name": "Bedu",
                                "favorite_animal": "Chihuahua"]
                                
func generateBody() {
	guard let postData = try? JSONSerialization.data(withJSONObject: postDict, options: []) else { return }
  request.httpBody = postData
}
```

Ejecutar el session.dataTask par acrear el request:

```
let task = session.dataTask(with: request) { data, response, error in
  
    // ensure there is no error for this HTTP response
    guard error == nil else {
        print ("error: \(error!)")
        return
    }
  
    // ensure there is data returned from this HTTP response
    guard let content = data else {
        print("No data")
        return
    }
  
    // serialise the data / NSData object into Dictionary [String : Any]
    guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
        print("Not containing JSON")
        return
    }
  
    print("gotten json response dictionary is \n \(json)")
    // update UI using the response here
}
```

Finalmente ejecutamos todo:

```
// execute the HTTP request
generateBody()
task.resume()
```


