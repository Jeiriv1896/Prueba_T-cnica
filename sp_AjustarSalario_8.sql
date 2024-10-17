create or replace PROCEDURE sp_AjustarSalario (
    p_NumeroIdentificacion IN VARCHAR2,
    p_NuevoSalario OUT NUMBER
) IS
    v_Salario NUMBER;
    v_count NUMBER;
BEGIN
    -- Verificar si el empleado con el NumeroIdentificacion ingresado existe
    SELECT COUNT(*)
    INTO v_count
    FROM Personas
    WHERE NumeroIdentificacion = p_NumeroIdentificacion;
    
    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: No se encontró el empleado con el NumeroIdentificacion ' || p_NumeroIdentificacion);
        p_NuevoSalario := NULL;  -- Devolver NULL si el empleado no existe
    ELSE
        -- Obtener el salario actual del empleado
        SELECT Salario
        INTO v_Salario
        FROM Personas
        WHERE NumeroIdentificacion = p_NumeroIdentificacion;
        
        -- Verificar si el salario es menor a 2000
        IF v_Salario < 2000 THEN
            -- Aumentar el salario un 10%
            v_Salario := v_Salario + (v_Salario * 0.10);  -- Aplica un 10% al salario actual
            
            -- Actualizar el salario en la tabla
            UPDATE Personas
            SET Salario = v_Salario
            WHERE NumeroIdentificacion = p_NumeroIdentificacion;
            commit;
            -- Mensaje de éxito
            DBMS_OUTPUT.PUT_LINE('Salario ajustado exitosamente para el empleado con NumeroIdentificacion ' || p_NumeroIdentificacion);
        ELSE
            DBMS_OUTPUT.PUT_LINE('El salario del empleado con NumeroIdentificacion ' || p_NumeroIdentificacion || ' es mayor o igual a 2000, no se realizó ningún ajuste.');
        END IF;
        
        -- Devolver el nuevo salario
        p_NuevoSalario := v_Salario;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: No se encontró el empleado con el NumeroIdentificacion ' || p_NumeroIdentificacion);
        p_NuevoSalario := NULL;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        p_NuevoSalario := NULL;
END sp_AjustarSalario;
//