#encoding: utf-8
require 'spec_helper'

describe Conta do

  context "na criacao de uma nova conta" do
    it "deve ser possivel informar o numero da conta e agencia" do
      conta = Conta.new numero: 100, agencia: 200
      conta.numero.should == 100
      conta.agencia.should == 200
    end

    it "deve retornar um objeto conta com estado válido" do
      conta = Conta.new numero: 10, agencia: 20
      conta.saldo.should_not be_nil
    end

    it "deve ser possivel informar o titular (opcional)" do
      conta = Conta.new agencia: 10, numero: 20, titular: 'Joao'
      conta.titular.should == 'Joao'
    end

    it "nao deve ser possivel criar conta sem informar o numero" do
       expect { Conta.new agencia: 10 }.to raise_error(ArgumentError)
    end

    it "nao deve ser possivel criar conta sem informar o agencia" do
       expect { Conta.new numero: 1}.to raise_error(ArgumentError)
       # error = nil
       # begin
       #   Conta.new
       # rescue => e
       #  error = e
       # end
       # error.should be_an(ArgumentError)
    end

  end

  context "Comportamentos da conta" do

    let(:conta) do
      Conta.new numero: 10, agencia: 20
    end

    it "deve ter um numero" do
      conta.numero.should == 10
    end

    it "deve ter uma agencia" do
      conta.agencia.should == 20
    end

    it "deve ter um saldo" do
      conta.deposita 200.56
      conta.saldo.should == 200.56
    end

    it "deve ter um titular" do
      conta.titular = "Mario"
      conta.titular.should == "Mario"
    end

    it "deve ser possivel realizar um deposito" do
      conta.deposita 100
      conta.saldo.should == 100
    end

    it "deve ser possivel realizar saques" do
      conta.deposita 100
      conta.saca 50
      conta.saldo.should == 50
    end

    it "nao deve ser possivel alterar o saldo diretamente" do
      conta.should_not respond_to(:saldo=)
    end

    it "nao deve ser possivel alterar o numero da conta" do
      conta.should_not respond_to(:numero=)
    end

    it "nao deve ser possivel alterar a agencia da conta" do
      conta.should_not respond_to(:agencia=)
    end

    it "deve ser possivel transferir valores entre contas" do
      destino = Conta.new numero: 5, agencia: 20
      conta.deposita 1000
      conta.transfere_para conta: destino, valor: 600
      conta.saldo.should == 400
      destino.saldo.should == 600
    end

    it "nao deve ser possivel enviar como conta um objeto invalido" do
      expect{ conta.transfere_para conta: "AAAAAAA", valor: 10000 }.to raise_error(ArgumentError)
    end









  end
end
