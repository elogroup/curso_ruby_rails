#encoding: utf-8
require 'spec_helper'

describe Banco do

  context "Busca de contas" do
    before(:all) do
      numero = 10
      @banco = Banco.new
      %w(Aline Joao Marcio Ricardo).each do |nome|
        @banco.contas << Conta.new(
          numero: numero,
          agencia: 10,
          titular: nome
        )
        numero += 1
      end
    end

    let(:banco){ @banco }

    it "deve ser possivel localizar uma conta através do nome do titular" do
      conta = banco.localiza_conta_por_titular('Joao')
      conta.titular.should == 'Joao'
    end

  end

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