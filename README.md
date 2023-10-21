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