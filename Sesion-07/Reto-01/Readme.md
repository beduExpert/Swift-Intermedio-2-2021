 
`Desarrollo Mobile` > `Swift Intermedio 2`

## GET request con objetos mutables

### OBJETIVO 

- A utilizar los parametros de JSON Seralization para la creación de peticiones con respuesta que permita editar sus datos.

- Implementar un Get request mediante URLSessionTask.

#### REQUISITOS 

1. Xcode 11
2. Playgrounds

#### DESARROLLO

Realizar un GET request con objetos mutables.

Se consumirá un JSON como se muestra.

Una vez terminado el Request, deberá poder actualizar los datos del dictionary.

El Request deberá obtener un objeto JSON y pasarlo a un dictionary.
Modificar los datos del dictionary obtenido.

Proporcionar la URL lista para el ejercicio o bien, guiar al alumno para que cree el JSON desde su cuenta de Github como un Gits.

URL del JSON:
> https://gist.githubusercontent.com/richimf/0d18f9ba3e028fca677b39949fd92185/raw/c9b355b816864d3aa79bcacb93493a6608d841b8/file.json


<details>
	<summary>Solución</summary>
	<p> Crearemos un Session como usualmente se ha venido haciendo.</p>
	
```
let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)
```

<p>Crear un session.dataTask() pasandole la URL del JSON a consumir.</p>

```
let task = session.dataTask(with: url)
```

<p> El JSONSerialization debe contener como options el valor de **.mutableContainers** </p>
<p> El objeto recibido deberia poder mutar sus valores.</p>


</details> 
