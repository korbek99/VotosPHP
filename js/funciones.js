function validarFormulario() {
    var nombres = document.getElementById("nombres").value;

    if (nombres.trim() === "") {
        alert("Por favor, ingresa tu Nombre y Apellido.");
        return false;
    }

    return true;
}

function validarRut() {
    var rutInput = document.getElementById("rut").value.trim();
    var rutRegex = /^\d{1,2}\.\d{3}\.\d{3}-[0-9kK]{1}$/;
    if (!rutRegex.test(rutInput)) {
        alert("Formato de RUT incorrecto. Ejemplo válido: 12.345.678-9");
        return false;
    }

    var rutParts = rutInput.split("-");
    var rut = rutParts[0].split(".").join(""); 
    var digitoVerificador = rutParts[1].toUpperCase();

    var suma = 0;
    var multiplicador = 2;
    for (var i = rut.length - 1; i >= 0; i--) {
        suma += parseInt(rut.charAt(i)) * multiplicador;
        multiplicador = multiplicador === 7 ? 2 : multiplicador + 1;
    }

    var resto = suma % 11;
    var dvCalculado = 11 - resto;

    dvCalculado = dvCalculado === 10 ? "k" : dvCalculado.toString();

    if (dvCalculado !== digitoVerificador) {
        alert("Dígito verificador incorrecto.");
        //document.getElementById("rut").value = "";
        return false;
    }

    return true;
}

function cargarComunas() {
    var regionID = document.getElementById("region").value;
    // var nombreText = document.getElementById("nombre").value;
    // var aliasText = document.getElementById("alias").value;
    // var rutText = document.getElementById("rut").value;
    // var emailText = document.getElementById("email").value;
    //alert(regionID)
    window.location.href = 'index.php?regionID=' + regionID;
}

function validarAlias() {
     var alias = document.getElementById("alias").value;
    var regex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}$/;

    if (regex.test(alias)) {
        return true;
    } else {
        alert("El alias debe tener al menos 5 caracteres y contener al menos una letra y un número.");
        return false;
    }
 }

 function validarEmail() {
    var emailInput = document.getElementById("email");
    var email = emailInput.value;
    var regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

    if (!regex.test(email)) {
        alert("ingrese un correo electrónico válido.");
        emailInput.value = "";
        emailInput.focus();
    }
}
