new Vue({
    el: "#app",
    data() {
        return {
            advice: "데이터 로딩중..."
        }
    },
    created() {
        axios.get("https://api.adviceslip.com/advice")
        // 성공시 작동하는 then
            .then((response)=>{
                console.log(response)
            })

        // 실패시 작동하는 catch
            .catch((error)=>{
                console.log(error);
            });
    },
})