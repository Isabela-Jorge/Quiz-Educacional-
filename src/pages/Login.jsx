import {useState} from "react"

//guarda o valor digitado no campo de email e senha
function Login() {
  const [email, setEmail] = useState("") 
  const [senha, setSenha] = useState("")

  //guarda a mensagem de erro do formulario
  const [erro, setErro] = useState("")

  //executa quando o usuário clica no botão "Entrar"
  const handleLogin = () => {
    if(!email || !senha){
    setErro("Preencha e-mail e senha.")
      return
    }

    setErro("")

    console.log("E-mail:", email)
    console.log("Senha:", senha)
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100">
      
      <div className="w-full max-w-md bg-white p-8 rounded-xl shadow-md">
        
        <h1 className="text-3xl font-bold text-center mb-2">
          QUIZ EDUCATIVO
        </h1>

        <p className="text-center text-gray-500 mb-8">
          Entre para continuar
        </p>

        <div className="mb-5">
          <label className="block text-sm font-medium mb-2"> 
            E-mail
          </label>

          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}  // Atualiza o estado sempre que o usuário digita
            placeholder="Digite seu e-mail"
            className="w-full border border-gray-300 rounded-lg p-3 outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>

        <div className="mb-6">
          <label className="block text-sm font-medium mb-2">
            Senha
          </label>

          <input
            type="password"
            value={senha}
            onChange={(e) => setSenha(e.target.value)}  // Atualiza o estado sempre que o usuário digita
            placeholder="Digite sua senha"
            className="w-full border border-gray-300 rounded-lg p-3 outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>

        {erro && (
          <p className="text-red-500 text-sm mb-4"> 
            {erro} 
          </p>
        )}

        <button
          onClick={handleLogin} // Chama a função de login ao clicar
          className="w-full bg-blue-600 text-white p-3 rounded-lg font-semibold hover:bg-blue-700 transition"
        >
          Entrar
        </button>

      </div>
    </div>
  )
}

export default Login