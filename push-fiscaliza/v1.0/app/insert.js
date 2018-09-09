function insertForm() {

    var formTemplate = jQuery("<form/>", {
        id: "insert",
        class: "notification"
    });

    jQuery("<h4/>", {
        html: "Inserir notificação"
    }).appendTo(formTemplate);

    jQuery("<input/>", {
        type: "text",
        name: "area",
        placeholder: "Área"
    }).appendTo(formTemplate);

    jQuery("<input/>", {
        type: "date",
        name: "data"
    }).appendTo(formTemplate);

    jQuery("<input/>", {
        type: "text",
        name: "politico",
        placeholder: "Político"
    }).appendTo(formTemplate);

    jQuery("<textarea/>", {
        placeholder: "Texto da notificação",
        rows: 4,
        name: "text"
    }).appendTo(formTemplate);

    jQuery("<textarea/>", {
        placeholder: "Dica",
        rows: 4,
        name: "dica"
    }).appendTo(formTemplate);

    jQuery("<textarea/>", {
        placeholder: "Telefones úteis",
        rows: 4,
        name: "uteis"
    }).appendTo(formTemplate);

    jQuery("<input/>", {
        type: "text",
        name: "emailFeedback",
        placeholder: "Email para feedback"
    }).appendTo(formTemplate);


    jQuery("<input/>", {
        type: "button",
        value: "Enviar",
        "onclick": "sendForm()"
    }).appendTo(formTemplate);

    jQuery(formTemplate).appendTo("#content");

}

function sendForm() {
    var data = {
        politico: jQuery("[name='politico']").val(),
        text: jQuery("[name='text']").val(),
        data: jQuery("[name='data']").val() + " 00:00:00",
        area: jQuery("[name='area']").val(),
        dica: jQuery("[name='dica']").val(),
        uteis: jQuery("[name='uteis']").val(),
        emailFeedback: jQuery("[name='emailFeedback']").val(),
        status: 1
    };

    jQuery.post("http://www.leobm.com.br/hackaton/services/insert.php", data)
        .done(function(data) {
            alert("Notificação enviada com sucesso!");
        })
        .fail(function(error) {
            console.log("error", error);
        });

}