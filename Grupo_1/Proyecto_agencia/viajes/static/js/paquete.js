$(document).ready(function () {
   //console.log('hola');
   //let tarifa_agencia = $("#id_hospedajeacomodacion_set-0-tarifa_agencia"); 
   //let tarifa_hospedaje = $("#id_hospedajeacomodacion_set-0-tarifa");  
   //tarifa_agencia.on("input", function () {
    //let tarifa = $(this).val();
    //tarifa_hospedaje.val(tarifa*1.2);//calcula la tarifa con el 20% de ganancia
    //console.log(tarifa);
    //console.log(tarifa_hospedaje.val());
  //});

  $(document).on("input", 
    "input[id^='id_hospedajeacomodacion_set-'][id$='-tarifa_agencia']", //para saber la posicion en el input
    function () {
      let tarifa_agencia = $(this);
      console.log('tarifa_agencia', tarifa_agencia);
      let id = tarifa_agencia.attr("id").match(/\d+/); //attr busca lo que le indiquemos en este caso id, match me da el número
      let tarifa_hospedaje = 
      $("#id_hospedajeacomodacion_set-" + id + "-tarifa");
      let tarifa = tarifa_agencia.val();
      tarifa_hospedaje.val((tarifa * 1.2).toFixed(1))//calcula la tarifa con el 20% de ganancia
    }
  );
});
