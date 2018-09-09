function getAreaCode(areaDesc) {
    var areaCode = "all";
    switch (areaDesc) {
        case "Saúde":
            areaCode = "saude";
            break;
        case "Segurança":
            areaCode = "seguranca";
            break;
        case "Obras Públicas":
            areaCode = "obras-publicas";
            break;
        case "Transporte":
            areaCode = "transporte";
            break;
        case "Cultura":
            areaCode = "cultura";
            break;
        case "Educação":
            areaCode = "educacao";
            break;
        default:
            break;
    }
    return areaCode;
}

function setLateralBarHeight() {
    jQuery("#lateral-bar").height(jQuery(window).height())
}

var notificationsFromDB;
var selectedAreas = {
    "Saúde": true,
    "Educação": true,
    "Segurança": true,
    "Obras Públicas": true,
    "Transporte": true,
    "Cultura": true,
    "Educação": true
};

function getInitialData() {

    if (!localStorage.getItem("secondIn")) {
        showWelcome();
        localStorage.setItem("secondIn", true);
    }

    jQuery.getJSON("http://www.leobm.com.br/hackaton/services/info.php", function(data) {
        notificationsFromDB = data.info;
        createList();
    });
};

function createList() {

    jQuery("article").remove();

    notificationsFromDB.forEach((notification) => {

        if (selectedAreas[notification.area] === false) { return }

        var newNotification = jQuery("<article/>", {
            class: "notification " + getAreaCode(notification.area),
            id: notification.id
        })

        var articleHeader = jQuery("<header/>");

        jQuery("<b/>", {
            class: "notification-area",
            html: notification.area
        }).appendTo(articleHeader);

        jQuery("<i/>", {
            class: "notification-date",
            html: notification.data
        }).appendTo(articleHeader);

        jQuery(articleHeader).appendTo(newNotification);

        jQuery("<h2/>", {
            class: "notification-politician",
            html: notification.politico
        }).appendTo(newNotification);

        var notificationText = jQuery("<p/>", {
            class: "notification-text",
            html: notification.text
        })

        jQuery("<div/>", {
            class: "notification-tip",
            html: notification.dica
        }).appendTo(notificationText);

        jQuery("<h4/>", {
            html: "Telefones úteis"
        }).appendTo(notificationText);

        jQuery("<div/>", {
            class: "notification-utils",
            html: notification.uteis
        }).appendTo(notificationText);

        jQuery(actionForm(notification)).appendTo(notificationText);

        jQuery(notificationText).appendTo(newNotification);

        jQuery("<div/>", {
            class: "expand-card",
            "onclick": "readText(this, event)",
            html: "<img src='down-icon.png'>"
        }).appendTo(newNotification);

        jQuery(newNotification).appendTo("#content");

    });

}

function toggleMenu() {
    jQuery("#menu").toggleClass("active");
}

function hideMenu() {
    jQuery("#menu").removeClass("active");
}

function readText(elem, event) {
    jQuery(elem).parent().toggleClass("reading");
    event.stopPropagation();
}

function filter(filter) {
    selectedAreas[filter] = !selectedAreas[filter];
    createList();
}

function showWelcome() {
    jQuery("<div/>", {
        class: "welcome-screen",
        "onclick": "jQuery('.welcome-screen').remove()",
        html: "<span>A ferramenta para fiscalizar o poder público campo-grandense nas suas mãos.<br/><br/>Push. Fiscalize.</span>"
    }).appendTo("#content");
    jQuery(".welcome-screen").css({ "height": jQuery(window).height() });
}