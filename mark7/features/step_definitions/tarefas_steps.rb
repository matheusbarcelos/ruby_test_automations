Dado('que o nome da tarefa é {string}') do |nome_tarefa| 
    @nome_tarefa = nome_tarefa
    DAO.new.remover_tarefas(@nome_tarefa, @usuario)
end
  
Dado('a data de finalização será {string}') do |data_finalizacao|
    @data_tarefa = data_finalizacao
end
  
Dado('seja possível taguear esta tarefa com:') do |tags|
    @tags = tags.hashes
end

Dado('a tarefa já foi cadastrada') do
    steps %(
        Quando realizar o cadastro desta tarefa
    )
end
  
Quando('realizar o cadastro desta tarefa') do
    @tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
end
  
Então('deverá ver esta tarefa no painel com o status {string}') do |status_tarefa|  
    expect(
      @tarefas_page.buscar_tr(@nome_tarefa)
    ).to have_content status_tarefa
end

Então('deverá visualizar a seguinte mensagem {string}') do |mensagem_alerta|
     expect(@tarefas_page.alerta).to eql mensagem_alerta
end

Então('deverá ver somente {int} tarefa com o nome cadastrado') do |quantidade|
    res = DAO.new.buscar_tarefa(@nome_tarefa, @usuario[:email])
    ##expect(res.count).tp eql quantidade
 end

