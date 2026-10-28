
import { useRef, useState } from "react";

import avatar1 from "../assets/avatares/avatar1.png";
import avatar2 from "../assets/avatares/avatar2.png";
import avatar3 from "../assets/avatares/avatar3.png";
import avatar4 from "../assets/avatares/avatar4.png";
import avatar5 from "../assets/avatares/avatar5.png";
import avatar6 from "../assets/avatares/avatar6.png";
import avatar7 from "../assets/avatares/avatar7.png";
import avatar8 from "../assets/avatares/avatar8.png";

function Perfil({
  nome = "Aluno Teste",
  usuarioInicial = "aluno123",
  onVoltar = () => {},
  onLogout = () => {},
}) {
  const avatares = [
    avatar1,
    avatar2,
    avatar3,
    avatar4,
    avatar5,
    avatar6,
    avatar7,
    avatar8,
  ];

  const [usuario, setUsuario] = useState(usuarioInicial);
  const [novoUsuario, setNovoUsuario] = useState(usuarioInicial);
  const [editandoUsuario, setEditandoUsuario] = useState(false);
  const [erroUsuario, setErroUsuario] = useState("");

  const carrosselRef = useRef(null);

  const [foto, setFoto] = useState(
    () => localStorage.getItem("avatarPerfil") || avatar1
  );

  const handleFoto = (avatar) => {
    setFoto(avatar);
    localStorage.setItem("avatarPerfil", avatar);
  };

  // Salvar alteração do nome de usuário
  const handleSalvarUsuario = (e) => {
    e.preventDefault();

    const valor = novoUsuario.trim();

    if (!valor) {
      setErroUsuario("Digite um nome de usuário.");
      return;
    }

    if (valor.length < 3) {
      setErroUsuario(
        "O nome de usuário deve ter pelo menos 3 caracteres."
      );
      return;
    }

    setUsuario(valor);
    setNovoUsuario(valor);
    setErroUsuario("");
    setEditandoUsuario(false);
  };

  const handleCancelarEdicao = () => {
    setNovoUsuario(usuario);
    setErroUsuario("");
    setEditandoUsuario(false);
  };

  return (
    <main className="min-h-screen bg-[var(--color-light-purple)] p-5">
      <div className="mx-auto w-full max-w-[900px]">

        {/* Cabeçalho */}
        <header className="mb-6 flex items-center justify-between gap-3">
          <button
            type="button"
            onClick={onVoltar}
            className="rounded-[7px] px-3 py-2 text-[13px]
              font-bold text-[var(--color-dark-purple)]
              transition duration-200 hover:bg-white/50
              focus-visible:outline-none focus-visible:ring-2
              focus-visible:ring-[var(--color-dark-purple)]"
          >
            ← Voltar
          </button>

          <h1 className="text-[26px] font-bold text-[var(--color-dark-purple)]
            sm:text-[34px]">
            Meu perfil
          </h1>

          <div className="w-[60px]" aria-hidden="true" />
        </header>

        {/* Card principal */}
        <section
          aria-labelledby="perfil-titulo"
          className="overflow-hidden rounded-[30px]
            bg-[var(--color-off-white)]
            shadow-[0_20px_45px_rgba(71,25,109,0.20)]"
        >
          {/* Área roxa do perfil */}
          <div className="bg-[var(--color-dark-purple)]
            px-5 py-8 text-center text-[var(--color-off-white)] sm:py-10">

            {/* Foto de perfil */}
<div className="mx-auto mb-6">
  <div
    className="mx-auto mb-4 flex h-28 w-28 items-center
      justify-center overflow-hidden rounded-full border-4
      border-[var(--color-off-white)]
      bg-[var(--color-light-purple)]"
  >
    <img
      src={foto}
      alt={`Avatar de perfil de ${nome}`}
      className="h-full w-full object-cover"
    />
  </div>

  <p className="mb-4 text-center text-[13px]
    text-[var(--color-light-purple)]">
    Escolha sua foto de perfil
  </p>

  {/* Carrossel de avatares */}
<div className="mt-4">
  <div className="flex items-center gap-2">

    {/* Seta para a esquerda */}
    <button
      type="button"
      onClick={() => {
        carrosselRef.current?.scrollBy({
          left: -160,
          behavior: "smooth",
        });
      }}
      aria-label="Avatares anteriores"
      className="shrink-0 rounded-full bg-white/20
        px-3 py-2 text-xl text-white hover:bg-white/30"
    >
      ‹
    </button>

    {/* Fotos dos avatares */}
    <div
      ref={carrosselRef}
      className="flex flex-1 gap-3 overflow-x-auto
        scroll-smooth px-1 py-3"
    >
      {avatares.map((avatar, index) => (
        <button
          key={index}
          type="button"
          onClick={() => handleFoto(avatar)}
          aria-label={`Selecionar avatar ${index + 1}`}
          aria-pressed={foto === avatar}
          className={`shrink-0 rounded-full border-4 p-1
            transition hover:scale-105 ${
              foto === avatar
                ? "border-[var(--color-digital-orange)]"
                : "border-transparent"
            }`}
        >
          <img
            src={avatar}
            alt={`Avatar ${index + 1}`}
            className="h-14 w-14 rounded-full object-cover"
          />
        </button>
      ))}
    </div>

    {/* Seta para a direita */}
    <button
      type="button"
      onClick={() => {
        carrosselRef.current?.scrollBy({
          left: 160,
          behavior: "smooth",
        });
      }}
      aria-label="Próximos avatares"
      className="shrink-0 rounded-full bg-white/20
        px-3 py-2 text-xl text-white hover:bg-white/30"
    >
      ›
    </button>

  </div>
</div>
</div>

            <h2 id="perfil-titulo"
              className="break-words text-[26px] font-bold sm:text-[30px]">
              {nome}
            </h2>

            <p className="mt-2 text-[14px]
              text-[var(--color-light-purple)]">
              Perfil do aluno
            </p>
          </div>

          {/* Dados pessoais */}
          <div className="p-5 sm:p-10">
            <h3 className="mb-6 text-[22px] font-bold
              text-[var(--color-dark-purple)]">
              Dados da conta
            </h3>

            {/* Nome da pessoa: não editável */}
            <div className="mb-5">
              <label
                htmlFor="perfil-nome"
                className="mb-2 block text-[13px] font-bold
                  text-[var(--color-dark-purple)]"
              >
                Nome completo
              </label>

              <input
                id="perfil-nome"
                type="text"
                value={nome}
                readOnly
                className="h-[46px] w-full rounded-[7px]
                  bg-[#e4e2e5] px-[15px] text-[14px]
                  text-[var(--color-dark-purple)]
                  outline-none"
              />
            </div>

            {/* Nome de usuário: editável */}
            <div>
              <div className="mb-2 flex flex-wrap items-center
                justify-between gap-2">
                <label
                  htmlFor="perfil-usuario"
                  className="text-[13px] font-bold
                    text-[var(--color-dark-purple)]"
                >
                  Nome de usuário
                </label>

                {!editandoUsuario && (
                  <button
                    type="button"
                    onClick={() => {
                      setNovoUsuario(usuario);
                      setErroUsuario("");
                      setEditandoUsuario(true);
                    }}
                    className="text-[12px] font-bold
                      text-[var(--color-dark-purple)]
                      underline underline-offset-2
                      hover:opacity-70"
                  >
                    Alterar usuário
                  </button>
                )}
              </div>

              {editandoUsuario ? (
                <form onSubmit={handleSalvarUsuario}>
                  <input
                    id="perfil-usuario"
                    type="text"
                    value={novoUsuario}
                    onChange={(e) => {
                      setNovoUsuario(e.target.value);
                      setErroUsuario("");
                    }}
                    minLength={3}
                    maxLength={30}
                    autoComplete="username"
                    autoFocus
                    aria-invalid={Boolean(erroUsuario)}
                    aria-describedby={
                      erroUsuario ? "erro-usuario" : undefined
                    }
                    className="h-[46px] w-full rounded-[7px]
                      bg-[#e4e2e5] px-[15px] text-[14px]
                      text-[var(--color-dark-purple)]
                      outline-none focus:ring-2
                      focus:ring-[var(--color-light-purple)]"
                  />

                  {erroUsuario && (
                    <p
                      id="erro-usuario"
                      role="alert"
                      className="mt-2 text-[13px] text-red-700"
                    >
                      {erroUsuario}
                    </p>
                  )}

                  <div className="mt-4 flex flex-wrap gap-3">
                    <button
                      type="submit"
                      className="h-[42px] rounded-[7px]
                        bg-[var(--color-digital-orange)]
                        px-5 text-[12px] font-bold uppercase
                        text-[var(--color-off-white)]
                        transition duration-200 hover:scale-105"
                    >
                      Salvar
                    </button>

                    <button
                      type="button"
                      onClick={handleCancelarEdicao}
                      className="h-[42px] rounded-[7px] border-2
                        border-[var(--color-dark-purple)]
                        px-5 text-[12px] font-bold uppercase
                        text-[var(--color-dark-purple)]
                        transition duration-200 hover:bg-[#e4e2e5]"
                    >
                      Cancelar
                    </button>
                  </div>
                </form>
              ) : (
                <input
                  id="perfil-usuario"
                  type="text"
                  value={usuario}
                  readOnly
                  className="h-[46px] w-full rounded-[7px]
                    bg-[#e4e2e5] px-[15px] text-[14px]
                    text-[var(--color-dark-purple)] outline-none"
                />
              )}
            </div>

            <p className="mt-5 text-[13px] leading-relaxed
              text-[var(--color-dark-purple)]">
              Seu nome completo permanece o mesmo quando você altera
              seu nome de usuário.
            </p>
          </div>
        </section>

        {/* Botões de navegação */}
        <div className="mt-6 flex flex-col justify-center gap-3
          sm:flex-row">
          <button
            type="button"
            onClick={onVoltar}
            className="min-h-[42px] rounded-[7px]
              bg-[var(--color-digital-orange)]
              px-6 py-3 text-[13px] font-bold uppercase
              text-[var(--color-off-white)]
              transition duration-200 hover:scale-105
              focus-visible:outline-none focus-visible:ring-2
              focus-visible:ring-[var(--color-dark-purple)]"
          >
            Voltar às matérias
          </button>

          <button
            type="button"
            onClick={onLogout}
            className="min-h-[42px] rounded-[7px] border-2
              border-[var(--color-dark-purple)]
              bg-transparent px-6 py-3 text-[13px] font-bold uppercase
        \      text-[var(--color-dark-purple)]
              transition duration-200 hover:bg-[var(--color-off-white)]
              focus-visible:outline-none focus-visible:ring-2
              focus-visible:ring-[var(--color-dark-purple)]"
          >
            Sair da conta
          </button>
        </div>

      </div>
    </main>
  );
}

export default Perfil;