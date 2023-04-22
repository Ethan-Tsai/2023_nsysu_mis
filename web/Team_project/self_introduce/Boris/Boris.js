function handleclick(element) {
    var password = prompt("password(web):");
    var bt = document.getElementById("showemail")
    var sw = document.getElementById("container")
    if (password == "web") {
        bt.style.display = "none";
        sw.innerHTML = "qwe03458qwe@gmail.com";
    } else {
        alert("Sorry, incorrect password")
    }
}