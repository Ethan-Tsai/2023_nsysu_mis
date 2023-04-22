//alert("message"); // message
//confirm("click ok to contiuned"); // returns true or false

//prompt("Enter your name"); // returns user input string

function swapText() {
    var span = document.getElementById("output2");
    var textBox = document.getElementById("textbox2");
    var temp = span.innerHTML;
    span.innerHTML = textBox.value;
    textBox.value = temp;
}