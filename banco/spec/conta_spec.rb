require '../lib/conta'

describe Conta do

  let(:conta) do
    Conta.new
  end

  it "deve ter um numero" do
    conta.numero = 10
    conta.numero.should == 10
  end

  it "deve poder ter numeros diferentes de 10" do
    conta.numero = 200
    conta.numero.should == 200
  end

  it "deve ter uma agencia" do
    conta.agencia = 90
    conta.agencia.should == 90
  end

  it "deve poder ter agencoas diferentes de 90" do
    conta.agencia = 200
    conta.agencia.should == 200
  end

  it "deve ter um saldo" do
    conta.saldo = 200.56
    conta.saldo.should == 200.56
  end

  it "deve ter um titular" do
    conta.titular = "Mario"
    conta.titular.should == "Mario"
  end

end