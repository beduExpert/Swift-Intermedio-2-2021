`Desarrollo Mobile` > `Swift Intermedio 2`


## Postwork - Sesión 04

**Objetivo**

- Generar independencia de las vistas en archivos .xib en el desarrollo del proyecto.
- Establecer constraints mediante código y controles avanzados para definir la estructura del reproductor.

Con base en la aplicación que has trabajado en este módulo, tendrás vistas separadas en archivos .xib, podrás instanciar diferentes ViewControllers.

Esta app te servirá de ejemplo para aplicar lo siguiente:

- Crear vistas independientes, utilizando .xib files.
- Diseñar vistas utilizando los controles avanzados para agregar Constraints.
- Agregar Constraints mediante código.
- Presentar información dentro de un ScrollView.
- Presentar información dentro de un CollectionView.


**Antes de empezar**
**⚙️ Setup**
- Asegúrate de tener XCode instalado (la versión 12.5.1 es suficiente).
- El proyecto que haz utilizado en este módulo.



**🚀 Desarrollo**

El propósito de este Postwork es retomar el proyecto Xcode del módulo y realizar las modificaciones descritas a continuación.

1. Abre tu app de ejercicios de esta sesión.
2. Revisa que tengas 3 ViewControllers.
- LoginViewController.swift
- ScrollViewController.swift
- PlayerViewController.swift
3. Elimina los Controllers que no son necesarios.
4. Mueve al grupo de Views:
- LoginView.xib
- PlayerView.xib
5. Elimina PlayerView.swift
6. En SceneDelegate implementa como rootViewController el LoginViewController.
7. Por lo menos LoginViewController debe de tener Constraints sin informar problemas de estas.

Con esto estás asegurándote de tener listo el proyecto para integrar lo que se verá en la siguiente sesión.
