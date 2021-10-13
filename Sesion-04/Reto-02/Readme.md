`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 02 - Sesión 04 - Constraints y Autolayout usando controles avanzados y Constraints por código.

### OBJETIVOS 

- Implementar _Constraints_ utilizando controles avanzados.
- Implementar _Constraints_ mediante código.

#### REQUISITOS 

1. Xcode 12+.
2. El proyecto de ejemplo de esta sesión.

#### DESARROLLO

**Parte 1:**

1.- Sobre la vista **LoginView** implementar las _Constraints_ faltantes a todos los componentes de la UI.
- Utilizar **Add New Constraints** para agregarlas.

<details>
        <summary>Solución</summary>
        <p> Utilizando los controles avanzados puedes agregar constraints de diferentes formas, asegurate de no tener errores al asignarlas</p>
        <p> Todos los componentes se deben de ver alineados en la pantalla</p>
</details>

**Parte dos:**

1.- En la clase **LoginViewController** aplicar constraints a la imágen que se agrego en [Ejemplo-02](Ejemplo-02) para que se presente abajo del botón de _Login_ y tenga un tamaño bien definido.

<details>
        <summary>Solución</summary>
        <p> Tendrás que modificar las constraints que se han asignado previamente</p>
        <p> Lo ideal, es utilizar un IBOUtlet para el botón de login y asignar el topAnchor de la imágen, igual al bottomAnchor del boton, mas una constante,</p>
        <p> Asignar widhAnchor y modificar heightAnchor </p>
        <p> Asignar centerXAnchor de la imagen, igual a la del centerXAnchor del view</p>
</details>
