libreoffice-macro-br
====================

Coleção de Macros para LibreOffice

Esta coleção tem 2 objetivos:

* compartilhar macros que possam ser úteis para usuários brasileiros com o intuito de facilitar a vida de quem utiliza LibreOffice
* ser um repositório de exemplos reais para facilitar o aprendizado na programação de Macros

Convenção das Macros
---------------------------------------------

As macros são gravadas em plain text, ou seja, não sobem para o repositório em formato Open Document para que se possa aproveitar o controle de versão do git.

Macros em Basic terão a extensão .bas
Macros em Python terão extensão .py
Macros em Java terão extensão .class

Para inserir uma macro no seu LibreOffice:

* Abra o LibreOffice
* utilize o menu: Ferramentas / Macros / Organizar Macros 

Nesse ponto, você deve escolher se quer inserir a macro para que possa ser utilizada em qualquer documento (esta opção é útil se você precisa aplicar a macro em vários documentos ou em documentos novos) ou ser utilizada apenas em um documento específico (esta opção é útil se você precisa mover o documento para computadores ou ambientes diferentes).

* Para qq documento: Minhas Macros / Standard / Module1
* Para um documento específico: Escolha o documento / Standard e clique no botão "Novo" para criar um novo módulo para a sua macro.


Relação inicial de Macros:
---------------------------------------------

''Conversão do Extrato do Itau'': quando se faz o download do extrato do Itau, o arquivo vem com linhas de saldo intermediários, o sinal negativo vem uma coluna separada e existem colunas extras que dificultam a geração de um arquivo limpo que tenha apenas as transações bancárias. O objetivo da macro é gerar uma planilha com apenas 3 colunas.

	Data / Descrição / Valor

Nesta macro, você aprende:

* como remover linhas e colunas
* navegar pelo conteúdo da planilha
* analisar o conteúdo de uma célula
* transformar números do formato americano para o formato brasileiro

Sugestões e Contribuições 
--------------

Obviamente todas as contribuições são bemvindas: Se você tiver macros que queira adicionar nesse repositório, entre em contato que eu adicionarei seu nome como colaborador ou se você não tiver o hábito de utilizar o github, envie a macro por email mesmo que eu adiciono para você.

