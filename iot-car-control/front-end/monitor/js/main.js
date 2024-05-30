
let mensaje=document.getElementById("mensaje");


function callApiRequest() {
  // Hacer una petición para un usuario con ID especifico
  axios
    .get(
      "https://18.191.249.161/iot-car-control/back-end/apis/getRegistro.php")
    .then(function (response) {
      // manejar respuesta exitosa

    let respuestaServidor = 
    response.data == "f"
    ? "ADELANTE"
    :response.data == "b"
    ? "ATRAS"
    :response.data == "l"
    ? "IZQUIERDA"
    :response.data == "r"
    ? "DERECHA"
    :"DETENER ";
      console.log(response);
      mensaje.innerHTML="Respuesta: <strong>" + respuestaServidor +"</strong>";
    })
    .catch(function (error) {
      // manejar error
      console.log(error);
    })
    .finally(function () {
      // siempre sera executado
    });
}
setInterval(callApiRequest, 2000);
