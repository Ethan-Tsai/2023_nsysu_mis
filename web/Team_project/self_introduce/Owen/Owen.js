function showEmail() {
    var enter_code = prompt("Enter passcode to show email(web):");
    var btt = document.getElementById("btt");
    var email = document.getElementById("email");
    if (enter_code == "web") {
        btt.style.display = "None";
        email.innerHTML = "owen0928092110@gmail.com";
    } else {
        alert("Sorry, incorrect passcode.");
    }

}