#language: pt

Funcionalidade: Login
    Para que possa cadastrar e gerenciar tarefas
    Sendo um usuário
    Acessa o sistema com email e senha previamente cadastrados.

Contexto: Home
    Dado que acesse o sistema

@logout
Cenario: Usuário autenticado

    Quando realizar login com "ma-the-us39@hotmail.com" e "teste123"
    Então deverá visualizar a mensagem de boas vindas "Olá, Matheus"

@tentativa_login
Esquema do Cenario: Tentativa de login

    Quando realizar login com "<email>" e "<senha>"
    Então deverá visualizar a mensagem de alerta "<saida>."

    Exemplos:
      |email|senha|saida|
      |ma-the-us39@hotmail.com|ma-the-us39@hotmail.com|Senha inválida|
      |eu@papito404.io|123456|Usuário não cadastrado|
      ||123456|Email incorreto ou ausente|
      |eu@papito404.io||Senha ausente|



