function updateContent() {
    if (currentPage===1) {
        const contentHtml = `
       <div class="contenido">
    <div class="container_paquetes1">
        <div class="imagen">
            <img src="/img/R.jpeg" alt="">
        </div>
        <div class="container_informacion">
            <div class="informacion">
                <ul>
                    <h3>Producto RumboTravel - Choco - eje cafetero1</h3>
                    <p>3 Días  2 Noche(s)</p>
                    <p>Acomodación: Cuadruple</p>
                    <p>Vigencia de viaje desde 2024-08-06 hasta 2024-12-20</p>         
                    <span>Ubicado en nuqui. A 50 minutos del aeropuerto de nuqui.</span><br>
                    <p></p><strong></strong>*Tarifas sujetas a cambio y disponibilidad sin previo aviso</strong></p>
                    
                </ul>
            </div>
            <hr>
            <div class="boton">
                <div class="container_tex">
                    <div class="p_valor">desde</div>
                    <div class="container_valor">
                        <h6>1.042.000</h6>
                        <p class="p_valor2">COP/Por persona y por estadía</p>
                    </div>
                    
                </div>
                
               <button class="color_boton">Ver mas </button>
            </div>
        </div>
    </div>

    <div class="container_paquetes2">
        <div class="imagen">
            <img src="/img/cabanas-playa-terco.jpg" alt="">
        </div>
        <div class="container_informacion">
            <div class="informacion">
                <ul>
                    <h3>Producto RumboTravel - Choco -eje cafetero2</h3>
                    <p>3 Días  2 Noche(s)</p>
                    <p>Acomodación: Cuadruple</p>
                    <p>Vigencia de viaje desde 2024-08-06 hasta 2024-12-20</p>         
                    <span>Ubicado en nuqui. A 50 minutos del aeropuerto de nuqui.</span><br>
                    <p></p><strong></strong>*Tarifas sujetas a cambio y disponibilidad sin previo aviso</strong></p>
                    
                </ul>
            </div>
            <hr>
            <div class="boton">
                <div class="container_tex">
                    <div class="p_valor">desde</div>
                    <div class="container_valor">
                        <h6>1.042.000</h6>
                        <p class="p_valor2">COP/Por persona y por estadía</p>
                    </div>
                    
                </div>
                
               <button class="color_boton">Ver mas </button>
            </div>
        </div>
    </div>
</div>
      `;
    const div1 = document.getElementById("div1");
    const page1 = document.getElementById("page1");
    const page2 = document.getElementById("page2");
    const page3 = document.getElementById("page3");
   div1.style.background="rgb(126, 128, 138)";
   page1.style.color="white"
   page2.style.color="black"
   page3.style.color="black"
   div2.style.background="none";
   div3.style.background="none";
      content.innerHTML = contentHtml;
    }else if (currentPage===2) {

        const contentHtml = `      
    <div class="contenido">
    <div class="container_paquetes1">
        <div class="imagen">
            <img src="/img/guachalito (1).jpeg" alt="">
        </div>
        <div class="container_informacion">
            <div class="informacion">
                <ul>
                    <h3>Producto RumboTravel - eje cafetero3</h3>
                    <p>3 Días  2 Noche(s)</p>
                    <p>Acomodación: Cuadruple</p>
                    <p>Vigencia de viaje desde 2024-08-06 hasta 2024-12-20</p>         
                    <span>Ubicado en nuqui. A 50 minutos del aeropuerto de nuqui.</span><br>
                    <p></p><strong></strong>*Tarifas sujetas a cambio y disponibilidad sin previo aviso</strong></p>
                    
                </ul>
            </div>
            <hr>
            <div class="boton">
                <div class="container_tex">
                    <div class="p_valor">desde</div>
                    <div class="container_valor">
                        <h6>1.242.000</h6>
                        <p class="p_valor2">COP/Por persona y por estadía</p>
                    </div>
                    
                </div>
                
               <button class="color_boton">Ver mas </button>
            </div>
        </div>
    </div>

    <div class="container_paquetes2">
        <div class="imagen">
            <img src="/img/morromico (1).jpeg" alt="">
        </div>
        <div class="container_informacion">
            <div class="informacion">
                <ul>
                    <h3>Producto RumboTravel -eje cafetero4</h3>
                    <p>3 Días  2 Noche(s)</p>
                    <p>Acomodación: Cuadruple</p>
                    <p>Vigencia de viaje desde 2024-08-06 hasta 2024-12-20</p>         
                    <span>Ubicado en nuqui. A 50 minutos del aeropuerto de nuqui.</span><br>
                    <p></p><strong></strong>*Tarifas sujetas a cambio y disponibilidad sin previo aviso</strong></p>
                    
                </ul>
            </div>
            <hr>
            <div class="boton">
                <div class="container_tex">
                    <div class="p_valor">desde</div>
                    <div class="container_valor">
                        <h3>1.042.000</h3>
                        <p class="p_valor2">COP/Por persona y por estadía</p>
                    </div>
                    
                </div>
                
               <button class="color_boton">Ver mas </button>
            </div>
        </div>
    </div>
  </div>
  `;
  const div2 = document.getElementById("div2");
  const page2 = document.getElementById("page2");
  const page1 = document.getElementById("page1");
    const page3 = document.getElementById("page3");
   div2.style.background="rgb(126, 128, 138)";
   page2.style.color="white";
    page1.style.color="black"
   page3.style.color="black"
   div1.style.background="none";
   div3.style.background="none";
  content.innerHTML = contentHtml;

    }else if(currentPage===3) {
        const contentHtml = `      
        <div class="contenido">
        <div class="container_paquetes1">
            <div class="imagen">
                <img src="/img/guachalito (1).jpeg" alt="">
            </div>
            <div class="container_informacion">
                <div class="informacion">
                    <ul>
                        <h3>Producto RumboTravel -eje cafetero5</h3>
                        <p>3 Días  2 Noche(s)</p>
                        <p>Acomodación: Cuadruple</p>
                        <p>Vigencia de viaje desde 2024-08-06 hasta 2024-12-20</p>         
                        <span>Ubicado en nuqui. A 50 minutos del aeropuerto de nuqui.</span><br>
                        <p></p><strong></strong>*Tarifas sujetas a cambio y disponibilidad sin previo aviso</strong></p>
                        
                    </ul>
                </div>
                <hr>
                <div class="boton">
                    <div class="container_tex">
                        <div class="p_valor">desde</div>
                        <div class="container_valor">
                            <h6>1.242.000</h6>
                            <p class="p_valor2">COP/Por persona y por estadía</p>
                        </div>
                        
                    </div>
                    
                   <button class="color_boton">Ver mas </button>
                </div>
            </div>
        </div>
    `;
    const div3 = document.getElementById("div3");
    const color = document.getElementById("page3");
    const page2 = document.getElementById("page2");
    const page1 = document.getElementById("page1");
    div3.style.background="rgb(126, 128, 138)";
    div1.style.background="none";
    div2.style.background="none";
    color.style.color="white";
    page2.style.color="black"
   page1.style.color="black"
    content.innerHTML = contentHtml;
  }
}