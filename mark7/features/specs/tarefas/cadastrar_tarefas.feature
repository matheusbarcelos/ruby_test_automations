#language:pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa organizar minha vida
    Sendo um usuário cadastrado
    Posso adicionar novas tarefas no meu Painel

@smoke @login
Cenario: Nova Tarefa
        
        Dado que o nome da minha tarefa é "Fazer Compras"
        E a data de finalização será "20/08/2018"
        E quero taguear esta tarefa com:
            | tag          |
            | Compras      |
            | SuperMercado |
            | Ketchup      |
            | Mostarda     |
            | Maionese     |
        Quando faço o cadastro desta tarefa
        Então devo ver esta tarefa no meu painel com o status "Em andamento"

 @tentativa @login @logout
 Esquema do Cenario: Tentar cadastrar

        Dado que o nome da minha tarefa é "<nome>"
        E a data de finalização será "<data>"
        Quando faço o cadastro desta tarefa
        Então devo ver a seguinte mensagem "<mensagem>"

        Exemplos:
         | nome  |  data       | mensagem                            |
         | Ler   |  21/08/2018 | 10 caracteres é o mínimo permitido. | 
         |       |  21/08/2018 | Nome é obrigatório.                 |      


Cenario: Tarefa não pode ser duplicada

        Dado que o nome da minha tarefa é "Ler um livro de MongoDB"
        E a data de finalização será "22/08/2018"
        Mas eu já cadastrei esta tarefa e esqueci
        Quando faço o cadastro desta tarefa
        Então devo ver a mensagem:"Tarefa duplicada"
               
