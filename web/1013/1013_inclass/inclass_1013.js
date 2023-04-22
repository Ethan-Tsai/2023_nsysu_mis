function ShowEmail() {
    var passcode = prompt("Enter passcode to show email");
    if (passcode == "web") {
        button1.style.display = "none";
        email.innerHTML = "ethan-tsai-0129@outlook.com";
    } else {
        alert("Sorry, incorrect passcode");
    }
}