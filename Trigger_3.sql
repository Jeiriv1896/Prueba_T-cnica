CREATE OR REPLACE TRIGGER trg_mayusculas_nombres_apellidos
BEFORE INSERT OR UPDATE ON Personas
FOR EACH ROW
BEGIN
    -- Convertir Nombres y Apellidos a mayúsculas
    :NEW.Nombres := UPPER(:NEW.Nombres);
    :NEW.Apellidos := UPPER(:NEW.Apellidos);
END;

