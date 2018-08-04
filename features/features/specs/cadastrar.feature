#language: pt

Funcionalidade: Cadastrar
    Sendo um usuário que precisa controlar minhas atividades
    Posso me cadastrar com meus dados pessoais
    Para que possa ter um controle e gerenciamento dessas atividades


        Contexto: Cadastro
            Dado que acessei a página de cadastro
        
        @cadastro @logout
        Cenário: Cadastro 

            E possuo os seguintes dados:
            | Nome  | Gallo9            |
            | Email | gallo29@teste.com |
            | Senha | 123456            |

            Quando faço o Cadastro
            Então sou redirecionado para o painel de tarefas 

        @tentativa_cadastro
        Esquema do Cenário: Tentativa de cadastro

            E possuo os seguintes dados:
            | Nome  | <Nome>  |
            | Email | <Email> |
            | Senha | <Senha> |

            Quando faço o Cadastro
            Então vejo a mensagem "<Alerta>"

            Exemplos:
            | Nome  | Email           | Senha  | Alerta                                      |
            | Teste | gallo@teste.com | 123456 | Email já existe                             |
            | Teste | gallo@teste.com | 12345  | Sua senha deve ter pelo menos 6 caracteres. |
            | Teste | gallo@teste.com | 1234   | Sua senha deve ter pelo menos 6 caracteres. |
            | Teste | gallo@teste.com | 123    | Sua senha deve ter pelo menos 6 caracteres. |
            | Teste | gallo@teste.com | 12     | Sua senha deve ter pelo menos 6 caracteres. |
            | Teste | gallo@teste.com | 1      | Sua senha deve ter pelo menos 6 caracteres. |
            | Teste | gallo@teste.com |        | Informe uma senha.                          |
            | Teste |                 | 123456 | Email é obrigatório.                        |
            |       |                 |        | Nome é obrigatório.                         |
            | Teste | gallo           | 123456 | Informe um email válido.                    |
