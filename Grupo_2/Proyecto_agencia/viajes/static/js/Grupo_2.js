$(document).ready(function () {
    $('#CajaTexto').on('input', function() {
        buscarDestino();
    });

    $('#BotonBusqueda').on('click', function(e) {
        let Buscar = $('#CajaTexto')[0];
        let Buscador = $('#CajaTexto').val();
        if(!Buscar.checkValidity()) {
            e.preventDefault();
            e.stopPropagation();
            Swal.fire({
                icon: "error",
                title: "Error...",
                text: "Porfavor Llenar los campos!",
              });     
            return;
        }else{
            console.log(Buscador);
        }
    });

    function buscarDestino(){
        let destino = $("#CajaTexto").val().trim();
        if(destino.length > 0){
            $.ajax({
                url: "rumbotravel/destino",
                data: {q:destino},
                success: function(data){
                    console.log(data);
                    let result = $("#resultado");
                    result.empty();
                    if(destino.length > 2){
                        if(data.length){
                         data.forEach((element)=>{
                            result.append(`
                                <ul class="list-group">
                                <li class="list-group-item ListaDes">${element.destino}</li>
                                </ul>
                                `);
                         });   
                         $('.ListaDes').on('click', function(e) {
                             let selecion_destino = $(this).text();
                             $('#destino_paquete').val(selecion_destino);
                             result.empty();
                         });

                        }else{
                            result.append("<div>No se encontró resultados</div>");
                        }
                    }else{
                        result.append("<div>Digite màs caracteres</div>");                    
                    }
                },
            });
        }else{
            $("#resultado");
            result.empty();
        }
    }
})