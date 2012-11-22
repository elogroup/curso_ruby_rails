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

    specify { should respond_to(:localiza_conta_por_titular)}
    specify { should respond_to(:localiza_conta_por_numero)}
    specify { should respond_to(:localiza_conta_por_agencia)}
    specify { should respond_to(:localiza_conta_por_saldo)}

    it "deve ser possivel localizar uma conta através do nome do titular" do
      conta = banco.localiza_conta_por_titular('Joao')
      conta.titular.should == 'Joao'
    end

    it "deve ser possivel localizar uma conta através do seu numero" do
      conta = banco.localiza_conta_por_numero(12)
      conta.numero.should == 12
      conta.titular.should == 'Marcio'
    end

    it "deve ser possivel localizar uma conta através da agencia" do
      conta = banco.localiza_conta_por_agencia(10)
      conta.agencia.should == 10
    end

    it "deve ser possivel localizar uma conta através do saldo" do
      banco.contas.last.deposita 100
      conta = banco.localiza_conta_por_saldo(100)

      conta.saldo.should == 100
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