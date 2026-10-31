import "dotenv/config";
import app from "./App.js";
import { pool } from "./config/db.js";

const PORT = process.env.PORT || 3000;

async function iniciar() {
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