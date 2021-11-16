`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 02 - Sesión 08 - Patrón MVVM.

### OBJETIVO 

- Terminar la implementación del **ViewController**. 

#### REQUISITOS 

1. Xcode 12+
2. La App de Ejemplo que has estado utilizando para esta sesión.

#### DESARROLLO

## Parte 1

- En este caso ya has visto como se implementa parte del **ViewController**, pero si observas, en la app de ejemplo, se manejan **dos** _delegados_ y **no** están implementados aún.
* Tendrás que implementar el delegado de **UITableViewDataSource** y **UITableViewDelegate**.
* En la app del ejemplo, ya tienes lista una **Custom cell** a la que puedes utilizar el identificador de **itemCell** para su implementación en el delegado.
* Crea una extensión de **ViewController** en donde hagas esta implementación.

<details>
	<summary>Solución</summary>
	<p>Implementar los métodos de **UITableViewDataSource** y **UITableViewDelegate**</p>

```
extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.items.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itemTableView.dequeueReusableCell(withIdentifier: "itemCell") as! CustomItemTableViewCell
        cell.setupDataFromModel(model: viewModel!.items[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
```
</details> 

## Parte 2

* Si te fijas la app sigue teniendo errores y es porque hace falta implementar el delegado **reloadTableViewDelegate**.
* Implementa este en una nueva extensión del **ViewController**.
* Además, tendrás que implementar el método **reloadTableView(index: Int)** para cuando se agrega un nuevo contacto.
* Idealmente agrega una **Alerta** para indicar al usuario que el contacto ya ha sido agregado con éxito.

<details> 
	<summary>Solución</summary>
		<p>Implementación del **reloadTableViewDelegate</p>

```
extension ViewController: reloadTableViewDelegate {
    func reloadTableView(index: Int) {
        phoneNameTextField.text = ""
        phoneNumberTextField.text = ""
        itemTableView.beginUpdates()
        itemTableView.insertRows(at: [IndexPath(row: index-1,section: 0)], with: .automatic)
        itemTableView.endUpdates()
        let alert = UIAlertController(title: "", message: "Contacto Agregado con Éxito", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
```
* Con esto tienes terminado tu **ViewController**.

* Así se deberá de ver la implementación final del **ViewController**

* ![](0.png)
</details> 