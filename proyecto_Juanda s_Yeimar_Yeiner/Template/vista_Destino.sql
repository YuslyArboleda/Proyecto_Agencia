SELECT 
        `destino`.`id_Destino` AS `id_Destino`,
        `destino`.`Departamento` AS `Departamento`,
        `destino`.`Ciudad` AS `Ciudad`
    FROM
        `destino`
    WHERE
        (`destino`.`estado` = '1')