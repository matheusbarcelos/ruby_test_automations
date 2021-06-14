require 'report_builder'

at_exit do
    ReportBuilder.configure do |config|
      config.input_path = 'reports/cucumber.json'
      config.report_path = 'reports/report'
      config.report_types = [:json, :html]
    end
    ReportBuilder.build_report
  end

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


