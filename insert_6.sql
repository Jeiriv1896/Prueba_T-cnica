BEGIN
    -- 1 
    sp_InsertarPersona(
        'Carlos',               
        'Rodríguez',            
        '123456780',            
        'CC',                   
        'carlos.rodriguez@gmail.com',  
        1500.50,                
        'ACTIVO'                
    );
  
    -- 2 

    sp_InsertarPersona(
        'María',                
        'Fernández',            
        '987654322',            
        'CC',                   
        'maria.fernandez@gmail.com',  
        4200.00,                
        'ACTIVO'                
    );
      
    -- 3 

    sp_InsertarPersona(
        'Pedro',                
        'Gómez',                
        '654321987',            
        'NIT',                  
        'pedro.gomez@gmail.com',  
        1800.00,                
        'INACTIVO'              
    );
 
    -- 4

    sp_InsertarPersona(
        'Lucía',                
        'Martínez',             
        '432198765',            
        'PAS',                  
        'lucia.martinez@gmail.com',  
        5000.00,                
        'ACTIVO'                
    );

    -- 5 

    sp_InsertarPersona(
        'Ana',             
        'García',          
        '987654321',       
        'CC',              
        'ana.garcia@gmail.com',  
        2500.00,           
        'ACTIVO'           
    );
END;
/

