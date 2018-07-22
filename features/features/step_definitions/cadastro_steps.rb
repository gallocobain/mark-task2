Dado("que acessei a página de cadastro") do
    visit ('/register')
end
  
Dado("possuo os seguintes dados:") do |table|
    @Dados = table.rows_hash
    
end
  
Quando("faço o Cadastro") do 
    @cadastro.cadastrar(@Dados) 
   
    sleep 5
end
  
Então("sou redirecionado para o painel de tarefas") do
    
end