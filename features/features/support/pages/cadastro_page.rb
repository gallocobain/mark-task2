
class CadastroPage < SitePrism::Page


element :input_name, '#register_name'
element :input_email, '#register_email'
element :input_senha, '#register_password'
element :btn_cadastrar, '.btn-accent'

    def cadastrar(dados)

        input_name.set dados['Nome'] 
        input_email.set dados['Email'] 
        input_senha.set dados['Senha'] 
        btn_cadastrar.click

    end


end