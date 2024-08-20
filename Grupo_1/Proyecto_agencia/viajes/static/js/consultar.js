$(document).ready(function () {
  
  $('.barrabuscar').on('input', function (event) {
    buscarDestino()
  });

    $('#Buscar').on('click', function (event) {
        let Busca = $('.barrabuscar')[0];
        let busqueda = $('.barrabuscar').val();
        
        if (!Busca.checkValidity()){
            event.preventDefault();
            event.stopPropagation();

            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Por favor, escriba su consulta!",
            });

            return;

          }else {
            console.log(busqueda);
          }     
    });

    function buscarDestino(){
      let destino=$(".barrabuscar")
       .val()
       .trim(); /* trim() elimina los espacios*/
      if (destino.length > 0){ //para que vaya borrando el div una vez se ha escrito
        $.ajax({
          url: "rumboTravel/destino",
          data:{q: destino},
          success: function (data) {
            let mostrar=$("#resultado");
            mostrar.empty()/* para limpiar los resultados anteriores*/
            if (destino.length>2){
              if (data.length){
                data.forEach((element)=>{
                  mostrar.append(`
                    <ul class="list-group">
                      <li class="list-group">${element.destino}</li>
                    </ul>           
                  `);
                });
              }else{
                mostrar.append("<div>El destino no existe</div>");
              }
            }else{
              mostrar.append("<div>Por favor digite más de dos caracteres</div>");
            }
           
          },
        });
       }else{
        $("#resultado").empty(); //Limpia los resultados anteriores
       }
      }
});
