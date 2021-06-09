#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas arefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

Contexto: Home
    Dado que eu acesso o sistema

@sprint1
Cenario: Usuário autenticado

    Quando faço login com "eu@papito.io" e "123456"
    Então vejo a seguinte mensagem "Olá, Fernando"

@sprint1   
Cenario: Senha incorreta

    Quando faço login com "eu@papito.io" e "xpt"
    Então vejo a seguinte mensagem "Senha inválida."

@sprint1
Cenario: Usuário não cadastrado

    Quando faço login com "eu@papito404.io" e "123456"
    Então vejo a seguinte mensagem "Usuário não cadastrado."

@sprint2
Cenario: Email deve ser obrigatório

    Quando faço login sem informar o Email
    Então vejo a mensagem "Email deve ser preenchido."

@sprint2
Cenario: Senha deve ser obrigatória

    Quando faço login sem informar a senha
    Então vejo a mensagem "Senha deve ser preenchida."

