#language: pt

Funcionalidade: Cadastrar
    Sendo um usuário que precisa controlar minhas atividades
    Posso me cadastrar com meus dados pessoais
    Para que possa ter um controle e gerenciamento dessas atividades


        Contexto: Cadastro
            Dado que acessei a página de cadastro
        
        @cadastro
        Cenário: Cadastro 

            E possuo os seguintes dados:
            | Nome  | Gallo2           |
            | Email | gallo2@teste.com |
            | Senha | 123456          |

            Quando faço o Cadastro
            Então sou redirecionado para o painel de tarefas 
