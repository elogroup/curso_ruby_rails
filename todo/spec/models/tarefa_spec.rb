## encoding: UTF-8
require 'spec_helper'

describe Tarefa do
  
  context "acessors" do
    subject { Tarefa.new }
    it { should respond_to :descricao }
    it { should respond_to :descricao= }
    it { should respond_to :responsavel }
    it { should respond_to :responsavel= }
    it { should respond_to :projeto }
    it { should respond_to :projeto= }
    it { should respond_to :data_finalizacao }
    it { should respond_to :data_finalizacao= }
    it { should respond_to :created_at }
  end
  
  context "Validacao" do
    it "nao deve permitir que uma tarefa sem descricao seja salva" do
      tarefa = Tarefa.new
      tarefa.save.should be_false
    end

    it "uma tarefa sem descricao deve apresentar o erro 'Deve ser preenchido'" do
      tarefa = Tarefa.new
      tarefa.save
      tarefa.errors[:descricao].should include("Deve ser preenchido")
    end

    it "nao deve permitir que uma tarefa sem projeto seja salva" do
      tarefa = Tarefa.new
      tarefa.save.should be_false
      tarefa.errors[:projeto].should include("Deve ser preenchido")      
    end
  end
  
  context "Persistencia" do
    subject{ Tarefa.new }
    it "deve gravar uma nova tarefa no banco" do
      subject.descricao = "Tarefa 1"
      subject.responsavel = "Joao"
      subject.projeto = "curso"
      subject.id.should be_nil
      subject.created_at.should be_nil
      subject.save
      subject.id.should == 1
      subject.created_at.should_not be_nil
    end
    
    it "deve ser possivel criar um novo registro no banco passando os parametros via hash" do
      nova_tarefa = Tarefa.new :descricao => 'Teste', :responsavel => 'Mario', :projeto => 'curso'
      nova_tarefa.save.should be_true
      nova_tarefa.id.should_not be_nil
      nova_tarefa.descricao.should == "Teste"
    end

    it "deve ser possivel criar um novo registro no banco sem chamar o save" do
      nova_tarefa = Tarefa.create :descricao => 'Teste', :responsavel => 'Mario', :projeto => 'curso'
      nova_tarefa.id.should_not be_nil
      nova_tarefa.descricao.should == "Teste"
      nova_tarefa.descricao = "Novo"
      nova_tarefa.save
      nova_tarefa.descricao.should == "Novo"
    end
    
    
  end
end












