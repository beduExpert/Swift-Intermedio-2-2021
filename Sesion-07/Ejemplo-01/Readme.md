`Desarrollo Mobile` > `Swift Intermedio 2`


## Primer Get Request

### OBJETIVO

- A realizar un request de tipo GET mediante URLSession.

#### REQUISITOS

1. Xcode 11
2. Playgrounds
3. Conectividad a internet

#### DESARROLLO

Para realizar un Request de tipo GET utilizaremos el **URLSessionDataTask**.

1.- Comenzamos con el Session-Configuration.

```
let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)
```

2.- Necesitaremos una **URL**.

La URL del JSON file:

> https://gist.githubusercontent.com/richimf/bcee461c944cf02ec751772c1e005f4c/raw/c5616f6dc539aa90c91946f5e203588653c921ce/users.json

Creamos una variable de tipo `URL(...)`.

```
let url = URL(string: "https://gist.githubusercontent.com/richimf/bcee461c944cf02ec751772c1e005f4c/raw/c5616f6dc539aa90c91946f5e203588653c921ce/users.json")!
```

3.- El task lo crearemos apoyándonos en el session, con la función `dataTask()`.

El encargado de hacer el **GET** request:

> session.dataTask(with: url)

Implementamos de la sig. manera, aseguradonos de manejar el parametro de error y de data, si no tenemos data o si tenemos un error mostrarlo.

```
let task = session.dataTask(with: url) { data, response, error in

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
    guard let json = (try? JSONSerialization.jsonObject(with: content)) as? [String: Any] else {
        print("Not containing JSON")
        return
    }
  
    // Show response:
    print("gotten json response dictionary is \n \(json)")
    // update UI using the response here
}
```

4.- Ejecutamos el Request.

```
task.resume()
```

