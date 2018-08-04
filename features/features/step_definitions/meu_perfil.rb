

Dado("que estou autenticado com {string} e senha {string}") do |email, senha|
    @login.load
    @login.logar(email,senha)
   
end
  
Dado("acesso o meu perfil") do
    @tasks.nav.menu_usuario.click
    @tasks.nav.meu_perfil.click

    #expect(@meuPerfil.titulo.text).to eql "Meu Perfil"
end
  
Quando("atualizo meu perfil com {string} e {string}") do |empresa, cargo|
    @meuPerfil.atualizar(empresa, cargo)
end

Então("vejo a mensagem de sucesso {string}") do |mensagem|
    expect(@meuPerfil.mens_sucesso).to have_content mensagem
end

#atualizar foto

Dado("que possuo uma foto") do
    
    @minha_foto = File.join(Dir.pwd, 'features/features/support/fixtures/apple_web.png')
    
end
  
Quando("faço upload da minha foto") do
    @meuPerfil.upload(@minha_foto)
end