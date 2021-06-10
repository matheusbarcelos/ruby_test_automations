#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas arefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

Contexto: Home
    Dado que eu acesso o sistema

@sprint1 @logout
Cenario: Usuário autenticado

    Quando faço login com "ma-the-us39@hotmail.com" e "teste123"
    Então vejo a mensagem de boas vindas "Olá, Matheus"

@tentativa
Esquema do Cenario: Tentativa de login

    Quando faço login com "<email>" e "<senha>"
    Então vejo a mensagem de alerta "<saida>."

    Exemplos:
    |email|senha|saida|
    |ma-the-us39@hotmail.com|ma-the-us39@hotmail.com|Senha inválida|
    |eu@papito404.io|123456|Usuário não cadastrado|
    ||123456|Email incorreto ou ausente|
    |eu@papito404.io||Senha ausente|



