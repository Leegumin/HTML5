import axios from "axios";

export default axios.create({
  // baseURL: "http://localhost:8080/api",
  // * localhost대신 ipconfig로 나온 IPv4 주소 써줌
  baseURL: "http://192.168.0.44:8000/api",
  headers: {
    "Content-type": "application/json"
  }
});
