#language:pt

Funcionalidade: Meu perfil
    Para que eu possa manter meus dados atualizados
    Sendo um usuário
    Posso completar o meu cadastro do perfil

    @login
    Cenário: Atualizar perfil

    Dado que acesso o meu perfil
    Quando completo o meu cadastro
    Então devo ver a mensagem de atualização cadastral:
    """
    Perfil atualizado com sucesso.
    """
