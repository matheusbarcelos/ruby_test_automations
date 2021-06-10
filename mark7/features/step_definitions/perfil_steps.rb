Dado('que estou autenticado com {string} e {string}') do |email, senha|
    @login_page.acessa
    @login_page.logar(email, senha)
  end
  
  Dado('acesso o meu perfil') do
   @side.acessa_perfil
  end
  
  Quando('completo o meu cadastro') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('devo ver a mensagem de atualização cadastral:') do |doc_string|
    pending # Write code here that turns the phrase above into concrete actions
  end