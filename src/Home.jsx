import React from 'react';

export default function Home() {
  return (
    <div className="min-h-screen text-off-white relative flex flex-col justify-start items-center py-8 px-4 sm:px-6">
      <main className="w-full max-w-7xl flex flex-col items-center justify-start z-10 pb-16">
        
        {/* Cabeçalho */}
        <header className="text-center mb-8 md:mb-10 max-w-3xl px-4 mt-2">
          <h1 className="text-2xl sm:text-3xl md:text-4xl lg:text-5xl font-extrabold text-off-white tracking-tight leading-tight mb-3">
            Seu conhecimento é o seu{' '}
            <span className="highlight-underline">
              superpoder
            </span>
            !
          </h1>
          <p className="text-sm sm:text-base md:text-lg text-[#C4ADDF] font-normal max-w-lg mx-auto leading-relaxed">
            Aprenda, desafie-se e descubra até onde você pode chegar.
          </p>
        </header>

        {/* Seção das Matérias */}
        <section className="subject-card-container w-full bg-[#270845]/85 backdrop-blur-md border border-[#C4ADDF]/20 rounded-[45px] sm:rounded-[60px] p-6 sm:p-10 shadow-2xl transition-all duration-300">
          <div className="text-center mb-6">
            <h2 className="text-lg sm:text-xl md:text-2xl font-bold text-[#FF5000] tracking-wide">
              Selecione uma matéria
            </h2>
          </div>

          <div className="w-full min-h-[280px] sm:min-h-[340px] flex items-center justify-center border-2 border-dashed border-[#C4ADDF]/20 rounded-[35px] sm:rounded-[45px] bg-[#130421]/30 p-6">
            <p className="text-xs sm:text-sm text-[#C4ADDF]/60 text-center italic">
              Espaço reservado para as caixas de matérias
            </p>
          </div>
        </section>

      </main>
    </div>
  );
}