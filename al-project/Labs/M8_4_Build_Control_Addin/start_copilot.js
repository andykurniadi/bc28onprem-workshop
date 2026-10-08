var controlAddIn;
var headerDiv;
var githubLogo;
var copilotLogo;
var nameDiv;
var phoneDiv;
var emailDiv;

$(document).ready(function () {

    // remove default iframe body margin so #controlAddIn can reach the true edges
    $("html, body").css({
        "margin": "0",
        "padding": "0",
        "width": "100%",
        "box-sizing": "border-box"
    });

    controlAddIn = $("#controlAddIn");

    controlAddIn.css({
        "font-family": "Segoe UI, sans-serif",
        "padding": "0",
        "margin": "0",
        "width": "100%",
        "min-width": "100%",
        "left": "0",
        "right": "0",
        "min-height": "180px",
        "height": "auto",
        "max-height": "none",
        "box-sizing": "border-box",
        "display": "flex",
        "flex-direction": "column",
        "flex-wrap": "nowrap",
        "overflow": "visible",
        "white-space": "normal",
        "border": "2px solid #FFB900"
    });

    headerDiv = $("<div />").css({
        "display": "flex",
        "align-items": "center",
        "justify-content": "flex-start",
        "gap": "6px",
        "padding": "6px 8px 4px 8px",
        "border-bottom": "1px solid #e0e0e0",
        "width": "100%",
        "box-sizing": "border-box",
        "flex-shrink": 0,
        "min-height": "40px",
        "height": "auto",
        "max-height": "none"
    });

    copilotLogo = $(`
        <svg width="28" height="28" viewBox="0 0 48 48" style="display:block; flex-shrink:0;">
            <defs>
                <linearGradient id="copilotGradient" x1="0%" y1="0%" x2="100%" y2="100%">
                    <stop offset="0%" stop-color="#00A4EF"/>
                    <stop offset="35%" stop-color="#7FBA00"/>
                    <stop offset="70%" stop-color="#FFB900"/>
                    <stop offset="100%" stop-color="#F25022"/>
                </linearGradient>
            </defs>
            <rect x="4" y="4" width="40" height="40" rx="12" fill="url(#copilotGradient)"/>
            <circle cx="24" cy="24" r="10" fill="white" opacity="0.9"/>
        </svg>
    `);

    githubLogo = $(`
        <svg width="28" height="28" viewBox="0 0 16 16" fill="#24292e" style="display:block; flex-shrink:0;">
            <path d="M8 0C3.58 0 0 3.58 0 8 c0 3.54 2.29 6.53 5.47 7.59 c.4.07.55-.17.55-.38 c0-.19-.01-.82-.01-1.49 c-2.01.37-2.53-.49-2.69-.94 c-.09-.23-.48-.94-.82-1.13 c-.28-.15-.68-.52-.01-.53 c.63-.01 1.08.58 1.23.82 c.72 1.21 1.87.87 2.33.66 c.07-.52.28-.87.5-1.07 c-1.78-.2-3.64-.89-3.64-3.95 c0-.87.31-1.59.82-2.15 c-.08-.2-.36-1.02.08-2.12 c0 0 .67-.21 2.2.82 a7.57 7.57 0 012 0 c1.53-1.04 2.2-.82 2.2-.82 c.44 1.1.16 1.92.08 2.12 c.51.56.82 1.27.82 2.15 c0 3.07-1.87 3.75-3.65 3.95 c.29.25.54.73.54 1.48 c0 1.07-.01 1.93-.01 2.2 c0 .21.15.46.55.38 A8.013 8.013 0 0016 8 c0-4.42-3.58-8-8-8z"/>
        </svg>
    `);

    headerDiv.append(copilotLogo);
    headerDiv.append(githubLogo);

    nameDiv = $("<div />", { id: "nameDiv" }).css({
        "font-size": "13px",
        "font-weight": "600",
        "padding": "5px 8px 2px 8px",
        "line-height": "1.3",
        "word-wrap": "break-word",
        "display": "block",
        "color": "#000",
        "width": "100%",
        "box-sizing": "border-box",
        "overflow": "visible",
        "height": "auto",
        "max-height": "none",
        "min-height": "auto"
    });

    phoneDiv = $("<div />", { id: "phoneDiv" }).css({
        "font-size": "12px",
        "line-height": "1.3",
        "padding": "2px 8px",
        "word-wrap": "break-word",
        "display": "block",
        "color": "#333",
        "width": "100%",
        "box-sizing": "border-box",
        "overflow": "visible",
        "height": "auto",
        "max-height": "none",
        "min-height": "auto"
    });

    emailDiv = $("<div />", { id: "emailDiv" }).css({
        "font-size": "12px",
        "line-height": "1.3",
        "padding": "2px 8px 5px 8px",
        "word-wrap": "break-word",
        "display": "block",
        "color": "#333",
        "width": "100%",
        "box-sizing": "border-box",
        "overflow": "visible",
        "height": "auto",
        "max-height": "none",
        "min-height": "auto"
    });

    controlAddIn.append(headerDiv);
    controlAddIn.append(nameDiv);
    controlAddIn.append(phoneDiv);
    controlAddIn.append(emailDiv);
});

window.GetCustomerInfo = function (custInfo) {
    if (!nameDiv || !phoneDiv || !emailDiv) {
        return;
    }

    nameDiv.html("<b>Name:</b> " + (custInfo.name || "N/A"));
    phoneDiv.html("<b>Phone:</b> " + (custInfo.phone || "N/A"));
    emailDiv.html("<b>Email:</b> " + (custInfo.email || "N/A"));
};