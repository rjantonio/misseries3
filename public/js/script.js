

$(document).ready(function() {

    var enviar = $('#enviar');

    var url = $('#url').attr('value');

    enviar.click(function(e) {

        //evita el envío del formulario y envía los datos a ser validados
        e.preventDefault();

        var titulo = $("#titulo").val();
        var fecha = $("#fecha").val();
        var temporadas = $("#temporadas").val();
        var plataforma = $("#plataforma").val();
        var archivo = $("#archivo").val();
        var generos = $("#generos").val();
        var argumento = $("#argumento").val();
        var enviar = $("#enviar").val();

        $(".form-message").load(url, {
            titulo: titulo,
            fecha: fecha,
            temporadas: temporadas,
            plataforma: plataforma,
            archivo: archivo,
            generos: generos,
            argumento: argumento,
            enviar: enviar
        });

    });

});
