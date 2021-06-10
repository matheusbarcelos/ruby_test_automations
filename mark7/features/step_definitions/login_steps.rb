Dado('que eu acesso o sistema') do
    visit 'http://localhost:5000/login'  
  end
  
  Quando('faço login com {string} e {string}') do |email, senha|
    find('#login_email').set email
    find('input[name=password]').set senha
    find('button[id*=btnLogin]').click
  end
  
  Então('vejo a mensagem de boas vindas {string}') do |mensagem|
    painel_tarefas = find ('#task-board')
    expect(painel_tarefas).to have_content mensagem
  end
 
  Então('vejo a mensagem de alerta {string}') do |mensagem|
    alerta = find('.alert-login')
    expect(alerta).to have_content mensagem
  end