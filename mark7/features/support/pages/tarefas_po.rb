
class TarefasPage
    include Capybara::DSL

    def painel
        painel_tarefas = find('#task-board')
    end
end