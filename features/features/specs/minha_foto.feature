#language: pt

Funcionalidade: Minha foto
    Para que meu perfil fique muito bonito
    Sendo um usuário cadastrado
    Posso fazer upload da minha foto

    @auth @foto 
    Cenário: Atualizar Foto

        Dado que possuo uma foto
        E acesso o meu perfil
        Quando faço upload da minha foto
        Então devo ver a mensagem "Agora seu perfil está bem legal."