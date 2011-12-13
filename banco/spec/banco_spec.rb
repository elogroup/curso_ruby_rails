#encoding: utf-8
require 'spec_helper'

describe Banco do
  
  it { subject.should respond_to :contas }  

  it "deve ser possivel incluir uma conta" do
    conta = Conta.new :agencia => 10, :numero => 20
    subject.contas << conta
    subject.contas.should have(1).item
    subject.contas.should include(conta)
  end

  it "deve ser possivel remover uma conta" do
    conta = Conta.new :agencia => 10, :numero => 20
    subject.contas << conta
    subject.contas.delete conta
    subject.contas.should be_empty
    subject.contas.should_not include(conta)    
  end
  
  context "Busca de contas" do
    before(:all) do
      numero = 20
      %w(Joao Maria Marcos Ze Luiz Antonio).each do |nome|
        conta = Conta.new :agencia => 10, :numero => numero, :titular => nome, :saldo => numero * 10
        subject.contas << conta
        numero += 1
      end
    end
    
    it "deve ser possivel buscar uma conta através do nome do titular" do
      conta_localizada = subject.localiza_conta_por_nome 'Ze'
      conta_localizada.titular.should == 'Ze'
      subject.localiza_conta_por_nome('Luiz').titular.should == 'Luiz'
    end
    
    it "deve ser possivel buscar uma conta por seu numero" do
      conta_localizada = subject.localiza_conta_por_numero 20
      conta_localizada.titular.should == 'Joao'
      subject.localiza_conta_por_numero(22).titular.should == 'Marcos'
    end
    
    it "deve ser possivel buscar uma conta por qualquer atributo da mesma" do
      subject.localiza_conta_por_numero(24).titular.should == 'Luiz'
      subject.localiza_conta_por_nome('Ze').titular.should == 'Ze'
      subject.localiza_conta_por_saldo(220).titular.should == 'Marcos'
      subject.localiza_conta_por_agencia(10).titular.should == 'Joao'
    end
  end
  
  context "lista de contas" do
    subject{ Banco.new }
    it { subject.contas.should respond_to :each }
  end
  
  
end



