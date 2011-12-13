#enconding: utf-8
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

  context "lista de contas" do
    subject{ Banco.new }
    it { subject.contas.should respond_to :each }
  end
  
  
end