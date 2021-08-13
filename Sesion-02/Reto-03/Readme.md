`Desarrollo Mobile` > `Swift Intermedio 2`

## CollectionView with DetailView

### OBJETIVO 

- Implementar el componente de UICollectionView con vista de detalle, de manera muy generica.

#### REQUISITOS 

0. Nociones de implementación de UITableView.
1. Xcode 11

#### DESARROLLO

Crear un nuevo proyecto.

En el Viewcontroller agregar un elemento de CollectionView.

![](0.png)

Así como se implementa un TableView, implementar un CollectionView que muestre una celda personalizada.

![](1.png)

Al dar click en la celda, ir a una vista de detalle.

<details>
	<summary>Solución</summary>
	<p> Agregar un UICollectionView al ViewController del Storyboard.</p>
	<p> Agregar un nuevo ViewController y su clase, este será el DetailViewController.</p>
	<p> Crearemos una Cell customizada para CollectionView. Le agregaremos un Label.</p>
	<p> En el ViewController principal, implementaremos el código similar a un TableView.</p>
</details> 

Resultado esperado:

![](0.gif)
