class LoginPage < SitePrism::Page
    include Capybara::DSL

    set_url '/login'
    element :cmp_login, '#login_email'
    element :cmp_senha, 'input[name=password]'
    element :btn_login, 'button[id*=btnLogin]'

    def acessa
        visit '/login'
    end

    def alerta
        find('.alert-login')
    end

    def logar(email, senha)
        cmp_login.set email
        cmp_senha.set senha
        btn_login.click
    end
end