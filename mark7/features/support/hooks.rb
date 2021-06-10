
Before do
    @nav = Navbar.new
    @side = Sidebar.new
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new
end

Before('@login') do
    @login_page.acessa
    @login_page.logar('ma-the-us39@hotmail.com', 'teste123')
end

After('@logout') do
    @nav.sair
end

