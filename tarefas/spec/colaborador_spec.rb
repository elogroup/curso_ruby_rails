require 'spec_helper'
describe Colaborador, "Colaboradores" do
  before(:each) do
    @colaborador = Colaborador.new
    @colaborador.nome = "João"
  end

  it 'deve poder ser gravado no banco de dados' do
    total_ant = Colaborador.all.count
    @colaborador.save
    Colaborador.all.count.should == total_ant + 1
  end

  it 'deve poder alterar um colaborador do BD' do
    @colaborador.nome = "Zeca"
    @colaborador.save
    @colaborador.nome.should == "Zeca"
  end

  it 'deve poder remover um colaborador do BD' do
    @colaborador.save
    id = @colaborador.id
    @colaborador.delete
    lambda do
      Colaborador.find(id)
    end.should raise_error ActiveRecord::RecordNotFound
  end

  it 'deve ter um nome' do
    @colaborador.should respond_to(:nome)
    @colaborador.should respond_to(:nome=)
  end

  #através do ActiveRecord
  it 'deve ter um id' do
    @colaborador.should respond_to(:id)
    @colaborador.should respond_to(:id=)
  end

  it 'pode ser responsável por várias tarefas' do
    3.times {
      @colaborador.tarefas << Tarefa.new(:projeto => Projeto.new, :descricao => "trabalha, porra") # -> referência ao Array, não à variável tarefa, interna ao array
    }
    @colaborador.tarefas.should have(3).tarefas
  end
end

