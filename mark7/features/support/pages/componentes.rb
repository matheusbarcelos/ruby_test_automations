class Navbar < SitePrism::Page

      set_url '/'
      element :dropdown, 'a[href*=dropdown]'
      element :logout, 'a[href$=logout]'

      include Capybara::DSL
        def sair 
        dropdown.click
        logout.click
     end
end

class Sidebar < SitePrism::Page
      include Capybara::DSL
      def acessa_perfil
        within('aside[class=navigation]') do
      click_link 'Perfil'
      end
    end
end
