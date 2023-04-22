document.cookie = 'cookie3=value3';

function swapText() {
    var span = document.getElementById("output2");
    var textBox = document.getElementById("textbox2");
    var temp = span.innerHTML;
    span.innerHTML = textBox.value;
    textBox.value = temp;
}