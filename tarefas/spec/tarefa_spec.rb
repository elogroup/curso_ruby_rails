require 'spec_helper'

describe Tarefa, 'Tarefas' do
  before(:each) do
    @tarefa = Tarefa.new
  end

  it 'deve ter uma descrição' do
    @tarefa.should respond_to(:descricao)
    @tarefa.should respond_to(:descricao=)
  end

  it 'deve poder ser finalizada' do
    @tarefa.finalizar
  end

  it 'não deve permitir que a data de finalização seja alterada' do
    @tarefa.should_not respond_to(:dt_finalizacao=)
  end

  it 'deve poder ser associado à um colaborador' do
    colaborador = Colaborador.new
    colaborador.nome = "Joao"
    @tarefa.descricao = "tarefa test"
    @tarefa.responsavel = colaborador
    @tarefa.responsavel.should == colaborador
  end

  it 'deve poder ser associada à um projeto' do
    projeto = Projeto.new
    projeto.nome = 'Projeto de teste'
    @tarefa.descricao = "nova tarefa"
    @tarefa.projeto = projeto
    @tarefa.projeto.should == projeto
  end
end

