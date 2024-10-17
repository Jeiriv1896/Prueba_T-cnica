# Proyecto: Gestión de Personas en Base de Datos Oracle

Este proyecto consiste en la creación y gestión de una tabla `Personas`, incluyendo validaciones, triggers, y procedimientos almacenados (SP) para la inserción, actualización y ajuste de registros.

## Requisitos previos

- Base de datos Oracle instalada y en funcionamiento.
- Acceso a la base de datos con permisos para crear tablas, triggers y stored procedures.

## Instrucciones de Ejecución

### 1. Creación de la tabla `Personas`

Ejecutar el archivo SQL `create_table_1.sql` para crear la tabla `Personas` en la base de datos.


@create_table_1.sql

### 2. Validaciones y restricciones
Después de crear la tabla, ejecuta el archivo SQL validaciones_restricciones_2.sql para añadir las restricciones y validaciones necesarias (ej. verificar formato de correo y número mínimo de identificación).

@validaciones_restricciones_2.sql

### 3. Trigger para nombres y apellidos en mayúsculas
Ejecutar el archivo SQL trigger_3.sql para crear el trigger que convierte los nombres y apellidos a mayúsculas durante inserciones y actualizaciones.

@trigger_3.sql

### 4. Procedimiento almacenado sp_InsertarPersona
Ejecutar el archivo SQL sp_InsertarPersona_4.sql para crear el procedimiento almacenado que inserta registros en la tabla Personas con manejo de excepciones y devolución de mensajes informativos.

@sp_InsertarPersona_4.sql

### 5. Procedimiento almacenado sp_ActualizarPersona
Ejecutar el archivo SQL sp_ActualizarPersona_5.sql para crear el procedimiento que actualiza registros en la tabla Personas basado en el identificador.

@sp_ActualizarPersona_5.sql

### 6. Inserción de 5 registros de prueba
Para probar la inserción de registros, primero ejecuta el comando para verificar que la tabla Personas esté vacía:

SELECT * FROM Personas;

Luego, ejecuta el archivo SQL insert_6.sql para insertar 5 registros utilizando sp_InsertarPersona.

@insert_6.sql

Después de insertar, puedes verificar los registros:

SELECT * FROM Personas;

### 7. Actualización de 3 registros
Antes de la actualización, ejecuta este comando SQL para verificar los registros con los siguientes números de identificación:

SELECT * FROM Personas WHERE NumeroIdentificacion IN (987654321, 123456780, 432198765);

Luego, ejecuta el archivo SQL update_7.sql para actualizar 3 registros utilizando sp_ActualizarPersona.

@update_7.sql

Verifica nuevamente los cambios:

SELECT * FROM Personas WHERE NumeroIdentificacion IN (987654321, 123456780, 432198765);

### 8. Procedimiento almacenado sp_AjustarSalario
Ejecuta el archivo SQL sp_AjustarSalario_8.sql para crear el procedimiento que ajusta el salario de las personas con un salario menor o igual a 2000.

@sp_AjustarSalario_8.sql

### 9. Ejecución de ajuste de salario
Antes de ejecutar el procedimiento de ajuste de salario, verifica qué usuarios tienen un salario menor o igual a 2000:

SELECT * FROM Personas WHERE Salario <= 2000.00;

Luego, ejecuta el procedimiento sp_AjustarSalario ejecutar archivo ejecutar sp_ajustarsalario_9.sql y verifica los cambios en los usuarios con los siguientes números de identificación:

@sp_ajustarsalario_9.sql

SELECT * FROM Personas WHERE NumeroIdentificacion IN (123456780, 654321987);

