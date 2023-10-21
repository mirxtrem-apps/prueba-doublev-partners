**Prueba tecnica Flutter Senior**

Esta prueba técnica tiene como objetivo desarrollar los siguientes requerimientos traducidos a Historias de Usuario con sus criterios de aceptacion.

**HU01: Como usuario Quiero registrarme en la aplicación Para poder realizar compras**

**Criterio 01:**
Dado: que el usuario no esta registrado,
Cuando: abre la aplicación
Entonces: La aplicación muestra una pantalla con la opcion para registrarse.

**Criterio 02:**
Dado: que el usuario no esta registrado.
Cuando: el usuario selecciona la opcion de registrarse
Entonces: La aplicación lo redirige a la pantalla de registro con las siguientes caracteristicas.
- Titulo con el texto: Registro.
- Campo para ingresar el correo
- Campo para ingresar una contraseña
- Un checkbox para aceptar tyc
- Un boton para registrarse
- Un botón para logearse si ya tiene cuenta

**Criterio 03:**
Dado: que el usuario esta en el proceso de registro,
Cuando: el usuario selecciona la opcion de registrarse
Entonces: La aplicación lo redirige a la pantalla de registro con las siguientes caracteristicas.
- Titulo con el texto: Datos personales.
- Campo para ingresar el nombre
- Campo para ingresar el apellido
- Campo para ingresar la fecha de nacimiento
- Un boton para continuar con el registro

**Criterio 04**
Dado: que el usuario esta en la pantalla de registro,
Cuando: cuando selecciona la opcion de continuar 
Entonces: La aplicación lo redirige a la pantalla de direccion de envio con las siguientes
carácteristicas.
- Titulo con el texto: Dirección de envio
- Campo para ingresar la dirección
- Campo para ingresar la cuidad
- Campo para ingresar el departamento
- Campo para ingresar código postal
- Botón para finalizar el proceso (Finalizar registro)
- Opcion en el appbar para saltar este paso

**Criterio 05**
Dado: que el usuario esta en la pantalla de direccion de envio,
Cuando: cuando selecciona la opcion de finalizar 
Entonces: La aplicación lo redirige a la pantalla del home

**HU02: Como usuario Quiero agregar una dirección de envio en la aplicación Para poder montar una orden de compra.**

**Criterio 01:**
Dado: que el usuario esta registrado,
Cuando: el usuario esta en el home
Entonces: La aplicacion muestra los datos del usuario en la parte superior para ir al perfil
- La opcion mostrará un avatar y el texto: Bienvenido, {username}

**Criterio 02:**
Dado: que el usuario esta registrado,
Cuando: el usuario esta en la pantalla de perfil
Entonces: La aplicacion muestra un menu con las siguientes opciones.
- Datos del usuario: avatar, nombre y correo
- Opción para administrar sus direcciones (Mis direcciones de envio)
- Opción para ver sus ordenes (Mis ordenes)
- Opcion para administrar sus metodos de pago (Mis métodos de pago)

**Criterio 03:**
Dado: que el usuario esta en la pantalla de perfil,
Cuando: el usuario selecciona la opcion de agregar direcciones
Entonces: La aplicacion lo redirige a la pantall de Mis direcciones de envio

La pantalla debe tener estas caracteristicas:
- Lista con las direcciones de envio registradas
- Un botón para crear una nueva direccion
- Un botón para editar una dirección existente

**Criterio 04:**
Dado: que el usuario esta en la pantalla de agregar direcciones,
Cuando: el usuario selecciona la opcion de crear una dirección
Entonces: La aplicacion lo redirige a la pantalla de crear dirección

La pantalla debe tener un formulario estas caracteristicas:
- Campo para ingresar la dirección
- Campo para ingresar la cuidad
- Campo para ingresar el departamento
- Campo para ingresar código postal
- Botón para guardar