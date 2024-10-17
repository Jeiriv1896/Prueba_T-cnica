CREATE OR REPLACE PROCEDURE sp_ActualizarPersona (
    p_NumeroIdentificacion IN VARCHAR2,
    p_Nombres              IN VARCHAR2,
    p_Apellidos            IN VARCHAR2,
    p_TipoIdentificacion    IN VARCHAR2,
    p_Email                IN VARCHAR2,
    p_Salario              IN NUMBER,
    p_Estado               IN VARCHAR2
) IS
    v_count NUMBER;
BEGIN
    -- Verificar si el registro existe
    SELECT COUNT(*)
    INTO v_count
    FROM Personas
    WHERE NumeroIdentificacion = p_NumeroIdentificacion;
    
    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: No se encontró el registro con el NumeroIdentificacion ' || p_NumeroIdentificacion);
    ELSE
        -- Actualizar el registro
        UPDATE Personas
        SET Nombres = p_Nombres,
            Apellidos = p_Apellidos,
            TipoIdentificacion = p_TipoIdentificacion,
            Email = p_Email,
            Salario = p_Salario,
            Estado = p_Estado
        WHERE NumeroIdentificacion = p_NumeroIdentificacion;
    COMMIT;    
        -- Mensaje de éxito
        DBMS_OUTPUT.PUT_LINE('Registro actualizado exitosamente: ' || p_Nombres || ' ' || p_Apellidos);
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: No se encontró el registro con el NumeroIdentificacion ' || p_NumeroIdentificacion);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END sp_ActualizarPersona;
/
