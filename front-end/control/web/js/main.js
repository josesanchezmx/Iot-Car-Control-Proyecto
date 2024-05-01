//alert("Hola mundo");
let adelante =document.getElementById("adelante");

function callApi(estatus) {
  // Hacer una petición para un usuario con ID especifico
  axios
    .get(
      "http://localhost/iot-car-control/back-end/apis/setRegistro.php?valorEstatus=" +
        estatus
    )
    .then(function (response) {
      // manejar respuesta exitosa
      console.log(response);
    })
    .catch(function (error) {
      // manejar error
      console.log(error);
    })
    .finally(function () {
      // siempre sera executado
    });
}

adelante.addEventListener("click", function () {
    callApi('f');
});
