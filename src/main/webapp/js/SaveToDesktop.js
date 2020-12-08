
function save(){
    var text=document.getElementById('content').value;

    var blob = new Blob([text], {type : "text/plain;charset=utf-8"});

    saveAs(blob, 'text.txt');

}