require 'rubygems'
require 'rspec' #utiliza módulo rspec
require '../aula1-procedural_ruby.rb'

describe 'Racha Conta' do
  it 'deve dividir uma conta em partes iguais para 2 pessoas' do
    valor = racha_conta 100, 2
    valor.should == 50
  end

  it 'não deve retornar mensagem de erro caso dividendo seja zero' do
    valor = racha_conta 100, 0
  end

  it 'deve dividir sempre por 2, quando não informar qtd de pessoas' do
    valor = racha_conta 50
    valor.should == 25
  end
end

