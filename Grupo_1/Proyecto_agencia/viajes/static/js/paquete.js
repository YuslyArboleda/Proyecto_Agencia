$(document).ready(function () {
  console.log('hola');
 let tarifa_agencia = $("#id_hospedajeacomodacion_set-0-tarifa_agencia"); 
 let tarifa_hospedaje = $("#id_hospedajeacomodacion_set-0-tarifa");  
 tarifa_agencia.on("input",() => {
    let tarifa = $(this).val();
    tarifa_hospedaje.val(tarifa*1.2);//calcula la tarifa con el 20% de ganancia
    console.log(tarifa);
    console.log(tarifa_hospedaje);
  });

});
