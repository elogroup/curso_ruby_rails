#encoding: utf-8
require 'spec_helper'

describe Banco do
  let(:banco){ Banco.new }

  it "deve ser possivel acessar as contas" do
    banco.should respond_to(:contas)
  end

  it "deve se possivel incluir uma conta" do
    banco.contas << Conta.new(numero:10, agencia: 20)
    banco.contas.should have(1).item
  end

  it "deve ser possivel remover uma conta" do
    conta = Conta.new(numero:10, agencia: 20)
    banco.contas << conta
    banco.contas.delete conta

    banco.contas.should be_empty
  end
end