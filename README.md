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

* Conversão do Extrato do Itau: o extrato do Itau inclui linhas de saldo intermediários, logos e colunas extras que dificultam a geração de um arquivo limpo que tenha apenas transações. O objetivo da macro é gerar uma planilha com apenas 3 colunas.

Data / Descrição / Valor

Nesta macro, você aprende como remover linhas e

Sempre que tiver tempo adicionarei novas macros.

E obviamente contribuições são bemvindas!
