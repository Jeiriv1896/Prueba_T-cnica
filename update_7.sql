BEGIN
    --1
    sp_ActualizarPersona(
         '987654321',
         'Juan',
         'Pérez',
         'CC',
         'juan.perez@gmail.com',
         3200.00,
         'ACTIVO'
    );
    
    --2
        sp_ActualizarPersona(
         '123456780',
         'jeison',
         'Pérez',
         'CC',
         'jeison.a@gmail.com',
         1500.00,
         'ACTIVO'
    );
    
    --3
        sp_ActualizarPersona(
         '432198765',
         'andres',
         'carrillo',
         'CC',
         'andres.car@gmail.com',
         3200.00,
         'ACTIVO'
    );
    
END;


