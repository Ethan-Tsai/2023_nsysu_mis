function ShowEmail() {
    var passcode = prompt("Enter passcode to show email(web)");
    if (passcode == "web") {
        button1.style.display = "none";
        email.innerHTML = '<a href="https://www.google.com/intl/zh-TW_tw/gmail/about/"><button class="btn3" >ethan - tsai - 0129 @outlook.com</button>';
    } else {
        alert("Sorry, incorrect passcode");
    }
}

function ShowWea() {
    check_wea.style.display = "none";
    Weather.style.display = "block";
}