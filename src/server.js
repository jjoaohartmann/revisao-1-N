import express from "express";
import cors from "cors"
import {prisma} from "./lib/prisma.ts"

const app = express()
const PORT = 3000

app.use(express.json())
app.use(cors())

app.post("/registro", async (req, res) =>{
    const {nome, cnpj, endereco, email, telefone} = req.body

    const novaMatriz = await prisma.matriz.create({
        data:{
            nome,
            cnpj,
            endereco,
            email,
            telefone
        }
    })
    return res.status(201).json({novaMatriz})
})

app.post("/registro/filial", async (req, res) => {
    const {nome, cnpj, endereco, telefone, email, matrizId} = req.body

    const novaFilial = await prisma.filial.create({
        data:{
            nome,
            cnpj,
            endereco,
            telefone,
            email,
            matrizId,
        }
    })
})

app.listen(PORT, () => {
    console.log("Api rodando!")
})