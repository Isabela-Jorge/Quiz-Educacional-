
import { useState } from "react";
import Login from "./pages/Login";
import Perfil from "./pages/Perfil";

function App() {
  const [tela, setTela] = useState("perfil");

  return (
    <>
      {tela === "login" ? (
        <Login />
      ) : (
        <Perfil
          onVoltar={() => setTela("login")}
          onLogout={() => setTela("login")}
        />
      )}
    </>
  );
}

export default App;