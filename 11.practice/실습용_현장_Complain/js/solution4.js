function tableBackground(){
    let table = document.querySelector('table');
	let tr = table.getElementsByTagName("tr");
	for(var i=0; i<tr.length; i++){
        if(tr[i] % 2 == 1){
		tr[i].style.backgroundColor = "gray";
		}
		else {
			tr[i].style.backgroundColor = 'white';
		}
	}
}

// function HighlightRow(obj){

// 	var table = document.getElementId("tableId");
// 	var tr = table.getElementsByTagName("tr");
// 	for(var i=0; i<tr.length; i++){
// 		tr[i].style.background = "white";
// 	}
// 	obj.style.backgroundColor = "#FCE6E0";

// }
