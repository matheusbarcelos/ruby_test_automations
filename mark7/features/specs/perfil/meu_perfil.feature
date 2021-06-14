#language:pt

Funcionalidade: Meu perfil
    Para que seja possível manter os dados atualizados
    Sendo um usuário
    É possível completar o cadastro do perfil
    
   @sprint @logout
    Esquema do Cenário: Atualizar perfil

    Dado que esteja autenticado com "<email>" e "<senha>"
    E acesse o perfil
    Quando completar o cadastro com "<empresa>" e "<cargo>"
    Então deverá ver a mensagem de atualização cadastral:
    """
    Perfil atualizado com sucesso.
    """

    Exemplos:
          |email             | senha    | empresa   | cargo      | 
          |wade@teste.com.br | 123456   | Yahoo     | Developer  |
          |wade@teste.com.br | 123456   | Google    | QA         |
          |wade@teste.com.br | 123456   | Microsoft | CEO        |
          |wade@teste.com.br | 123456   | Linkedin  | CTO        |
          |wade@teste.com.br | 123456   | Facebook  | Estagiario |
