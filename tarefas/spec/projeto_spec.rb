require 'spec_helper'

describe Projeto, 'Projetos' do

  before(:each) do
    @projeto = Projeto.new
  end


  it 'deve ter um nome' do
    prj = Projeto.new
    prj.should respond_to (:nome=)
    prj.should respond_to (:nome)
  end

  it 'deve ter uma descrição' do
    prj = Projeto.new
    prj.should respond_to (:descricao=)
    prj.should respond_to (:descricao)
  end

  it 'deve ter uma data de início' do
    prj = Projeto.new
    prj.should respond_to (:dt_inicio)
  end

  it 'deve se poder iniciar um projeto' do
    prj = Projeto.new
    prj.should respond_to (:iniciar)
  end

  it 'um projeto já iniciado não pode ter a data alterada' do
    prj = Projeto.new
    prj.iniciar
    prj.should_not respond_to (:dt_inicio=)
  end

  it 'deve se poder finalizar um projeto' do
    prj = Projeto.new
    prj.should respond_to (:finalizar)
  end

  it 'um projeto pode ter várias tarefas' do
    prj = Projeto.new
    3.times {
      prj.tarefas << Tarefa.new("trabalha, porra")
    }
    prj.tarefas.should have(3).tarefas
  end

  it 'um projeto pode ter vários colaboradores' do
    3.times {
      @projeto.colaboradores << Colaborador.new
    }
    @projeto.colaboradores.should have(3).colaboradores
  end


end

