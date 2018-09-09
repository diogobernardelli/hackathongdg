function actionForm(notification) {

    var formTemplate = jQuery("<form/>", {
        id: notification.id
    });

    jQuery("<h4/>", {
        html: "Envie uma mensagem"
    }).appendTo(formTemplate);

    jQuery("<input/>", {
        type: "email",
        placeholder: "Seu email"
    }).appendTo(formTemplate);

    jQuery("<textarea/>", {
        placeholder: "Escreva sua mensagem que entregaremos para o endereço abaixo!",
        rows: 4
    }).appendTo(formTemplate);

    jQuery("<input/>", {
        type: "email",
        value: notification.emailFeedback,
        disabled: "disabled"
    }).appendTo(formTemplate);

    jQuery("<input/>", {
        type: "button",
        value: "Enviar",
        "onclick": "sendForm('" + notification.id + "')"
    }).appendTo(formTemplate);

    return formTemplate;

}

function sendForm(notificationId) {
    alert('Sua mensagem foi envida! A resposta deverá ir para o email que você colocou acima.');
    jQuery("form#" + notificationId + " input").attr("disabled", "disabled");
    jQuery("form#" + notificationId + " textarea").attr("disabled", "disabled");
}