function Login() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100">
      
      <div className="w-full max-w-md bg-white p-8 rounded-xl shadow-md">
        
        <h1 className="text-3xl font-bold text-center mb-8">
          QUIZ EDUCATIVO
        </h1>

        <div className="mb-4">
          <label className="block text-sm font-medium mb-2">
            E-mail
          </label>

          <input
            type="email"
            placeholder="Digite seu e-mail"
            className="w-full border border-gray-300 rounded-lg p-3"
          />
        </div>

        <div className="mb-6">
          <label className="block text-sm font-medium mb-2">
            Senha
          </label>

          <input
            type="password"
            placeholder="Digite sua senha"
            className="w-full border border-gray-300 rounded-lg p-3"
          />
        </div>

        <button
          className="w-full bg-blue-600 text-white p-3 rounded-lg font-semibold"
        >
          Entrar
        </button>

      </div>
    </div>
  )
}

export default Login