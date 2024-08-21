
const listadoArticulosDOM = document.querySelector("#listado-articulos");
const botonAtrasDOM = document.querySelector("#atras");
const informacionPaginaDOM = document.querySelector("#informacion-pagina");
const botonSiguienteDOM = document.querySelector("#siguiente");
const plantillaArticulo = document.querySelector("#plantilla-articulo").content.firstElementChild;
const elementosPorPagina = 3;
let paginaActual = 1;
const baseDeDatos = []; 

/**
 * Función que pasa a la siguiente página
 * @return void
 */
function avanzarPagina() {

	paginaActual = paginaActual + 1;
	renderizar();
}

/**
 * Función que retrocedea la página anterior
 * @return void
 */
function retrocederPagina() {
	// Disminuye "paginaActual"
	paginaActual = paginaActual - 1;
	// Redibujar
	renderizar();
}

/**
 * Función que devuelve los datos de la página deseada
 * @param {Int) pagina - Número de página
 * @return {Array<JSON>}
 */
function obtenerRebanadaDeBaseDeDatos(pagina = 1) {
	const corteDeInicio = (paginaActual - 1) * elementosPorPagina;
	const corteDeFinal = corteDeInicio + elementosPorPagina;
	return baseDeDatos.slice(corteDeInicio, corteDeFinal);
}

/**
 * Función que devuelve el número total de páginas disponibles
 * @return {Int}
 */
function obtenerPaginasTotales() {
	return Math.ceil(baseDeDatos.length / elementosPorPagina);
}

/**
 * Función que gestiona los botones del paginador habilitando o
 * desactivando dependiendo de si nos encontramos en la primera
 * página o en la última.
 * @return void
*/
function gestionarBotones() {
	if (paginaActual === 1) {
		botonAtrasDOM.setAttribute("disabled", true);
	} else {
		botonAtrasDOM.removeAttribute("disabled");
	}
	if (paginaActual === obtenerPaginasTotales()) {
		botonSiguienteDOM.setAttribute("disabled", true);
	} else {
		botonSiguienteDOM.removeAttribute("disabled");
	}
}

/**
 * Función que se encarga de dibujar el nuevo DOM a partir de las variables
 * @return void
 */
function renderizar() {
	listadoArticulosDOM.innerHTML = "";
	const rebanadaDatos = obtenerRebanadaDeBaseDeDatos(paginaActual);
	gestionarBotones();
	informacionPaginaDOM.textContent = `${paginaActual}/${obtenerPaginasTotales()}`;
	rebanadaDatos.forEach(function (datosArticulo) {
		const miArticulo = plantillaArticulo.cloneNode(true);
		const miTitulo = miArticulo.querySelector("#titulo");
		miTitulo.textContent = datosArticulo.title;
		const miCuerpo = miArticulo.querySelector("#cuerpo");
		miCuerpo.textContent = datosArticulo.body;
		listadoArticulosDOM.appendChild(miArticulo);
	});
}

botonAtrasDOM.addEventListener("click", retrocederPagina);
botonSiguienteDOM.addEventListener("click", avanzarPagina);


renderizar();
