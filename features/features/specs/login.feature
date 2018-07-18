#language: pt

Funcionalidade: Login
    Para que somente eu possa ver as minhas tarefas
    Sendo um usuário
    Posso logar no sistema com meus dados de acesso previamente cadastrados      
    
    @login @lougout
    Cenário: Login com sucesso

        Quando faço login com "teste@gmail.com" e "123456"
        Então sou atenticado com sucesso
        E vejo meu painel de atividades
    
    @login_exc
    Esquema do Cenário: Tentativa de login

        Quando faço login com "<email>" e "<senha>"
        Então não sou autenticado
        E devo ver a mensagem "<alerta>"

        Exemplos:
            | email           | senha   | alerta                                 |
            | tttt@gmail.com  | 123456  | Usuário não cadastrado.                |
            | teste@gmail.com | 1234566 | Senha inválida.                        |
            |                 | 123456  | Email incorreto ou ausente.            |
            | teste@gmail.com |         | Senha ausente.                         |
            | teste@gmail.com | 12      | Senha deve ter no mínimo 6 caracteres. |