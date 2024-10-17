ALTER TABLE Personas -- verifica que correo cumpla estandares minimos
ADD CONSTRAINT chk_email_format 
CHECK (REGEXP_LIKE(Email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'));

ALTER TABLE Personas -- verifica numero minimo de identificacion 
ADD CONSTRAINT chk_numero_identificacion 
CHECK (LENGTH(NumeroIdentificacion) >= 6);



/*
ALTER TABLE Personas
DROP CONSTRAINT chk_email_format;

ALTER TABLE Personas
DROP CONSTRAINT chk_numero_identificacion;

*/

