
SELECT v.placa, 
       e.tipo_identificacion, 
       e.identificacion, e.nombre, COUNT(*) Conductores_Asginados
FROM vehiculo v
INNER JOIN vehiculo_x_empresa vh on vh.id_vehiculo = v.id_vehiculo
INNER JOIN empresa e on vh.id_empresa = e.id_empresa  
INNER JOIN conductor_x_vehiculo cv on cv.id_vehiculo = v.id_vehiculo
INNER JOIN conductor c on c.id_conductor = cv.id_conductor 
WHERE v.estatus = 'A' 
GROUP BY cv.id_vehiculo
HAVING COUNT(*) >= 2 
ORDER BY v.placa DESC ; 
