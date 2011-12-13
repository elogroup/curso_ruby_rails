#enconding: utf-8
require 'spec_helper'

describe Banco do
  
  it { subject.should respond_to :contas }  

  it "deve ser possivel incliur uma conta"
  
  it "deve ser possivel remover uma conta"

  context "lista de contas" do
    subject{ Banco.new }
    it { subject.contas.should respond_to :each }
  end
  
  
end