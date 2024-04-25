import express, {Express, Request, Response} from "express"

// import dotenv from "dotenv"

// dotenv.config()

const app: Express = express()

const port:number = 8001

app.get("/test", (req:Request, res:Response) => {
    console.log("Get")
    res.status(200).send("Express + Typescript Server!")
})

app.post("/data", (req:Request, res: Response) => {
    console.log("POST")
    const data = req.body 
    console.log(data)

    res.status(200).json({msg: "POST Route"})
})

app.listen(port, () => {
    console.log("[Server] running PORT:8001")
})
