
Before do
    visit 'https://marktasks.herokuapp.com/api/reset/fernando@qaninja.io?clean=full'

    @login = LoginPage.new
    @tasks = Tarefapage.new
    @cadastro = CadastroPage.new
    @meuPerfil = MeuPerfil.new

    page.current_window.resize_to(1280, 800)
end

Before ('@auth') do
    @login.load
    @login.logar('teste1@gmail.com' , '123456')
end

After ('@logout') do
    @tasks.nav.bye
end

After ('@perfil_logout') do
    @perfil.nav.bye
end