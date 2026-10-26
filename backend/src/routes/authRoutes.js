import { Router } from "express";
import {
    cadastrar,
    login,
    me,
    listarUsuarios,
    logout
} from "../controllers/authController.js";

import { autenticar } from "../middlewares/authMiddleware.js";

const router = Router();

router.post("/usuarios", cadastrar);
router.post("/login", login);
router.get("/auth/me", autenticar, me);
router.get("/usuarios", autenticar, listarUsuarios);
router.post("/logout", autenticar, logout);

export default router;