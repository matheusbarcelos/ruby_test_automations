require 'report_builder'

Before do
    @nav = Navbar.new
    @side = Sidebar.new
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new    
end

Before('@login') do

    @usuario = {email: 'ma-the-us39@hotmail.com', senha: 'teste123'}

    @login_page.acessa
    @login_page.logar(@usuario[:email], @usuario[:senha])
end

After('@logout') do
    @nav.sair
end


