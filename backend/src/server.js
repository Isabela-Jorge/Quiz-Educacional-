import express from "express";
import cors from "cors";
import "dotenv/config";
import authRoutes from "./routes/authRoutes.js";
import { pool } from "./config/db.js";

const app = express();
const PORT = Number(process.env.PORT || 3000);

app.use(cors({ origin: "http://localhost:5173" }));
app.use(express.json());

app.get("/", (req, res) => {
  res.json({ mensagem: "API de autenticação funcionando" });
});

app.use(authRoutes);

async function iniciar() {
  if (!process.env.JWT_SECRET) {
    console.error("A variável JWT_SECRET não foi configurada.");
    process.exit(1);
  }

  if (!Number.isInteger(PORT) || PORT < 1 || PORT > 65535) {
    console.error("A variável PORT deve ser uma porta válida.");
    process.exit(1);
  }

  try {
    const connection = await pool.getConnection();
    console.log("MySQL conectado com sucesso");
    connection.release();

    app.listen(PORT, () => {
      console.log(`Servidor rodando em http://localhost:${PORT}`);
    });
  } catch (erro) {
    console.error("Erro ao conectar no MySQL:", erro.message);
    process.exit(1);
  }
}

iniciar();
