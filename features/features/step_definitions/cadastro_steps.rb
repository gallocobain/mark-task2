Dado("que acessei a página de cadastro") do
    visit ('/register')
end
  
Dado("possuo os seguintes dados:") do |table|
    @Dados = table.rows_hash
    
end
  
Quando("faço o Cadastro") do 
    @cadastro.cadastrar(@Dados) 
    
end
  
Então("sou redirecionado para o painel de tarefas") do
    sleep 1
    expect(@tasks.titulo.text).to eql 'Painel de Atividades'
end

Então("vejo a mensagem {string}") do |mensagem_alerta|
    expect(@cadastro.mensagem_alerta.text).to eql mensagem_alerta
  end