const express = require("express");
const path = require("path")

//express 웹서버 정의
const app = express();

//포트 설정
app.set("port", process.env.PORT || 3000);

//get 메서드로 텍스트 또는 파일을 실행
// req = requestion, res = response
app.get("/", (req, res) => {
    // html 파일 읽기 :  /파일이름.html 라우터에서 실행
    res.sendFile(path.join(__dirname, "/index.html"));
})

//웹서버 계속 실행(위에서 정의한 포트로 계속 대기)
app.listen(app.get("port"), () => {
    console.log(app.get("port"), "번 포트에서 대기중")
})