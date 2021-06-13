class PerfilPage < SitePrism::Page
    include Capybara::DSL

    set_url '/user_settings/profile'
    element :cmp_empresa, '#profile-company'
    element :cmp_name_job, 'select[name$=job]'


    def alerta
        find('.panel-body') 
    end

    def completa_cadastro(empresa,cargo)
        cmp_empresa.set empresa

        ##combo = find('select[name$=job]')
        combo = cmp_name_job
        combo.find('option', text: cargo).select_option

        click_button 'Salvar'
    end
end