  Dado('que acesse o sistema') do
    @login_page.acessa
  end
  
  Quando('realizar login com {string} e {string}') do |email, senha|
    @login_page.logar(email, senha)
  end
  
  Então('deverá visualizar a mensagem de boas vindas {string}') do |mensagem|
    expect(@tarefas_page.painel).to have_content mensagem
  end
 
  Então('deverá visualizar a mensagem de alerta {string}') do |mensagem|
    expect(@login_page.alerta).to have_content mensagem
  end