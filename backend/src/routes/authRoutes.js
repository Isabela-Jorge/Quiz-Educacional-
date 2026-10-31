
import { Router } from "express";
import {
    cadastrar,
    login,
    me,
    listarUsuarios,
    logout
} from "../controllers/authController.js";
import { autenticar } from "../middlewares/authMiddleware.js";
import {
    listarMaterias,
    iniciarQuiz,
    responder,
    refazer
} from "../controllers/quizController.js";
import {
    resultado,
    consultarRanking,
    consultarDesempenho
} from "../controllers/resultadocontroller.js";

const router = Router();

// Autenticação
router.post("/usuarios", cadastrar);
router.post("/login", login);
router.get("/auth/me", autenticar, me);
router.get("/usuarios", autenticar, listarUsuarios);
router.post("/logout", autenticar, logout);
router.get("/ranking", autenticar, consultarRanking);
router.get(
    "/usuarios/:usuarioid/desempenho",
    autenticar,
    consultarDesempenho
);

// Matérias disponíveis
router.get("/materias", autenticar, listarMaterias);

// Execução do quiz
router.post("/quiz/iniciar", autenticar, iniciarQuiz);
router.post("/quiz/:tentativaId/responder", autenticar, responder);
router.post("/quiz/:tentativaId/resultado", autenticar, resultado);
router.post("/quiz/refazer", autenticar, refazer);

export default router;
