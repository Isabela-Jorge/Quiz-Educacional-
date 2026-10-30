import { useState } from "react";

function Cadastro({ irParaLogin }) {
  const [nome, setNome] = useState("");
  const [email, setEmail] = useState("");
  const [senha, setSenha] = useState("");

  const [erro, setErro] = useState("");
  const [carregando, setCarregando] = useState(false);

  const handleCadastro = async (e) => {
    e.preventDefault();
    setErro("");

    if (!nome.trim() || !email.trim() || !senha) {
      setErro("Preencha todos os campos obrigatórios.");
      return;
    }

    if (senha.length < 6) {
      setErro("A senha deve ter pelo menos 6 caracteres.");
      return;
    }

    try {
      setCarregando(true);

      const resposta = await fetch("http://localhost:3000/api/cadastro", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          nome,
          email,
          senha,
        }),
      });

      const resultado = await resposta.json();

      if (!resposta.ok) {
        throw new Error(resultado.mensagem || "Erro ao realizar o cadastro.");
      }

      if (irParaLogin) irParaLogin();
    } catch (error) {
      setErro(error.message || "Não foi possível conectar ao servidor.");
    } finally {
      setCarregando(false);
    }
  };

  return (
    <main 
      className="min-h-screen flex items-center justify-center p-5"
      style={{ backgroundColor: "var(--color-light-purple)" }}
    >
      <div 
        className="w-full max-w-[480px] rounded-[24px] p-8 shadow-2xl transition-all"
        style={{ 
          backgroundColor: "var(--color-dark-purple)", 
          color: "var(--color-off-white)" 
        }}
      >
        <div className="text-center mb-8">
          <h1 className="text-3xl font-extrabold mb-2 tracking-tight">
            Criar Conta
          </h1>
          <p 
            className="text-xs uppercase font-semibold tracking-wider opacity-80"
            style={{ color: "var(--color-light-purple)" }}
          >
            Preencha os dados para se registar
          </p>
        </div>

        <form onSubmit={handleCadastro} className="flex flex-col gap-4">
          
          <div className="flex flex-col gap-1 text-left">
            <label className="text-xs font-bold uppercase tracking-wider opacity-90">
              Nome Completo
            </label>
            <input
              type="text"
              placeholder="Ex: Ana Silva"
              value={nome}
              onChange={(e) => setNome(e.target.value)}
              disabled={carregando}
              className="w-full h-11 px-4 rounded-lg text-sm outline-none transition"
              style={{ 
                backgroundColor: "var(--color-off-white)", 
                color: "var(--color-dark-purple)" 
              }}
            />
          </div>

          <div className="flex flex-col gap-1 text-left">
            <label className="text-xs font-bold uppercase tracking-wider opacity-90">
              E-mail
            </label>
            <input
              type="email"
              placeholder="seu@email.com"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              disabled={carregando}
              className="w-full h-11 px-4 rounded-lg text-sm outline-none transition"
              style={{ 
                backgroundColor: "var(--color-off-white)", 
                color: "var(--color-dark-purple)" 
              }}
            />
          </div>

          <div className="flex flex-col gap-1 text-left">
            <label className="text-xs font-bold uppercase tracking-wider opacity-90">
              Senha
            </label>
            <input
              type="password"
              placeholder="Mínimo 6 caracteres"
              value={senha}
              onChange={(e) => setSenha(e.target.value)}
              disabled={carregando}
              className="w-full h-11 px-4 rounded-lg text-sm outline-none transition"
              style={{ 
                backgroundColor: "var(--color-off-white)", 
                color: "var(--color-dark-purple)" 
              }}
            />
          </div>

          {erro && (
            <div className="bg-red-500/20 border border-red-400 p-3 rounded-lg text-center mt-1">
              <p className="text-xs text-red-200 font-medium">{erro}</p>
            </div>
          )}

          <button
            type="submit"
            disabled={carregando}
            className="w-full h-11 mt-3 rounded-lg text-sm font-bold uppercase tracking-wider cursor-pointer transition duration-200 hover:brightness-110 active:scale-[0.98] disabled:opacity-50"
            style={{ 
              backgroundColor: "var(--color-digital-orange)", 
              color: "var(--color-off-white)" 
            }}
          >
            {carregando ? "A Registar..." : "Registar"}
          </button>
        </form>

        <div className="text-center mt-6 text-xs opacity-90">
          <p>
            Já tem uma conta?{" "}
            <button
              type="button"
              onClick={irParaLogin}
              className="font-bold hover:underline cursor-pointer bg-transparent border-none ml-1"
              style={{ color: "var(--color-digital-orange)" }}
            >
              Faça login aqui
            </button>
          </p>
        </div>

      </div>
    </main>
  );
}

export default Cadastro;