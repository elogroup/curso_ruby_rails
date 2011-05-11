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
    prj.should respond_to (:data_inicio)
  end

  it 'deve se poder iniciar um projeto' do
    prj = Projeto.new
    prj.should respond_to (:iniciar)
  end

  it 'um projeto já iniciado não pode ter a data alterada'

  it 'deve se poder finalizar um projeto' do
    prj = Projeto.new
    prj.should respond_to (:finalizar)
  end

  it 'um projeto pode ter várias tarefas' do
    prj = Projeto.new
    3.times {
      prj.tarefas << Tarefa.new
    }
    prj.tarefas.should have(3).tarefas
  end

  it 'um projeto pode ter vários colaboradores' do
    joao = Colaborador.find_or_create_by_nome("João")
    zeca = Colaborador.find_or_create_by_nome("Zeca")
    mario = Colaborador.find_or_create_by_nome("Mario")
    @projeto.colaboradores << joao
    @projeto.colaboradores << zeca
    @projeto.save

    @projeto.colaboradores.should have(2).colaboradores
    zeca.projetos.find(@projeto.id).should_not be_nil
    mario.projetos.count.should == 0
  end

  it 'projeto pode ter várias tarefas' do
    tarefa = Tarefa.create(:descricao => "TAREFA")
    @projeto.tarefas << tarefa
    @projeto.save
    id_projeto = @projeto.id
    Projeto.find(id_projeto).tarefas.first.id.should == tarefa.id
  end
end

