import React from 'react';

export default function Home({ userName = "Alessandro Ribeiro" }) {
  return (
    <div className="min-h-screen text-white relative flex flex-col justify-start items-center">
      
      {/* Barra do Topo */}
      <div className="w-full bg-[var(--color-brand-header)] border-b border-[var(--color-brand-purple-light)]/20 px-6 sm:px-12 py-4 flex items-center justify-between shadow-lg z-20">
        <span className="text-base sm:text-lg md:text-xl font-semibold text-white">
          Bom te ter por aqui, <span className="font-bold">{userName}</span>
        </span>
        <div className="flex items-center justify-center w-9 h-9 sm:w-10 sm:h-10 rounded-full border-2 border-[var(--color-brand-orange)] text-[var(--color-brand-orange)] shrink-0 ml-4">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={2}
            stroke="currentColor"
            className="w-5 h-5 sm:w-6 sm:h-6"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M15.75 6a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0zM4.501 20.118a7.5 7.5 0 0114.998 0A17.933 17.933 0 0112 21.75c-2.676 0-5.216-.584-7.499-1.632z"
            />
          </svg>
        </div>
      </div>

      <main className="w-full max-w-7xl flex flex-col items-center justify-start z-10 py-8 px-4 sm:px-6 pb-16">
        
        {/* Cabeçalho */}
        <header className="text-center mb-8 md:mb-10 max-w-3xl px-4 mt-2">
          <h1 className="text-2xl sm:text-3xl md:text-4xl lg:text-5xl font-extrabold text-white tracking-tight leading-tight mb-3">
            Seu conhecimento é o seu{' '}
            <span className="highlight-underline">
              superpoder
            </span>
            !
          </h1>
          <p className="text-sm sm:text-base md:text-lg text-[var(--color-brand-purple-light)] font-normal max-w-lg mx-auto leading-relaxed">
            Aprenda, desafie-se e descubra até onde você pode chegar.
          </p>
        </header>

        {/* Seção das Matérias */}
        <section className="subject-card-container w-full bg-[var(--color-brand-card)]/85 backdrop-blur-md border border-[var(--color-brand-purple-light)]/20 rounded-[45px] sm:rounded-[60px] p-6 sm:p-10 shadow-2xl transition-all duration-300">
          <div className="text-center mb-6">
            <h2 className="text-lg sm:text-xl md:text-2xl font-bold text-[var(--color-brand-orange)] tracking-wide">
              Selecione uma matéria
            </h2>
          </div>

          <div className="w-full min-h-[280px] sm:min-h-[340px] flex items-center justify-center border-2 border-dashed border-[var(--color-brand-purple-light)]/20 rounded-[35px] sm:rounded-[45px] bg-[var(--color-brand-bg)]/30 p-6">
            <p className="text-xs sm:text-sm text-[var(--color-brand-purple-light)]/60 text-center italic">
              Espaço reservado para as caixas de matérias
            </p>
          </div>
        </section>

      </main>
    </div>
  );
}