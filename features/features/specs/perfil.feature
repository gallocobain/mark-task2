#language:pt

Funcionalidade: Meu perfil
    Para que eu possa ter meus dados atualizados
    Sendo um usuário
    Posso completar o meu cadastro

    @meu_perfil @logout
    Esquema do Cenário: Atualizar Perfil

        Dado que estou autenticado com "teste1@gmail.com" e senha "123456"
        E acesso o meu perfil
        Quando atualizo meu perfil com "<empresa>" e "<cargo>"
        Então vejo a mensagem de sucesso "Perfil atualizado com sucesso."

        Exemplos:
            | empresa           | cargo      |
            | RSI Informatica   | Developer  |
            | Capgemini         | QA         |
            | Foton Informatica | CEO        |
            | CTIS              | CTO        |
            | Stefanini         | Estagiario |