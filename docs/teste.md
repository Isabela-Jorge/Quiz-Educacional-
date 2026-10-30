 Testes — Quiz Integrador
 Objetivo

A equipe de Testes é responsável por verificar o funcionamento do sistema Quiz Integrador, identificando erros e garantindo que as funcionalidades desenvolvidas atendam aos requisitos definidos pelo projeto.

 Responsabilidades

Criar e organizar casos de teste.

Testar as funcionalidades desenvolvidas.

Identificar e registrar bugs.

Verificar a integração entre Frontend, Backend e Banco de Dados.

Realizar testes após correções.

Registrar os resultados dos testes.

Auxiliar na validação do sistema antes da versão final.

🔎 Tipos de testes
Testes funcionais

Verificar se as funcionalidades do sistema funcionam conforme o esperado.

Testes de integração

Verificar se Frontend, Backend e Banco de Dados estão funcionando corretamente em conjunto.

Testes de API

Verificar requisições, respostas e possíveis erros das APIs.

Testes de validação

Verificar o comportamento do sistema diante de informações inválidas ou incompletas.

Testes de regressão

Verificar se uma alteração ou correção não causou problemas em funcionalidades que já estavam funcionando.

 Casos de teste

Os casos de teste serão registrados conforme as funcionalidades forem desenvolvidas.

ID	Funcionalidade	Cenário	Resultado esperado	Status
CT-001	Login	Usuário informa dados corretos	Usuário consegue entrar no sistema	Pendente
CT-002	Login	Usuário informa senha incorreta	Sistema informa erro	Pendente
CT-003	Quiz	Usuário seleciona uma resposta	Sistema registra a resposta	Pendente
CT-004	Quiz	Usuário finaliza o quiz	Sistema apresenta o resultado	Pendente
CT-005	Ranking	Usuário termina uma partida	Pontuação é registrada no ranking	Pendente
 Registro de bugs

Quando um erro for encontrado, será criada uma Issue no GitHub contendo:

Título do problema;

Descrição;

Passos para reproduzir;

Resultado esperado;

Resultado obtido;

Evidências, quando necessário;

Status do problema.

 Fluxo de testes
Funcionalidade desenvolvida
          ↓
Criação do caso de teste
          ↓
Execução do teste
          ↓
     ┌────┴────┐
     ↓         ↓
   Passou    Falhou
     ↓         ↓
  Registro   Criar Issue
               ↓
            Correção
               ↓
          Novo teste
               ↓
             Passou
             
 Status dos testes

🟡 Pendente

🔵 Em teste

🟢 Aprovado

🔴 Falhou

⚪ Bloqueado

🌿 Branch

A equipe de Testes trabalhará na branch:

testes


As alterações serão realizadas nessa branch e posteriormente enviadas para a develop através de Pull Request.
