DECLARE
    v_NuevoSalario NUMBER;
BEGIN
    sp_AjustarSalario(p_NumeroIdentificacion => '123456780', p_NuevoSalario => v_NuevoSalario);
    
    IF v_NuevoSalario IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Nuevo salario: ' || v_NuevoSalario);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se realizó ningún ajuste.');
    END IF;
END;
/
