require 'spec_helper'
describe Colaborador, "Colaboradores" do
  before(:each) do
    @colaborador = Colaborador.new
  end

  it 'deve ter um nome' do
    @colaborador.should respond_to(:nome)
    @colaborador.should respond_to(:nome=)
  end

  it 'pode ser responsável por várias tarefas' do
    3.times {
      @colaborador.tarefas << Tarefa.new("trabalha, porra") # -> referência ao Array, não à variável tarefa, interna ao array
    }
    @colaborador.tarefas.should have(3).tarefas
  end
end

