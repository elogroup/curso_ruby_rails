require 'spec_helper'

describe Tarefa, 'Tarefas' do
  before(:all) do
    @projeto = Projeto.create(:nome => "PROJETO")
  end

  it 'deve ter uma descrição' do
    tarefa = Tarefa.new
    tarefa.should respond_to(:descricao)
    tarefa.should respond_to(:descricao=)
  end

  it 'deve poder ser finalizada' do
    tarefa = Tarefa.new
    tarefa.finalizar
  end

  it 'não deve permitir que a data de finalização seja alterada' do
    tarefa = Tarefa.new
    tarefa.should_not respond_to(:data_finalizacao=)
  end

  it 'deve poder ser associado à um colaborador' do
    colaborador = Colaborador.find_or_create_by_nome "João"
    tarefa = Tarefa.new
    tarefa.descricao = "tarefa test"
    tarefa.responsavel = colaborador
    tarefa.responsavel.should == colaborador
  end

  it 'deve poder ser associada à um projeto' do
    tarefa = Tarefa.new
    tarefa.descricao = "nova tarefa"
    tarefa.projeto = @projeto
    tarefa.projeto.should == @projeto
    tarefa.projeto_id.should_not be_nil
  end
end

