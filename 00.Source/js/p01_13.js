function changeText() {

    let x = 10, y = 20;

    if (x == y) {
        let str = document.getElementById("text");
        str.innerHTML = "x는 y와 같슴다.";
    }
    else { 
        if (x < y) {
            let str = document.getElementById("text");
            str.innerHTML = "x는 y보다 작슴다.";
        } 
        else {
            let str = document.getElementById("text");
            str.innerHTML = "x는 y보다 큼다."; 
        }
    }
   
}