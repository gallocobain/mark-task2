require_relative 'sections'

class MeuPerfil < SitePrism::Page
    set_url '/user_settings/profile'

    section :nav, Navbar, '#navbar'
    
    element :mens_sucesso, '.col-md-12'
    element :titulo, '.header-title h3'
    element :input_empresa, 'input[name="profile.company"]'
    element :input_cargo, 'select[name$=job]'
    element :btn_salvar, '.btn-success'
    
    def atualizar(empresa, cargo)
        input_empresa.set empresa
        input_cargo.find('option', text: cargo).select_option
        btn_salvar.click

    end

    def upload(foto)
        attach_file('profile-avatar', foto)
    end
end