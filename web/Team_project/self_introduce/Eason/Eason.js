function fun() {
    var button = document.getElementById('id');
    var email = document.getElementById("email");

    ans = prompt("Enter your code to show email(web):");
    if (ans == "web") {
        button.style.display = "None";
        email.innerHTML = "loveu5201007@gmail.com"
    } else {
        alert("Sorry, incorrect passcode.");
    }
}