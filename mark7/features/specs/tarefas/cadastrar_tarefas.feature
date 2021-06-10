#language:pt

Funcionalidade: Cadastro de tarefas
    Para que possa organizar suas tarefas
    Sendo um usuário cadastrado
    É possível adicionar novas tarefas no meu Painel

@smoke @login @logout
Cenario: Nova Tarefa
        
        Dado que o nome da tarefa é "Fazer Compras"
        E a data de finalização será "20/08/2018"
        E seja possível taquear esta tarefa com:
            | tag          |
            | Compras      |
            | SuperMercado |
            | Ketchup      |
            | Mostarda     |
            | Maionese     |
        Quando realizar o cadastro desta tarefa
        Então deverá ver esta tarefa no painel com o status "Em andamento"

 @tentativa @login @logout
 Esquema do Cenario: Tentar cadastrar

        Dado que o nome da tarefa é "<nome>"
        E a data de finalização será "<data>"
        Quando efetuar cadastro desta tarefa
        Então deverá visualizar a seguinte mensagem "<mensagem>"

        Exemplos:
         | nome  |  data       | mensagem                            |
         | Ler   |  21/08/2018 | 10 caracteres é o mínimo permitido. | 
         |       |  21/08/2018 | Nome é obrigatório.                 |      

@login @logout @dup 
Cenario: Tarefa não pode ser duplicada

        Dado que o nome da tarefa é "Ler um livro de MongoDB"
        E a data de finalização será "22/08/2018"
        Mas a tarefa já foi cadastrada
        Quando efetuar o cadastro desta tarefa
        Então deverá visualizar a seguinte mensagem "Tarefa duplicada."
        E deverá ver somente 1 tarefa com o nome cadastrado
               
