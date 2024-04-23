"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
// import dotenv from "dotenv"
// dotenv.config()
var app = (0, express_1.default)();
var port = 8001;
app.get("/", function (req, res) {
    res.send("Express + Typescript Server!");
});
app.listen(port, function () {
    console.log("[Server] running PORT:8001");
});
